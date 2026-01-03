-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2026 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `date`, `uid`, `cat`) VALUES
(5, 'The Rise of Artificial Intelligence', 'Artificial Intelligence is transforming industries such as healthcare, finance, and education. From smart assistants to self-driving cars, AI is becoming part of everyday life.', 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&fit=crop\r\n', '2026-01-03 17:09:49', 1, 'Technology'),
(6, 'Top Travel Destinations in 2025', 'Travel trends in 2025 show a strong interest in eco-tourism and cultural experiences. Countries like Japan, Italy, and New Zealand are among the top destinations.', 'https://images.pexels.com/photos/346885/pexels-photo-346885.jpeg', '2026-01-03 17:09:49', 1, 'Travel'),
(7, 'Healthy Eating Habits for Students', 'Maintaining a balanced diet helps students improve concentration and energy levels. Simple habits like drinking water and eating fruits make a big difference.', 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg', '2026-01-03 17:09:49', 1, 'Food'),
(8, 'Getting Started with Web Development', 'Web development involves building websites using HTML, CSS, JavaScript, and backend technologies. It is one of the most in-demand skills in the tech industry.', 'https://images.pexels.com/photos/270404/pexels-photo-270404.jpeg', '2026-01-03 17:09:49', 1, 'PROGRAMMING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(1, 'moe', 'Massri@example.com', '$2a$10$GLZu4genWc6IX4F1w0Yhl.2rOYM8Bi6FLuhZCE6THxH5foDr4OWQa', NULL),
(3, 'mohamad', 'mhm@gmail.com', '$2a$10$kHVEc2gFPIMBe.izTqsv6u.UpXs3sapb.b7qKfOt3QVJnhV/Oxfdu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_idx` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
