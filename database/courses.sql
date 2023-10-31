-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 09:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `title`, `description`, `instructor_id`, `video_link`) VALUES
(1, 'Full Stack Web Development Full Course', 'This Edureka \"Full Stack Web Development Full Course\" video will help you understand and learn Full Stack Web Development technologies and concepts in detail.', 1, 'https://www.youtube.com/watch?v=YLpCPo0FDtE'),
(2, 'Data Science', 'Statistics is the discipline that concerns the collection, organization, analysis, interpretation, and presentation of data. In applying statistics to a scientific, industrial, or social problem, it is conventional to begin with a statistical population or a statistical model to be studied.', 2, 'https://www.youtube.com/watch?v=LZzq1zSL1bs'),
(3, 'AWS Course', 'Great Learning brings you this beginner-friendly tutorial on AWS to help you understand everything you need to know about this topic and getting started on the journey to learn about it well. This video starts off with Cloud Computing Fundamentals, followed by a comparison between AWS vs MS Azure vs Google Cloud Platform. Following this, we will understand the topic of AWS. Finally, we look at a variety of AWS Services! This video teaches AWS and its key functions and concepts with a variety of demonstrations & examples to help you get started on the right foot.', 3, 'https://www.youtube.com/watch?v=bNgPProbvhM'),
(4, 'SQL Course', 'The course is designed for beginners to SQL and database management systems, and will introduce common database management topics. Throughout the course we\'ll be looking at various topics including schema design, basic C.R.U.D operations, aggregation, nested queries, joins, keys and much more.', 4, 'https://www.youtube.com/watch?v=HXV3zeQKqGY'),
(5, 'Python Course', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.', 5, 'https://www.youtube.com/watch?v=YfO28Ihehbk'),
(6, 'Python Deeplearning', 'This course is designed for Python programmers who want to learn how to use TensorFlow to build and deploy machine learning models.', 6, 'http://www.youtube.com/watch?v=IA3WxTTPXqQ'),
(7, 'Python Tensorflow', 'This course is a comprehensive introduction to TensorFlow 2.0 and machine learning for beginners.', 7, 'http://www.youtube.com/watch?v=tpCFfeUEGs8'),
(8, 'Naveen', 'This video compares and contrasts PyTorch and TensorFlow, two popular machine learning frameworks.', 8, 'http://www.youtube.com/watch?v=tpCFfeUEGs8'),
(9, 'Python PyTorch', 'This course teaches you how to use TensorFlow to build deep learning models for computer vision tasks.', 9, 'https://youtu.be/tpCFfeUEGs8'),
(10, 'MangoDb', 'This video will give you and introduction to MongoDB in 1 Hour.\r\nAfterwards I recommend exploring aggregation, replication, and sharding.\r\nComment below if you would like an extended version of this video.', 6, 'https://www.youtube.com/watch?v=c2M-rlkkT5o&pp=ygUHbWFuZ29kYg%3D%3D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
