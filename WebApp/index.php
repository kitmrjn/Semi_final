<?php
session_start();
require_once 'db_config.php'; // includes $conn (PDO)
require_once 'functions.php'; // include the time_ago function

// Pagination logic
$questions_per_page = 10; // Number of questions per page
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1; // Current page number
$offset = ($page - 1) * $questions_per_page; // Calculate offset

// Fetch questions for the current page
$sql = "SELECT q.*, u.username
        FROM questions q
        JOIN users u ON q.user_id = u.user_id
        WHERE q.status = 'approved'
        ORDER BY q.created_at DESC
        LIMIT :limit OFFSET :offset";
$stmt = $conn->prepare($sql);
$stmt->bindValue(':limit', $questions_per_page, PDO::PARAM_INT);
$stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$questions = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Fetch the first 2 photos for each question
foreach ($questions as &$question) {
    $photo_sql = "SELECT photo_path FROM question_photos WHERE question_id = :qid LIMIT 2";
    $photo_stmt = $conn->prepare($photo_sql);
    $photo_stmt->bindValue(':qid', $question['question_id'], PDO::PARAM_INT);
    $photo_stmt->execute();
    $question['photos'] = $photo_stmt->fetchAll(PDO::FETCH_ASSOC);

    // Fetch the total number of photos
    $count_sql = "SELECT COUNT(*) AS total_photos FROM question_photos WHERE question_id = :qid";
    $count_stmt = $conn->prepare($count_sql);
    $count_stmt->bindValue(':qid', $question['question_id'], PDO::PARAM_INT);
    $count_stmt->execute();
    $question['total_photos'] = $count_stmt->fetch(PDO::FETCH_ASSOC)['total_photos'];
}

// Fetch total number of approved questions
$total_questions_sql = "SELECT COUNT(*) as total FROM questions WHERE status = 'approved'";
$total_questions_stmt = $conn->query($total_questions_sql);
$total_questions = $total_questions_stmt->fetch(PDO::FETCH_ASSOC)['total'];

