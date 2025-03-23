-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 10:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vincenthinks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `parent_id` int(11) DEFAULT NULL,
  `helpful_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `user_id`, `content`, `created_at`, `parent_id`, `helpful_count`) VALUES
(1, 1, 1, 'I think beside the library.', '2025-03-08 08:25:16', NULL, 0),
(2, 1, 2, 'I think near the canteen', '2025-03-08 08:26:10', NULL, 0),
(3, 2, 1, 'Sorry forget my copy', '2025-03-08 11:59:36', NULL, 1),
(4, 2, 1, 'sorry', '2025-03-08 12:11:22', NULL, 1),
(5, 3, 2, 'KKK po', '2025-03-09 08:48:23', NULL, 0),
(6, 4, 1, 'Ewan ko sayo', '2025-03-09 08:49:12', NULL, 0),
(7, 3, 1, 'ewan ko sayo', '2025-03-09 08:49:21', NULL, 0),
(8, 3, 3, 'awdad', '2025-03-09 09:09:30', NULL, 0),
(9, 3, 3, 'tang ina niyo', '2025-03-09 09:09:36', NULL, 0),
(10, 5, 3, 'awdad', '2025-03-09 09:28:20', NULL, 0),
(11, 5, 3, 'kjkj', '2025-03-09 09:30:05', NULL, 0),
(12, 1, 3, 'sa earth', '2025-03-09 09:30:21', NULL, 0),
(13, 5, 3, 'awdadawda', '2025-03-09 09:57:19', NULL, 0),
(14, 5, 3, 'awdadawda', '2025-03-09 09:57:23', NULL, 0),
(15, 4, 3, 'wdawd', '2025-03-09 10:03:46', NULL, 0),
(16, 5, 3, 'wadawda', '2025-03-09 10:05:49', NULL, 0),
(17, 12, 3, 'sa linngo po', '2025-03-09 10:46:17', NULL, 0),
(18, 12, 3, 'asdada', '2025-03-09 11:07:27', NULL, 0),
(19, 12, 3, 'tang ina mo', '2025-03-09 11:14:28', NULL, 0),
(20, 12, 3, 'ada', '2025-03-09 11:54:23', 17, 0),
(21, 12, 3, 'asdasd', '2025-03-09 11:58:45', 0, 0),
(22, 12, 3, 'I am get', '2025-03-09 11:58:58', 0, 0),
(23, 12, 3, 'sada', '2025-03-09 12:00:02', 17, 0),
(24, 12, 3, 'adawd', '2025-03-09 12:00:13', 0, 0),
(25, 12, 3, 'adadadadadadad', '2025-03-09 12:00:21', 0, 0),
(26, 12, 3, 'dadadad', '2025-03-09 12:00:32', 0, 0),
(27, 12, 3, 'gffgfg', '2025-03-09 12:00:43', 0, 0),
(28, 11, 3, 'adad', '2025-03-09 12:01:00', 0, 0),
(29, 12, 3, 'adwad', '2025-03-09 12:09:13', 0, 0),
(30, 12, 3, 'adad', '2025-03-09 12:09:34', 0, 0),
(31, 13, 3, 'haba', '2025-03-09 12:10:19', 0, 0),
(32, 13, 3, 'haba', '2025-03-09 12:10:22', 0, 0),
(33, 13, 3, 'wdad', '2025-03-09 12:19:22', 0, 0),
(34, 13, 3, 'wdad', '2025-03-09 12:19:46', 0, 0),
(36, 14, 3, 'wadawdwadawdawdawdawdawda', '2025-03-09 12:31:28', 0, 0),
(37, 15, 3, 'sada', '2025-03-09 12:32:55', 0, 0),
(38, 15, 3, 'nvb', '2025-03-09 13:00:13', 0, 0),
(39, 12, 3, 'ina mossss', '2025-03-09 13:00:26', 0, 0),
(40, 15, 3, 'sadada', '2025-03-09 13:00:31', 0, 0),
(41, 15, 3, 'ffdfdfd', '2025-03-09 13:02:45', 0, 0),
(42, 15, 3, 'adadadadadadadad', '2025-03-09 13:04:13', 0, 0),
(43, 15, 3, 'test 9 pm', '2025-03-09 13:05:01', NULL, 0),
(44, 15, 3, 'adada', '2025-03-09 13:12:05', NULL, 0),
(45, 15, 3, 'test 63-', '2025-03-09 13:23:27', NULL, 0),
(46, 15, 3, 'sase', '2025-03-09 13:23:32', NULL, 0),
(47, 15, 3, 'test 64-', '2025-03-09 13:25:06', NULL, 0),
(48, 15, 3, 'halaka', '2025-03-09 13:25:37', NULL, 0),
(49, 15, 3, 'lalala', '2025-03-09 13:33:21', NULL, 0),
(50, 15, 3, 'lalalasasa', '2025-03-09 13:33:58', NULL, 0),
(51, 15, 1, 'test answer', '2025-03-09 13:37:31', NULL, 0),
(52, 15, 1, 'test answer', '2025-03-09 13:40:09', NULL, 0),
(53, 15, 1, 'Test answer', '2025-03-09 13:43:29', NULL, 0),
(54, 15, 3, 'lalalasasa', '2025-03-09 13:45:50', NULL, 0),
(55, 15, 3, 'lalalasasa', '2025-03-09 13:45:55', NULL, 0),
(56, 15, 3, 'lalalasasa', '2025-03-09 13:56:06', NULL, 0),
(57, 15, 3, 'dadad', '2025-03-09 13:56:17', NULL, 0),
(58, 15, 3, 'dadadss', '2025-03-09 13:56:41', NULL, 0),
(61, 16, 3, 'mama mo', '2025-03-09 14:01:34', NULL, 0),
(62, 16, 3, 'mama mo', '2025-03-09 14:03:49', NULL, 0),
(63, 16, 3, 'mama mo', '2025-03-09 14:03:49', NULL, 0),
(64, 16, 3, 'mama moada', '2025-03-09 14:03:53', NULL, 0),
(65, 16, 3, 'mama moada', '2025-03-09 14:06:38', NULL, 0),
(66, 15, 3, 'sadada', '2025-03-09 14:06:51', NULL, 0),
(67, 16, 3, 'albert', '2025-03-09 14:17:02', NULL, 0),
(68, 16, 3, 'I want to eat', '2025-03-09 14:22:53', NULL, 0),
(69, 16, 3, 'test ulit', '2025-03-09 14:24:34', NULL, 0),
(70, 17, 3, 'GE dito muna', '2025-03-09 14:33:57', 0, 0),
(71, 17, 3, 'ge dito muna', '2025-03-09 14:34:05', 0, 0),
(72, 17, 3, 'ssss', '2025-03-09 14:34:42', 0, 0),
(73, 17, 3, 'sss', '2025-03-09 14:34:56', 0, 0),
(74, 17, 3, 'sss', '2025-03-09 14:35:13', 0, 0),
(75, 17, 3, 'sasasa', '2025-03-09 14:40:41', 0, 0),
(76, 17, 3, 'sss', '2025-03-09 14:42:12', 0, 0),
(77, 17, 3, 'sss', '2025-03-09 14:47:01', 0, 0),
(78, 17, 3, 'sss', '2025-03-09 14:48:03', 0, 0),
(79, 17, 3, 'aaa', '2025-03-09 14:51:01', 0, 0),
(80, 17, 3, 'aaaawdad', '2025-03-09 14:51:06', 0, 0),
(81, 17, 3, 'aaaawdad', '2025-03-09 14:51:08', 0, 0),
(82, 17, 3, 'ssss', '2025-03-09 14:51:26', 0, 0),
(83, 17, 3, 'sssssadsad', '2025-03-09 14:51:35', 0, 0),
(84, 17, 3, 'asda', '2025-03-09 15:10:03', NULL, 0),
(85, 17, 3, 'sss', '2025-03-09 15:10:53', NULL, 0),
(86, 18, 3, 'Byers', '2025-03-09 15:11:36', NULL, 0),
(87, 18, 3, 'adadad', '2025-03-09 15:19:11', NULL, 0),
(88, 18, 3, 'tite', '2025-03-10 12:20:30', NULL, 0),
(89, 19, 3, 'inamo', '2025-03-10 12:22:00', NULL, 0),
(90, 20, 3, 'hahahhaha', '2025-03-10 12:23:22', NULL, 0),
(91, 10, 3, 'nasa OSA na po hahaha', '2025-03-10 15:53:15', NULL, 0),
(92, 21, 5, 'inamo', '2025-03-10 15:58:59', NULL, 0),
(93, 6, 5, 'hello nasa Osa na po', '2025-03-10 16:13:39', NULL, 0),
(94, 21, 5, 'neesss', '2025-03-10 17:03:29', NULL, 0),
(95, 22, 3, 'Goodluck Everyone!', '2025-03-10 18:59:48', NULL, 0),
(96, 22, 3, 'hola', '2025-03-10 20:43:41', NULL, 0),
(97, 21, 3, 'hahahha', '2025-03-10 20:53:53', NULL, 0),
(98, 22, 3, 'hahahah', '2025-03-10 20:54:10', NULL, 0),
(99, 22, 3, 'hola', '2025-03-11 12:51:38', NULL, 0),
(100, 22, 3, 'mictest', '2025-03-11 16:10:12', NULL, 0),
(101, 24, 6, 'Inamo hahahaha', '2025-03-11 20:50:36', NULL, 0),
(105, 21, 6, 'sadad', '2025-03-12 10:12:55', NULL, 0),
(106, 33, 6, 'sdadsa', '2025-03-12 10:13:07', NULL, 0),
(107, 33, 6, 'asdad', '2025-03-12 10:20:02', NULL, 0),
(108, 34, 6, 'Hehehe', '2025-03-12 10:41:52', NULL, 1),
(109, 35, 6, 'hi', '2025-03-12 10:43:24', NULL, 0),
(110, 35, 6, 'Heh', '2025-03-12 10:43:35', NULL, 0),
(111, 36, 6, 'HAHAHAHHA', '2025-03-12 17:13:00', NULL, 0),
(112, 38, 6, 'hehe', '2025-03-13 16:03:24', NULL, 0),
(116, 4, 6, 'Ewan ko sa lolo', '2025-03-17 18:24:22', NULL, 0),
(117, 44, 6, 'what is up my niggaer', '2025-03-18 08:52:25', NULL, 1),
(126, 2, 3, 'I think You can ask sir golama regarding this matter', '2025-03-19 09:15:13', NULL, 1),
(136, 58, 3, 'mateats', '2025-03-19 18:10:21', NULL, 1),
(137, 58, 3, 'matest', '2025-03-19 18:10:26', NULL, 1),
(139, 63, 3, 'jajhajaw', '2025-03-19 19:29:23', NULL, 0),
(140, 63, 3, 'mkasdnasdnnmads', '2025-03-19 19:29:30', NULL, 0),
(142, 76, 6, 'Hehehehe', '2025-03-20 09:20:14', NULL, 1),
(143, 76, 10, 'Lorem ipsum\" is a placeholder or dummy text commonly used in graphic design, publishing, and web development to showcase the visual form of a document or typeface without relying on meaningful content. \r\nHere\'s a more detailed explanation:\r\nPurpose:\r\nIt\'s used to demonstrate the layout, typography, and font styles of a document or website, allowing designers and developers to focus on the visual aspects rather than the actual content. \r\nOrigin:\r\nThe text is derived from a Latin passage, but it\'s been scrambled and altered to make it nonsensical, ensuring it doesn\'t distract from the design elements. \r\nWhy it\'s used:\r\nFocus on Design: It', '2025-03-20 18:16:17', NULL, 1),
(144, 76, 10, 'what int he', '2025-03-20 18:35:18', NULL, 0),
(145, 78, 6, 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2025-03-20 18:47:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `answer_ratings`
--

CREATE TABLE `answer_ratings` (
  `id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_helpful` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer_ratings`
