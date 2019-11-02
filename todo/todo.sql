-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 07:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) NOT NULL COMMENT 'Red. Br.',
  `task` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `datum`) VALUES
(105, '1111111111111111111111111111111111111111111111111111111111111111111111', '2019-10-19 22:00:00'),
(110, 'dsdkashkasddkj ', '2019-10-19 22:00:00'),
(114, 'sdadasds', '2019-10-19 22:00:00'),
(115, 'dadsadasd', '2019-10-19 22:00:00'),
(116, 'dasddd jklj kldja klja skldjklajsdlkjas dlkaslkdj akld lkaj dklj dlk asldk alskd laks dlkadkl lasd l', '2019-10-19 22:00:00'),
(117, 'dasdaskd ;aslkd askl;d sa', '2019-10-19 22:00:00'),
(118, 'dasdaskjasd asjlkasjkldl asjdaskljd askldjaskljklaskldjasl d asjdaskljd asjkldklaskldjklaskldas dkljaskldklaskldklasdklaskldklas dklasdjas dklasjdklajkldklasd j dasjkldasjd djdklajd askldjaslkdjasdkasj dklasdjkl akljdjkla', '2019-10-19 22:00:00'),
(119, 'dasdasd', '2019-10-20 10:19:01'),
(120, 'dasdasda', '2019-10-20 10:19:14'),
(121, 'asdasdas', '2019-10-20 10:29:59'),
(122, 'dadasdsd', '2019-10-20 10:30:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Red. Br.', AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