// Calculate total pages
$total_pages = ceil($total_questions / $questions_per_page);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Vincenthinks - Home</title>
    <link rel="stylesheet" href="CSS/global.css">
    <link rel="stylesheet" href="CSS/header.css">
    <link rel="stylesheet" href="CSS/search-bar.css">
    <link rel="stylesheet" href="CSS/footer.css">
    <link rel="stylesheet" href="CSS/questions.css">
    <link rel="stylesheet" href="CSS/modals.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Add Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <div class="page-container">
        <div class="content-wrap">
            <header>
                <!-- Logo for Larger Screens -->
                <a href="index.php" class="logo-link desktop-only">
                    <div class="logo">
                        <img src="images/svcc.jpg" alt="VincentThinks Logo" class="nav-logo">
                        <h1>VincenThinks</h1>
                    </div>
                </a>

                <!-- Ask a Question Link for Smaller Screens -->
                <a href="post_question.php" class="ask-question-link mobile-only">
                    Ask a Question
                </a>

                <!-- Search Bar -->
                <div class="search-bar">
                    <input type="text" id="searchInput" placeholder="Search questions..." onkeyup="searchQuestions()">
                    <i class="fas fa-search search-icon"></i>
                </div>

                <!-- Hamburger Menu Icon -->
                <div class="hamburger" onclick="toggleMenu()">
                    <i class="fas fa-bars"></i>
                </div>

                <!-- Navigation Links -->
                <nav id="nav-menu">
                    <a href="index.php">Home</a>
                    <?php if (isset($_SESSION['user_id'])): ?>
                        <!-- Ask a Question Link for Larger Screens -->
                        <a href="post_question.php" class="desktop-only">Ask a Question</a>
                        <?php if (isset($_SESSION['role']) && $_SESSION['role'] === 'admin'): ?>
                            <a href="admin_dashboard.php">Admin Dashboard</a>
                        <?php endif; ?>
                        <!-- Profile Dropdown for Larger Screens -->
                        <div class="profile-dropdown desktop-only">
                            <i class="fas fa-user-circle profile-icon"></i>
                            <div class="dropdown-content">
                                <a href="#">My Profile</a>
                                <a href="logout.php">Logout</a>
                            </div>
                        </div>
                        <!-- Profile Links for Smaller Screens -->
                        <div class="profile-links mobile-only">
                            <a href="#">My Profile</a>
                            <a href="logout.php">Logout</a>
                        </div>
                    <?php else: ?>
                        <a href="login.php">Login</a>
                        <a href="register.php">Register</a>
                    <?php endif; ?>
                </nav>
            </header>

            <!-- Recent Questions Section -->
            <div class="recent-questions-wrapper">
                <section class="recent-questions">
                    <h2>Recent Questions</h2>
                    <div id="questionsContainer">
                        <?php if (!empty($questions)): ?>
                            <?php foreach($questions as $row): ?>
                                <div class="question" data-question-id="<?php echo htmlspecialchars($row['question_id']); ?>">
                                    <div class="question-header">
                                        <img src="images/userAvatar.jpg" alt="User Avatar" class="avatar">
                                        <div class="question-info">
                                            <h3><?php echo htmlspecialchars($row['title']); ?></h3>
                                            <p class="timestamp">
                                                <span class="username"><?php echo htmlspecialchars($row['username']); ?></span>
                                                <span class="time-ago"><?php echo time_ago($row['created_at']); ?></span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="question-content">
                                        <p class="answer-preview">
                                            <?php echo mb_strimwidth(htmlspecialchars($row['content']), 0, 100, "..."); ?>
                                        </p>
                                        <div class="answer-full" style="display: none;">
                                            <?php echo htmlspecialchars($row['content']); ?>
                                        </div>
                                        <?php if (!empty($row['photos'])): ?>
                                            <div class="question-photos">
                                                <?php foreach ($row['photos'] as $index => $photo): ?>
                                                    <div class="photo-container <?php echo (count($row['photos']) === 1 ? 'single-photo' : 'multiple-photos'); ?>">
                                                        <img src="<?php echo htmlspecialchars($photo['photo_path']); ?>" alt="Question Photo" class="question-photo-thumbnail">
                                                        <?php if ($index === 1 && $row['total_photos'] > 2): ?>
                                                            <div class="photo-count-overlay">
                                                                +<?php echo $row['total_photos'] - 2; ?>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>
                                                <?php endforeach; ?>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                    <!-- Buttons at the bottom -->
                                    <div class="question-actions">
                                        <!-- Answers button on the left -->
                                        <a href="question.php?id=<?php echo htmlspecialchars($row['question_id']); ?>" class="answer-button">
                                            <i class="bi bi-chat-left-text"></i> Answers
                                        </a>
                                        <!-- Report button for questions -->
                                        <button class="report-button" data-question-id="<?php echo $row['question_id']; ?>" onclick="reportPost(<?php echo $row['question_id']; ?>)">
                                            <i class="bi bi-flag"></i> Report
                                        </button>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <p>No questions found.</p>
                        <?php endif; ?>
                    </div>

                    <!-- Pagination Links -->
                    <div class="pagination">
                        <?php if ($page > 1): ?>
                            <a href="index.php?page=<?php echo ($page - 1); ?>">Previous</a>
                        <?php endif; ?>
                        <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                            <a href="index.php?page=<?php echo $i; ?>" <?php echo ($i == $page ? 'class="active"' : ''); ?>><?php echo $i; ?></a>
                        <?php endfor; ?>
                        <?php if ($page < $total_pages): ?>
                            <a href="index.php?page=<?php echo ($page + 1); ?>">Next</a>
                        <?php endif; ?>
                    </div>
                </section>
            </div>
        </div>
        <footer>
            <p>&copy; <?php echo date('Y'); ?> VincenThinks. All rights reserved.</p>
        </footer>
    </div>

    <!-- Full Question Modal -->
    <div id="fullQuestionModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2 id="modalQuestionTitle"></h2>
            <p class="modal-question-meta">
                <span id="modalQuestionUsername"></span> • <span id="modalQuestionTime"></span>
            </p>
            <div class="modal-question-content">
                <p id="modalQuestionContent"></p>
                <div id="modalQuestionPhoto"></div>
            </div>
        </div>
    </div>

    <!-- Answer Modal -->
    <div id="answerModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Post Your Answer</h2>
            <form method="POST" action="">
                <input type="hidden" name="question_id" id="modalQuestionId" value="">
                <textarea name="answer" rows="4" required placeholder="Write your answer..."></textarea>
                <button type="submit" class="answer-submit-btn">Submit Answer</button>
            </form>
        </div>
    </div>

    <script src="JS/index.js"></script>
</body>
</html>