--

INSERT INTO `answer_ratings` (`id`, `answer_id`, `user_id`, `is_helpful`, `created_at`) VALUES
(1, 1, 1, 1, '2025-03-18 16:33:38'),
(48, 108, 6, 1, '2025-03-18 17:54:09'),
(49, 117, 6, 1, '2025-03-18 17:54:23'),
(55, 126, 3, 1, '2025-03-19 09:15:27'),
(56, 4, 3, 1, '2025-03-19 09:16:27'),
(57, 3, 3, 1, '2025-03-19 09:16:29'),
(61, 137, 3, 1, '2025-03-19 18:10:33'),
(62, 136, 3, 1, '2025-03-19 18:10:34'),
(64, 142, 6, 0, '2025-03-20 09:20:17'),
(65, 142, 10, 1, '2025-03-20 17:46:55'),
(66, 143, 10, 1, '2025-03-20 18:16:27'),
(67, 145, 6, 1, '2025-03-20 18:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `answer_reports`
--

CREATE TABLE `answer_reports` (
  `id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer_reports`
--

INSERT INTO `answer_reports` (`id`, `answer_id`, `user_id`, `reason`, `created_at`) VALUES
(23, 142, 10, 'sdsad', '2025-03-20 18:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `question_type` enum('course','general') NOT NULL DEFAULT 'general',
  `category` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `user_id`, `title`, `content`, `created_at`, `question_type`, `category`, `status`) VALUES
(1, 1, 'Computer Room', 'Where does the computer room located?', '2025-03-08 08:17:22', 'general', NULL, 'approved'),
(2, 1, 'Computer Subject', 'Anyone has the pdf file or link to the module in our class?', '2025-03-08 08:24:16', 'general', NULL, 'approved'),
(3, 1, 'Organization', 'Is there any computer organization to join', '2025-03-08 12:12:30', 'general', NULL, 'approved'),
(4, 2, 'Artsfest', 'Kailan po Artsfest', '2025-03-09 08:48:53', 'general', NULL, 'approved'),
(5, 3, 'Itlog na pula', 'ina mo', '2025-03-09 09:12:45', 'general', NULL, 'rejected'),
(6, 3, 'sadad', 'adad', '2025-03-09 10:06:39', 'general', NULL, 'approved'),
(10, 3, 'Nawawalang Id', 'Name: Camille Lazaga\r\nCourse: BSIT\r\nYear: 2nd Year', '2025-03-09 10:11:05', 'general', NULL, 'rejected'),
(11, 3, 'wdadw', 'awdwad', '2025-03-09 10:19:14', 'general', NULL, 'rejected'),
(12, 3, 'Intrams', 'Kelan po mag start ang intrams natin?', '2025-03-09 10:46:09', 'general', NULL, 'rejected'),
(13, 3, 'tonde', 'lalalal', '2025-03-09 12:10:12', 'general', NULL, 'rejected'),
(14, 3, 'lala mo', 'dadada', '2025-03-09 12:22:07', 'general', NULL, 'rejected'),
(15, 3, 'lala mo', 'dadada', '2025-03-09 12:31:32', 'general', NULL, 'rejected'),
(16, 1, 'Test Title', 'Test Content', '2025-03-09 14:00:22', 'general', NULL, 'rejected'),
(17, 3, 'Final Muna', '11 na puta', '2025-03-09 14:33:45', 'general', NULL, 'rejected'),
(18, 3, 'Eto Muna', 'Bye!', '2025-03-09 15:11:27', 'general', NULL, 'rejected'),
(19, 3, 'Oh hell nah', 'Lipat PC nanaman', '2025-03-10 12:21:47', 'general', NULL, 'rejected'),
(20, 3, 'maneega', 'manee', '2025-03-10 12:23:13', 'general', NULL, 'rejected'),
(21, 5, 'hahahha', 'testing', '2025-03-10 15:58:51', 'general', NULL, 'rejected'),
(22, 3, 'What is up', 'Pre Oral on Monday', '2025-03-10 18:59:27', 'general', NULL, 'rejected'),
(23, 6, 'BSIT', 'Does anyone know how to use libraries?', '2025-03-11 20:49:52', 'general', 'BSIT', 'rejected'),
(24, 6, 'BSHM', 'Turauan niyo naman ako mag juggle', '2025-03-11 20:50:25', 'general', 'BSHM', 'rejected'),
(32, 6, 'BSIT', '// Function to open the reply modal\r\nfunction openReplyModal(parentId) {\r\n    document.getElementById(\'modalParentId\').value = parentId;\r\n    document.getElementById(\'answerModal\').style.display = \'block\';\r\n}\r\n\r\n// Function to handle question click (expand/collapse content)\r\ndocument.querySelectorAll(\'.question\').forEach(question => {\r\n    question.addEventListener(\'click\', function(event) {\r\n        if (event.target.classList.contains(\'answer-button\')) return;\r\n\r\n        const isExpanding = !this.classList.contains(\'expanded\');\r\n        this.classList.toggle(\'expanded\');\r\n\r\n        // Toggle content visibility\r\n        const preview = this.querySelector(\'.answer-preview\');\r\n        const fullContent = this.querySelector(\'.full-content\');\r\n\r\n        if (isExpanding) {\r\n            preview.style.display = \'none\';\r\n            fullContent.style.display = \'block\';\r\n            // Fetch and display answers\r\n            const questionId = this.getAttribute(\'data-question-id\');\r\n            fetch(`get_answers.php?question_id=${questionId}`)\r\n                .then(response => response.text())\r\n                .then(data => {\r\n                    // Create a new div to display the answers\r\n                    const answersDiv = document.createElement(\'div\');\r\n                    answersDiv.className = \'answers\';\r\n                    answersDiv.innerHTML = data;\r\n\r\n                    // Append answers to the expanded question\r\n                    this.appendChild(answersDiv);\r\n                })\r\n                .catch(error => console.error(\'Error fetching answers:\', error));\r\n        } else {\r\n            preview.style.display = \'block\';\r\n            fullContent.style.display = \'none\';\r\n        }\r\n    });\r\n});\r\n\r\n// Search functionality\r\nfunction searchQuestions() {\r\n    let input = document.getElementById(\"searchInput\").value.toLowerCase();\r\n    let questions = document.getElementsByClassName(\"question\");\r\n\r\n    for (let i = 0; i < questions.length; i++) {\r\n        let title = questions[i].querySelector(\"h3\").innerText.toLowerCase();\r\n        let content = questions[i].querySelector(\".answer-preview\").innerText.toLowerCase();\r\n\r\n        if (title.includes(input) || content.includes(input)) {\r\n            questions[i].style.display = \"block\";\r\n        } else {\r\n            questions[i].style.display = \"none\";\r\n        }\r\n    }\r\n}\r\n\r\n// Modal handling\r\nfunction openAnswerModal(questionId) {\r\n    const question = document.querySelector(`.question[data-question-id=\"${questionId}\"]`);\r\n    if (question) {\r\n        document.getElementById(\'modalQuestionId\').value = questionId;\r\n        document.getElementById(\'answerModal\').style.display = \'block\';\r\n    }\r\n}\r\n\r\ndocument.querySelector(\'.close\').addEventListener(\'click\', function() {\r\n    document.getElementById(\'answerModal\').style.display = \'none\';\r\n});\r\n\r\nwindow.onclick = function(event) {\r\n    const modal = document.getElementById(\'answerModal\');\r\n    if (event.target == modal) {\r\n        modal.style.display = \'none\';\r\n    }\r\n}', '2025-03-12 10:01:35', 'general', 'BSIT', 'rejected'),
(33, 6, 'BSIT', '// Function to open the reply modal\r\nfunction openReplyModal(parentId) {\r\n    document.getElementById(\'modalParentId\').value = parentId;\r\n    document.getElementById(\'answerModal\').style.display = \'block\';\r\n}\r\n\r\n// Function to handle question click (expand/collapse content)\r\ndocument.querySelectorAll(\'.question\').forEach(question => {\r\n    question.addEventListener(\'click\', function(event) {\r\n        if (event.target.classList.contains(\'answer-button\')) return;\r\n\r\n        const isExpanding = !this.classList.contains(\'expanded\');\r\n        this.classList.toggle(\'expanded\');\r\n\r\n        // Toggle content visibility\r\n        const preview = this.querySelector(\'.answer-preview\');\r\n        const fullContent = this.querySelector(\'.full-content\');\r\n\r\n        if (isExpanding) {\r\n            preview.style.display = \'none\';\r\n            fullContent.style.display = \'block\';\r\n            // Fetch and display answers\r\n            const questionId = this.getAttribute(\'data-question-id\');\r\n            fetch(`get_answers.php?question_id=${questionId}`)\r\n                .then(response => response.text())\r\n                .then(data => {\r\n                    // Create a new div to display the answers\r\n                    const answersDiv = document.createElement(\'div\');\r\n                    answersDiv.className = \'answers\';\r\n                    answersDiv.innerHTML = data;\r\n\r\n                    // Append answers to the expanded question\r\n                    this.appendChild(answersDiv);\r\n                })\r\n                .catch(error => console.error(\'Error fetching answers:\', error));\r\n        } else {\r\n            preview.style.display = \'block\';\r\n            fullContent.style.display = \'none\';\r\n        }\r\n    });\r\n});\r\n\r\n// Search functionality\r\nfunction searchQuestions() {\r\n    let input = document.getElementById(\"searchInput\").value.toLowerCase();\r\n    let questions = document.getElementsByClassName(\"question\");\r\n\r\n    for (let i = 0; i < questions.length; i++) {\r\n        let title = questions[i].querySelector(\"h3\").innerText.toLowerCase();\r\n        let content = questions[i].querySelector(\".answer-preview\").innerText.toLowerCase();\r\n\r\n        if (title.includes(input) || content.includes(input)) {\r\n            questions[i].style.display = \"block\";\r\n        } else {\r\n            questions[i].style.display = \"none\";\r\n        }\r\n    }\r\n}\r\n\r\n// Modal handling\r\nfunction openAnswerModal(questionId) {\r\n    const question = document.querySelector(`.question[data-question-id=\"${questionId}\"]`);\r\n    if (question) {\r\n        document.getElementById(\'modalQuestionId\').value = questionId;\r\n        document.getElementById(\'answerModal\').style.display = \'block\';\r\n    }\r\n}\r\n\r\ndocument.querySelector(\'.close\').addEventListener(\'click\', function() {\r\n    document.getElementById(\'answerModal\').style.display = \'none\';\r\n});\r\n\r\nwindow.onclick = function(event) {\r\n    const modal = document.getElementById(\'answerModal\');\r\n    if (event.target == modal) {\r\n        modal.style.display = \'none\';\r\n    }\r\n}', '2025-03-12 10:12:36', 'general', 'BSIT', 'rejected'),
(34, 6, 'BSHM', '<?php\r\nsession_start();\r\nrequire_once \'db_config.php\'; // includes $conn (PDO)\r\n\r\n// Fetch the latest questions\r\n$sql = \"SELECT q.*, u.username\r\n        FROM questions q\r\n        JOIN users u ON q.user_id = u.user_id\r\n        ORDER BY q.created_at DESC\";\r\n$stmt = $conn->query($sql);\r\n$questions = $stmt->fetchAll(PDO::FETCH_ASSOC);\r\n\r\n// Handle new answer submission from modal\r\nif ($_SERVER[\'REQUEST_METHOD\'] === \'POST\' && isset($_SESSION[\'user_id\']) && isset($_POST[\'question_id\'])) {\r\n    $answerContent = trim($_POST[\'answer\']);\r\n    $question_id   = intval($_POST[\'question_id\']);\r\n    $user_id       = $_SESSION[\'user_id\'];\r\n\r\n    if (!empty($answerContent) && $question_id > 0) {\r\n        $aSql = \"INSERT INTO answers (question_id, user_id, content) VALUES (:qid, :uid, :content)\";\r\n        $aStmt = $conn->prepare($aSql);\r\n        $aStmt->bindValue(\':qid\', $question_id, PDO::PARAM_INT);\r\n        $aStmt->bindValue(\':uid\', $user_id, PDO::PARAM_INT);\r\n        $aStmt->bindValue(\':content\', $answerContent);\r\n        $aStmt->execute();\r\n\r\n        // Reload to show the new answer\r\n        header(\"Location: index.php\"); // Redirect back to index\r\n        exit();\r\n    }\r\n}\r\n?>\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Vincenthinks - Home</title>\r\n    <link rel=\"stylesheet\" href=\"CSS/global.css\">\r\n    <link rel=\"stylesheet\" href=\"CSS/header.css\">\r\n    <link rel=\"stylesheet\" href=\"CSS/search-bar.css\">\r\n    <link rel=\"stylesheet\" href=\"CSS/footer.css\">\r\n    <link rel=\"stylesheet\" href=\"CSS/questions.css\">\r\n    <link rel=\"stylesheet\" href=\"CSS/modals.css\">\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\">\r\n    \r\n</head>\r\n<body>\r\n    <!-- Answer Modal -->\r\n    <div id=\"answerModal\" class=\"modal\">\r\n        <div class=\"modal-content\">\r\n            <span class=\"close\">&times;</span>\r\n            <h2>Post Your Answer</h2>\r\n            <form method=\"POST\" action=\"\">\r\n                <input type=\"hidden\" name=\"question_id\" id=\"modalQuestionId\" value=\"\">\r\n                <textarea name=\"answer\" rows=\"4\" required placeholder=\"Write your answer...\"></textarea>\r\n                <button type=\"submit\" class=\"answer-submit-btn\">Submit Answer</button>\r\n            </form>\r\n        </div>\r\n    </div>\r\n\r\n    <header>\r\n        <a href=\"index.php\" class=\"logo-link\">\r\n            <div class=\"logo\">\r\n                <img src=\"images/svcc.jpg\" alt=\"VincentThinks Logo\" class=\"nav-logo\">\r\n                <h1>VincenThinks</h1>\r\n            </div>\r\n        </a>\r\n        <div class=\"search-bar\">\r\n            <input type=\"text\" id=\"searchInput\" placeholder=\"Search questions...\" onkeyup=\"searchQuestions()\">\r\n            <i class=\"fas fa-search search-icon\"></i>\r\n        </div>\r\n        <nav>\r\n            <a href=\"index.php\">Home</a>\r\n            <?php if (isset($_SESSION[\'user_id\'])): ?>\r\n                <a href=\"post_question.php\">Ask a Question</a>\r\n                <a href=\"logout.php\">Logout (<?php echo htmlspecialchars($_SESSION[\'username\']); ?>)</a>\r\n            <?php else: ?>\r\n                <a href=\"login.php\">Login</a>\r\n                <a href=\"register.php\">Register</a>\r\n            <?php endif; ?>\r\n        </nav>\r\n    </header>\r\n\r\n    <!-- Recent Questions Section -->\r\n    <section class=\"recent-questions\">\r\n        <h2>Recent Questions</h2>\r\n        <div id=\"questionsContainer\">\r\n            <?php if (!empty($questions)): ?>\r\n                <?php foreach($questions as $row): ?>\r\n                    <div class=\"question\" data-question-id=\"<?php echo htmlspecialchars($row[\'question_id\']); ?>\">\r\n                        <div class=\"question-header\">\r\n                            <img src=\"images/userAvatar.jpg\" alt=\"User Avatar\" class=\"avatar\">\r\n                            <div class=\"question-info\">\r\n                                <h3><?php echo htmlspecialchars($row[\'title\']); ?></h3> <!-- Title is now the category -->\r\n                                <p class=\"timestamp\">\r\n                                    Asked by <?php echo htmlspecialchars($row[\'username\']); ?> on <?php echo htmlspecialchars($row[\'created_at\']); ?>\r\n                                </p>\r\n                            </div>\r\n                        </div>\r\n                        <p class=\"answer-preview\">\r\n                            <?php echo mb_strimwidth(htmlspecialchars($row[\'content\']), 0, 100, \"...\"); ?>\r\n                        </p>\r\n                        <?php if (isset($_SESSION[\'user_id\'])): ?>\r\n                            <button onclick=\"openAnswerModal(<?php echo htmlspecialchars($row[\'question_id\']); ?>)\" class=\"answer-button\">Answer</button>\r\n                        <?php else: ?>\r\n                            <a href=\"login.php\" class=\"answer-button\">Login to Answer</a>\r\n                        <?php endif; ?>\r\n                    </div>\r\n                <?php endforeach; ?>\r\n            <?php else: ?>\r\n                <p>No questions found.</p>\r\n            <?php endif; ?>\r\n        </div>\r\n    </section>\r\n\r\n    <footer>\r\n        <p>&copy; <?php echo date(\'Y\'); ?> VincenThinks. All rights reserved.</p>\r\n    </footer>\r\n\r\n    <script src=\"JS/index.js\"></script>\r\n</body>\r\n</html>', '2025-03-12 10:22:28', 'general', 'BSHM', 'rejected'),
(35, 6, 'BSED', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Turpis potenti suspendisse placerat nam curae tortor arcu hac et. Iaculis ipsum ultrices suspendisse luctus montes ridiculus penatibus erat. Diam dictum orci inceptos urna rutrum senectus sem. Lobortis volutpat ipsum sapien morbi velit. Metus platea ultrices massa erat imperdiet ac aenean porttitor. Elementum sapien netus praesent turpis suspendisse enim. Vitae maecenas laoreet senectus curabitur blandit curae. Faucibus tortor facilisis aliquet laoreet eleifend quisque aptent. Vivamus sodales nam donec tortor duis hendrerit eget vehicula massa.\r\n\r\nUltricies phasellus primis maximus; et augue aptent. Sociosqu ipsum ultricies faucibus adipiscing id neque. Integer malesuada leo nunc nostra pellentesque netus. Est nisl hac condimentum nam adipiscing ac pretium. Ipsum finibus suspendisse nisi lectus congue massa. Quam hac eget tincidunt, erat etiam sodales. Vulputate aenean taciti; dignissim eleifend nascetur nisl accumsan. Vel euismod sodales molestie enim felis iaculis mi blandit. Vulputate proin dis eleifend sed fames. Mattis sit placerat pharetra malesuada eros class, nunc eget himenaeos.\r\n\r\nMassa sit primis proin, porta neque quisque elit orci. Molestie varius congue fusce vehicula duis purus. Nullam sodales eu massa consectetur conubia enim. Et proin rhoncus conubia convallis; lectus facilisi varius tincidunt. Morbi montes non cursus lobortis diam cubilia molestie facilisi molestie. Tellus vehicula urna elit ridiculus posuere nec iaculis. Imperdiet lacus urna hac sagittis id vulputate nostra netus. Adipiscing accumsan faucibus etiam imperdiet ad vel. Massa nostra massa rhoncus sagittis cras dictum justo.\r\n\r\nSuspendisse posuere quisque varius, penatibus litora nam eget. Nisl nec egestas ultrices varius mus; fermentum quam lobortis tempus. Fermentum auctor quisque ornare; arcu viverra adipiscing turpis risus et. Vivamus risus maximus egestas eleifend natoque ipsum torquent. Enim tempor lacinia porttitor scelerisque ac sed tristique primis. Commodo arcu class condimentum lobortis; facilisis aptent. Eu dis rutrum at neque posuere justo et facilisis. Nisl placerat proin pellentesque, rhoncus gravida purus netus rutrum. Sem fermentum nam accumsan vulputate; tristique pharetra? Eros venenatis convallis duis per lobortis varius habitant ullamcorper congue.\r\n\r\nProin elit magnis arcu taciti pretium tempus aptent erat. Ipsum eros congue ultrices dignissim interdum proin. Non rhoncus suscipit auctor consectetur ante, tempus cubilia ante. Ut cras lobortis iaculis id suspendisse. Quam lacinia turpis ornare, id conubia ultrices. Ultricies et dictum pulvinar vitae eget imperdiet. Nullam efficitur ligula magna eget semper tempor consequat sollicitudin auctor. Pulvinar nostra sodales ligula curabitur neque, ridiculus sollicitudin ligula inceptos.\r\n\r\nVolutpat ridiculus scelerisque aliquam elit curabitur velit. Amet laoreet feugiat sollicitudin efficitur iaculis dui nibh. Justo ipsum purus netus consectetur pulvinar. Volutpat ridiculus volutpat potenti ad enim tellus. Nullam vulputate leo pellentesque consectetur molestie. Fringilla viverra pretium class massa cubilia inceptos duis diam. Montes mollis inceptos aliquam est id nostra taciti. Iaculis neque platea ipsum cras aenean?\r\n\r\nDictum rhoncus amet neque platea laoreet; hac id. Class ad et pharetra egestas sem. Porttitor senectus magnis vestibulum sapien phasellus penatibus pretium. Id ullamcorper ut aliquam venenatis; cursus litora fusce ut. Iaculis cursus libero porttitor facilisis magnis morbi. Lectus elementum interdum feugiat luctus tempus hac dictum auctor.\r\n\r\nPraesent consectetur suspendisse netus litora parturient eu pharetra. Semper metus placerat aliquet, penatibus nisi primis. Orci rutrum auctor porta cras natoque pellentesque volutpat. Facilisis pulvinar magnis torquent pharetra tristique tristique lorem. Massa nulla mattis torquent augue justo accumsan proin ligula. Ligula tempor conubia adipiscing ridiculus donec duis vitae. Vivamus quam luctus vehicula laoreet ridiculus at? Nam erat commodo parturient litora hac consectetur. Habitant ridiculus curae himenaeos torquent risus per euismod.\r\n\r\nPraesent sed natoque mattis arcu lobortis donec blandit lectus dolor. Imperdiet cras felis felis, torquent phasellus natoque euismod. Tellus nostra litora ultricies donec hendrerit ullamcorper est fringilla. Magna pulvinar interdum primis maximus et eleifend vitae. Pharetra magna maximus; egestas quisque lorem morbi. Mauris sem turpis finibus venenatis dictum mattis. Ex ut nisi sodales nisi inceptos; nibh justo in.\r\n\r\nMollis vel ipsum tempor curabitur nibh lacinia. Phasellus eget condimentum adipiscing tortor dapibus efficitur nam. Lectus sollicitudin pretium sollicitudin ligula primis pulvinar. Non felis metus feugiat cubilia penatibus facilisis morbi. Et ut eros dolor maecenas ornare tempor. Ad sodales pellentesque curabitur sed volutpat fames. Purus sollicitudin venenatis dui morbi imperdiet inceptos condimentum cras. Ultrices natoque justo ipsum blandit erat litora. Fusce augue bibendum id cras arcu; turpis vestibulum nibh. Nisl nam netus vel massa nec, nunc ornare elit ac.', '2025-03-12 10:34:16', 'general', 'BSED', 'rejected'),
(36, 6, 'BSIT', 'Photo test', '2025-03-12 17:12:40', 'general', 'BSIT', 'rejected'),
(37, 6, 'BPE', 'Photo Testing 3', '2025-03-12 17:17:44', 'general', 'BPE', 'rejected'),
(38, 6, 'BSIT', 'Without photo test', '2025-03-12 18:23:08', 'general', 'BSIT', 'rejected'),
(41, 6, 'BSHM', 'HEHEHEH', '2025-03-17 17:48:18', 'general', 'BSHM', 'rejected'),
(44, 6, 'BSHM', 'TEST', '2025-03-17 19:33:26', 'general', 'BSHM', 'rejected'),
(48, 6, 'BSIT', 'Approval testing', '2025-03-18 20:17:57', 'general', 'BSIT', 'rejected'),
(50, 6, 'BSIT', 'Approval with photo', '2025-03-18 20:31:13', 'general', 'BSIT', 'rejected'),
(52, 3, 'BSHM', 'Imma test my shi', '2025-03-19 09:06:38', 'general', 'BSHM', 'rejected'),
(53, 3, 'BSIT', 'pending post my nigger', '2025-03-19 09:07:00', 'general', 'BSIT', 'rejected'),
(56, 6, 'BSHM', 'lelelele', '2025-03-19 16:13:42', 'general', 'BSHM', 'rejected'),
(58, 6, 'BSA', 'Type shi', '2025-03-19 16:13:59', 'general', 'BSA', 'approved'),
(60, 3, 'BSBA', 'test', '2025-03-19 18:11:45', 'general', 'BSBA', 'rejected'),
(62, 3, 'BSED', 'hellna', '2025-03-19 18:42:32', 'general', 'BSED', 'rejected'),
(63, 3, 'BSHM', 'Test my shi', '2025-03-19 18:49:56', 'general', 'BSHM', 'approved'),
(64, 3, 'BSCRIM', 'Myshi\"', '2025-03-19 18:50:10', 'general', 'BSCRIM', 'rejected'),
(65, 3, 'BSHM', 'hell na', '2025-03-19 18:51:52', 'general', 'BSHM', 'approved'),
(66, 3, 'BSHM', 'efsfsef', '2025-03-19 19:36:41', 'general', 'BSHM', 'approved'),
(67, 3, 'BSIT', 'wfwefwfwefw', '2025-03-19 19:36:54', 'general', 'BSIT', 'approved'),
(68, 3, 'BSTM', 'efwwefwefewfewf', '2025-03-19 19:37:05', 'general', 'BSTM', 'approved'),
(69, 3, 'BSIT', 'czdfdfdffdf', '2025-03-19 19:40:10', 'general', 'BSIT', 'pending'),
(70, 3, 'BSA', 'hahahhaha', '2025-03-19 19:40:18', 'general', 'BSA', 'pending'),
(71, 3, 'BSCRIM', 'mNika', '2025-03-19 19:40:26', 'general', 'BSCRIM', 'pending'),
(72, 3, 'BSBA', 'oh hell nah', '2025-03-19 19:40:34', 'general', 'BSBA', 'pending'),
(73, 3, 'BSBA', 'kamawanaenn', '2025-03-19 19:40:41', 'general', 'BSBA', 'rejected'),
(74, 3, 'BSED', 'hujmsmmsmsms', '2025-03-19 19:40:50', 'general', 'BSED', 'rejected'),
(75, 3, 'BSCRIM', ';lksdkmldknlknldsknldfsknknldfsfklndfs', '2025-03-19 19:40:59', 'general', 'BSCRIM', 'approved'),
(76, 6, 'BSHM', 'huasdhusadkhjasds', '2025-03-19 19:57:31', 'general', 'BSHM', 'approved'),
(77, 10, 'BSIT', 'oh mannogagaagag', '2025-03-20 16:12:45', 'general', 'BSIT', 'pending'),
(78, 6, 'BSTM', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2025-03-20 18:47:26', 'general', 'BSTM', 'approved'),
(79, 6, 'HE', 'I LOVE DEEPSEEK, MY GOAT', '2025-03-20 19:13:17', 'general', 'HE', 'pending'),
(80, 6, 'BSTM', 'I LOVE DEEPSEEK', '2025-03-20 19:13:36', 'general', 'BSTM', 'approved'),
(81, 6, 'BSBA', 'Testing', '2025-03-20 19:58:32', 'general', 'BSBA', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `question_photos`
--

CREATE TABLE `question_photos` (
  `photo_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `photo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_photos`
--

INSERT INTO `question_photos` (`photo_id`, `question_id`, `photo_path`) VALUES
(8, 41, 'uploads/67d86062a9883.png'),
(15, 44, 'uploads/67d879063519f.png'),
(16, 44, 'uploads/67d87906490b0.png'),
(17, 44, 'uploads/67d879065dc1d.png'),
(21, 50, 'uploads/67d9d811f395b.png'),
(23, 53, 'uploads/67da8934392a9.png'),
(29, 60, 'uploads/67db08e1d55e7.png'),
(30, 60, 'uploads/67db08e1f254d.png'),
(31, 60, 'uploads/67db08e206eae.png'),
(39, 62, 'uploads/67db1018e4b0b.png'),
(40, 62, 'uploads/67db101904efa.png'),
(41, 62, 'uploads/67db101919a3d.png'),
(42, 62, 'uploads/67db10192e007.png'),
(43, 63, 'uploads/67db11d4647f9.png'),
(44, 63, 'uploads/67db11d4786e1.png'),
(45, 63, 'uploads/67db11d48c58f.png'),
(46, 64, 'uploads/67db11e273c7b.png'),
(47, 64, 'uploads/67db11e287ceb.png'),
(48, 64, 'uploads/67db11e29bb26.png'),
(49, 64, 'uploads/67db11e2b812f.png'),
(50, 64, 'uploads/67db11e2c13e0.png'),
(51, 76, 'uploads/67db21abe4135.png'),
(52, 76, 'uploads/67db21ac04807.png'),
(53, 76, 'uploads/67db21ac188c1.png'),
(54, 80, 'uploads/67dc68e10dfc5.jpg'),
(55, 81, 'uploads/67dc736871a89.jpg'),
(56, 81, 'uploads/67dc736883643.jpg'),
(57, 81, 'uploads/67dc736893d4b.jpg'),
(58, 81, 'uploads/67dc7368cf503.jpg'),
(59, 81, 'uploads/67dc736923b44.jpg'),
(60, 81, 'uploads/67dc736962f88.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `question_id`, `user_id`, `reason`, `created_at`) VALUES
(30, 65, 3, 'dsfsdf', '2025-03-19 19:35:51'),
(31, 63, 3, 'dfssfdsf', '2025-03-19 19:35:55'),
(32, 58, 3, 'dsfdsfsdfdsf', '2025-03-19 19:35:59'),
(33, 6, 3, 'sdfsfdsfdsf', '2025-03-19 19:36:02'),
(34, 4, 3, 'fdsfdfsfs', '2025-03-19 19:36:05'),
(35, 3, 3, 'fsfsfsf', '2025-03-19 19:36:09'),
(36, 2, 3, 'sdfsfsfsdf', '2025-03-19 19:36:16'),
(37, 1, 3, 'dsfdsffds', '2025-03-19 19:36:20'),
(38, 68, 3, 'dasdasd', '2025-03-19 19:37:32'),
(39, 67, 3, 'asdadadd', '2025-03-19 19:37:38'),
(40, 66, 3, 'asdsadadasd', '2025-03-19 19:37:41'),
(41, 68, 6, 'jhadshjdskjds', '2025-03-19 19:54:55'),
(42, 67, 6, 'jrkhhjdfjhgf', '2025-03-19 19:55:23'),
(43, 76, 6, 'Because it is so bastos po', '2025-03-20 16:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `course` varchar(50) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`, `course`, `role`) VALUES
(1, 'Jerald', 'plukjerald.samonte@gmail.com', '$2y$10$WCkS6kHuYkKJJWUqoJLqmOALgo09RASrUajBAHmrvrPjvnu6Qrx8.', '2025-03-08 07:53:19', NULL, 'admin'),
(2, 'Kenley', 'kenleysamonte26@gmail.com', '$2y$10$1L8/WZLu.0S3RZN2ikznpuV/P8ggeGn4dyxprbNGezfFqlTSCjNpS', '2025-03-08 08:25:46', NULL, 'user'),
(3, 'Kit', 'kitmarjohnb@gmail.com', '$2y$10$qulQplG4h66k5VxjLzAo6.I640gZmHUI4YAe03Ec7KH.BTQhn3hpW', '2025-03-09 09:08:50', NULL, 'user'),
(4, '123', 'dada', '$2y$10$atFpdaypJjcnUQ0LJH.rPuqXslFj7q5pI.iKdmKDRWGrh94q9IQcK', '2025-03-10 15:51:36', NULL, 'user'),
(5, 'Jin', 'Jinhular26@gmail.com', '$2y$10$QVbNse.x2TE/3PePMvC2GuayodJadQ8h2Ub/Gx1HHn0I8k.u9hcae', '2025-03-10 15:58:22', NULL, 'user'),
(6, 'Albert', 'albertdominicragol03@gmail.com', '$2y$10$lpni0GAbmUwnQ7K8E0fJX.HbgLfMrynw6aw25QZXU8ay.SzbLyW8G', '2025-03-11 16:39:55', 'BSIT', 'admin'),
(7, 'lalaq', 'albertdowwminicsragol03@gmail.com', '$2y$10$b6D/hGuclG1ScpXuSE11h.FRB6rpP84qN8Vj7LTIq4nYJrkTk49b.', '2025-03-11 17:32:44', 'BSED', 'user'),
(8, 'Angelica', 'angelicalim@gmail.com', '$2y$10$geBxlvivEnjahix403rAcun6rfSwQyKkq8z0tSrTa1RpIrgDwX5ji', '2025-03-11 17:46:14', 'ICT', 'user'),
(9, 'ASsddwd', 'wdadwadadw@gmail.com', '$2y$10$ji5zcbFdPSR4eK8NiIYouu9ECpDNdGReRpUCNK8jLz6nDmsq44DRi', '2025-03-11 17:50:26', 'ICT', 'user'),
(10, 'maniga', 'maniga@gmail.com', '$2y$10$D6KZ4dFg8BKUEx9rrYlnn.apaMTfEi5x6pMAOGYu8cqZ/OlypRate', '2025-03-20 16:11:52', 'Elementary', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `answer_ratings`
--
ALTER TABLE `answer_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_rating` (`answer_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `answer_reports`
--
ALTER TABLE `answer_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_id` (`answer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `fk_questions_users` (`user_id`);

--
-- Indexes for table `question_photos`
--
ALTER TABLE `question_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `answer_ratings`
--
ALTER TABLE `answer_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `answer_reports`
--
ALTER TABLE `answer_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `question_photos`
--
ALTER TABLE `question_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `answer_ratings`
--
ALTER TABLE `answer_ratings`
  ADD CONSTRAINT `answer_ratings_ibfk_1` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answer_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `answer_reports`
--
ALTER TABLE `answer_reports`
  ADD CONSTRAINT `answer_reports_ibfk_1` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answer_reports_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_questions_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `question_photos`
--
ALTER TABLE `question_photos`
  ADD CONSTRAINT `question_photos_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
