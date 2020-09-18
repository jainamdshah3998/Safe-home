-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 01:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `blockName` varchar(50) NOT NULL,
  `secretaryPhoneNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`blockName`, `secretaryPhoneNumber`) VALUES
('A', '9408548950'),
('B', '9408548950'),
('C', '9408548950'),
('D', '9825900599');

-- --------------------------------------------------------

--
-- Table structure for table `everyday`
--

CREATE TABLE `everyday` (
  `everydayPhoneNumber` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `secretaryPhoneNumber` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `everyday`
--

INSERT INTO `everyday` (`everydayPhoneNumber`, `name`, `categoryId`, `secretaryPhoneNumber`, `image`) VALUES
('1234567890', 'Ramesh  bhai', 1, '9408548950', ''),
('4546123890', 'Manju', 2, '9408548950', ''),
('9632587410', 'Natu kaka', 1, '9408548950', '');

-- --------------------------------------------------------

--
-- Table structure for table `everydaycategory`
--

CREATE TABLE `everydaycategory` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `everydaycategory`
--

INSERT INTO `everydaycategory` (`categoryId`, `categoryName`) VALUES
(1, 'driver'),
(2, 'maid');

-- --------------------------------------------------------

--
-- Table structure for table `everydayinout`
--

CREATE TABLE `everydayinout` (
  `phoneNumber` varchar(10) NOT NULL,
  `InTime` datetime NOT NULL,
  `outtime` datetime DEFAULT NULL,
  `secretaryPhoneNumber` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `everydayinout`
--

INSERT INTO `everydayinout` (`phoneNumber`, `InTime`, `outtime`, `secretaryPhoneNumber`) VALUES
('1234567890', '2020-08-27 14:40:10', '2020-08-28 14:40:10', '9408548950'),
('1234567890', '2020-08-28 14:20:46', '2020-08-28 14:37:46', '9408548950'),
('1234567890', '2020-09-12 12:50:27', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:51:48', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:52:59', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:53:42', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:55:12', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:55:58', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:57:47', '2020-09-12 13:05:30', '9408548950'),
('1234567890', '2020-09-12 12:58:32', '2020-09-12 13:05:30', '9408548950'),
('4546123890', '2020-09-09 16:26:32', '2020-09-09 17:26:32', '9408548950'),
('4546123890', '2020-09-12 19:07:14', '2020-09-12 23:43:31', '9408548950'),
('9632587410', '2020-08-28 14:10:05', '2020-08-28 14:39:05', '9408548950'),
('9632587410', '2020-09-09 12:27:57', '2020-09-09 02:02:57', '9408548950'),
('9632587410', '2020-09-12 23:29:47', '0000-00-00 00:00:00', '9408548950');

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `flatNumber` int(11) NOT NULL,
  `blockName` varchar(50) NOT NULL,
  `secretaryPhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`flatNumber`, `blockName`, `secretaryPhoneNumber`) VALUES
(101, 'A', '9408548950'),
(101, 'B', '9408548950'),
(101, 'D', '9825900599'),
(102, 'A', '9408548950'),
(102, 'B', '9408548950'),
(102, 'D', '9825900599'),
(201, 'A', '9408548950'),
(201, 'B', '9408548950'),
(202, 'A', '9408548950'),
(202, 'B', '9408548950');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `secretaryPhoneNumber` varchar(10) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `secretaryPhoneNumber`, `title`, `message`, `date`) VALUES
(1, '9408548950', 'Covid19', 'Due to covid 19 apademic entry of visitors is restricted', '2020-07-20'),
(8, '9408548950', 'Covid Case', 'All residence of society are informed that we have covid case positive in our society', '2020-07-24'),
(9, '9408548950', 'Covid Testing', 'Government doctor will be visiting society tomorrow for covid testing', '2020-07-24'),
(151, '9408548950', 'Independence day', 'Flag hoisting will be at 9:00 am', '2020-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `secretaryPhoneNumber` varchar(10) NOT NULL,
  `societyName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`secretaryPhoneNumber`, `societyName`) VALUES
('8320013368', 'Suparna flats'),
('9408548950', 'Shilpinagar'),
('9825900599', 'Satyam Tower');

-- --------------------------------------------------------

--
-- Table structure for table `societyuserlogin`
--

CREATE TABLE `societyuserlogin` (
  `secretaryPhoneNumber` varchar(10) NOT NULL,
  `userPhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `societyuserlogin`
--

INSERT INTO `societyuserlogin` (`secretaryPhoneNumber`, `userPhoneNumber`) VALUES
('9408548950', '9428108520'),
('9408548950', '7016371261'),
('9408548950', '7600747439'),
('9408548950', '9408548950');

-- --------------------------------------------------------

--
-- Table structure for table `societywatchman`
--

CREATE TABLE `societywatchman` (
  `userPhoneNumber` varchar(10) NOT NULL,
  `secretaryPhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `societywatchman`
--

INSERT INTO `societywatchman` (`userPhoneNumber`, `secretaryPhoneNumber`) VALUES
('1234567890', '9408548950'),
('1425364755', '9408548950'),
('2255668811', '9408548950'),
('4152368970', '9408548950'),
('5241693870', '9408548950');

-- --------------------------------------------------------

--
-- Table structure for table `userblockeveryday`
--

CREATE TABLE `userblockeveryday` (
  `blockNumber` int(11) NOT NULL,
  `flatName` varchar(50) NOT NULL,
  `secretaryPhoneNumber` varchar(10) NOT NULL,
  `everydayPhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userblockeveryday`
--

INSERT INTO `userblockeveryday` (`blockNumber`, `flatName`, `secretaryPhoneNumber`, `everydayPhoneNumber`) VALUES
(102, 'A', '9408548950', '1234567890'),
(102, 'A', '9408548950', '4546123890'),
(102, 'A', '9408548950', '9632587410'),
(102, 'D', '9825900599', '1234567890'),
(103, 'A', '9408548950', '1234567890'),
(103, 'A', '9408548950', '4546123890'),
(103, 'A', '9408548950', '9632587410');

-- --------------------------------------------------------

--
-- Table structure for table `userflat`
--

CREATE TABLE `userflat` (
  `userPhoneNumber` varchar(10) NOT NULL,
  `flatNumber` int(11) NOT NULL,
  `blockName` varchar(50) NOT NULL,
  `secretaryPhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userflat`
--

INSERT INTO `userflat` (`userPhoneNumber`, `flatNumber`, `blockName`, `secretaryPhoneNumber`) VALUES
('7016371261', 101, 'D', '9825900599'),
('7016371261', 102, 'D', '9825900599'),
('7016371261', 201, 'A', '9408548950'),
('7572921304', 201, 'A', '9408548950'),
('7600747439', 202, 'A', '9408548950'),
('7990386933', 102, 'A', '9408548950'),
('8485996496', 101, 'D', '9825900599'),
('8485996496', 102, 'D', '9825900599'),
('8485996496', 201, 'A', '9408548950'),
('9408548950', 102, 'A', '9408548950'),
('9408548950', 102, 'B', '9408548950'),
('9408548950', 102, 'D', '9825900599'),
('9408548950', 201, 'A', '9408548950'),
('9428108520', 201, 'A', '9408548950');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userPhoneNumber` varchar(10) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userTypeId` int(11) NOT NULL,
  `userToken` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userPhoneNumber`, `userName`, `password`, `userTypeId`, `userToken`) VALUES
('1122334455', 'Mayank', '12345678', 3, ''),
('1425364755', 'Suresh', 'd2b5f63d0a44ba4953d0fab1950d423f', 3, ''),
('2255668811', 'Ram', '7bb22aa572cf175417310fde7f6ab54a', 3, ''),
('3698527410', 'Fenil', '12345678', 2, ''),
('4152368970', 'Mahesh', '12345678', 3, ''),
('5241693870', 'Ramesh', '12345678', 3, ''),
('6352418790', 'Kaival', '12345678', 2, ''),
('7016371261', 'Drashti', '147', 2, 'cT2_59ZsRCODwBYrEiF_R2:APA91bELU6zE3OZ6ty468KrkZiiCCGMPVi-UmITkw2uR8tiW9E6ewUhvSIz2gVmqEThFhaAW1A63vWSNcZxulD7xb6SyDc_5NJwPOD5kD5yS9BqsnS1Uhp-4AMe7STQ6ByJCj54J7X7M'),
('7572921304', 'Jay', '12345678', 2, ''),
('7600747439', 'Dhairya', '7bb22aa572cf175417310fde7f6ab54a', 2, 'eeialwJBSuSV2IXWLAfoYt:APA91bHfpjKjKcvQYXgkWQASAKobyxmglkBCtcED_VsK1FOUcUJGvsn-Fy1pPQvtdOXX5x_MW7MFMH9LXtoxr5LSTBcNJn4P5n_NZBEugxlQGc4-mkeU6Mxo1rOA5aDve8BXSUz_u2Nf'),
('7778996496', 'Hetvi', '456', 1, ''),
('7990386933', 'Rahil', '12345678', 1, ''),
('7990386933', 'Helly', '12345678', 2, ''),
('8320013368', 'Priyanshee', '12345678', 1, ''),
('8485996496', 'Agam', '789', 2, ''),
('9408546309', 'Siddharth', '12345678', 2, ''),
('9408548950', 'Jay', 'd2b5f63d0a44ba4953d0fab1950d423f', 1, 'e4NwahomTl2arPV1-yfKOo:APA91bGaNsj0LVxqs4EQl5SvyWSPJZzcT7p1KPNRSOUwapDmpSFbeoVX041un2sDnLECvnOgdzI9jOfDRwjg4hpOnAEE1nMwAgm3nYxiLbrZnTDjWRv1cKXuKw4ojbVBgUMXhtD4ddVk'),
('9408548950', 'Darshan', 'd2b5f63d0a44ba4953d0fab1950d423f', 2, 'e4NwahomTl2arPV1-yfKOo:APA91bGaNsj0LVxqs4EQl5SvyWSPJZzcT7p1KPNRSOUwapDmpSFbeoVX041un2sDnLECvnOgdzI9jOfDRwjg4hpOnAEE1nMwAgm3nYxiLbrZnTDjWRv1cKXuKw4ojbVBgUMXhtD4ddVk'),
('9409079402', 'Jainam', '12345678', 2, ''),
('9409081109', 'Gajendra', '12345678', 2, ''),
('9428108520', 'Rajendra', '12345678', 2, 'f_D5qaqmRgCclj-sQNl_E_:APA91bHMzNIG8mrqg0sPsALScqZQ6bJUwAcTPaVhwXezsltA8vx3PAPq3aXjxR5iaQvp_RZhJUWVp91qjksEqSv4qVaupa6TNIm5MEfH6ayS1DPvfv4wSjTysNECBg_yZp99nkPYnCpP'),
('9428433996', 'Nandish', '12345678', 2, ''),
('9499808520', 'Jay', '12345678', 2, ''),
('9825900599', 'Dipak', '123', 1, ''),
('9825909649', 'Manvesh', '369', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `userTypeId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`userTypeId`, `name`) VALUES
(1, 'secretary'),
(2, 'user'),
(3, 'watchman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`blockName`,`secretaryPhoneNumber`),
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `everyday`
--
ALTER TABLE `everyday`
  ADD PRIMARY KEY (`everydayPhoneNumber`),
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `everydaycategory`
--
ALTER TABLE `everydaycategory`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `categoryName` (`categoryName`);

--
-- Indexes for table `everydayinout`
--
ALTER TABLE `everydayinout`
  ADD PRIMARY KEY (`phoneNumber`,`InTime`),
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flatNumber`,`blockName`,`secretaryPhoneNumber`),
  ADD KEY `flatName` (`blockName`,`secretaryPhoneNumber`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`secretaryPhoneNumber`),
  ADD UNIQUE KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `societyuserlogin`
--
ALTER TABLE `societyuserlogin`
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`),
  ADD KEY `userPhoneNumber` (`userPhoneNumber`);

--
-- Indexes for table `societywatchman`
--
ALTER TABLE `societywatchman`
  ADD PRIMARY KEY (`userPhoneNumber`,`secretaryPhoneNumber`),
  ADD KEY `secretaryPhoneNumber` (`secretaryPhoneNumber`);

--
-- Indexes for table `userblockeveryday`
--
ALTER TABLE `userblockeveryday`
  ADD PRIMARY KEY (`blockNumber`,`flatName`,`secretaryPhoneNumber`,`everydayPhoneNumber`),
  ADD KEY `everydayPhoneNumber` (`everydayPhoneNumber`);

--
-- Indexes for table `userflat`
--
ALTER TABLE `userflat`
  ADD PRIMARY KEY (`userPhoneNumber`,`flatNumber`,`blockName`,`secretaryPhoneNumber`),
  ADD KEY `blockNumber` (`flatNumber`,`blockName`,`secretaryPhoneNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userPhoneNumber`,`userTypeId`),
  ADD KEY `userTypeId` (`userTypeId`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`userTypeId`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `everydaycategory`
--
ALTER TABLE `everydaycategory`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `userTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `everyday`
--
ALTER TABLE `everyday`
  ADD CONSTRAINT `everyday_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `everydaycategory` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `everyday_ibfk_2` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `everydayinout`
--
ALTER TABLE `everydayinout`
  ADD CONSTRAINT `everydayinout_ibfk_1` FOREIGN KEY (`phoneNumber`) REFERENCES `everyday` (`everydayPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `everydayinout_ibfk_2` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flat`
--
ALTER TABLE `flat`
  ADD CONSTRAINT `flat_ibfk_1` FOREIGN KEY (`blockName`,`secretaryPhoneNumber`) REFERENCES `block` (`blockName`, `secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `society`
--
ALTER TABLE `society`
  ADD CONSTRAINT `society_ibfk_1` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `users` (`userPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `societyuserlogin`
--
ALTER TABLE `societyuserlogin`
  ADD CONSTRAINT `societyuserlogin_ibfk_1` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `societyuserlogin_ibfk_2` FOREIGN KEY (`userPhoneNumber`) REFERENCES `users` (`userPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `societywatchman`
--
ALTER TABLE `societywatchman`
  ADD CONSTRAINT `societywatchman_ibfk_1` FOREIGN KEY (`secretaryPhoneNumber`) REFERENCES `society` (`secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userflat`
--
ALTER TABLE `userflat`
  ADD CONSTRAINT `userflat_ibfk_1` FOREIGN KEY (`flatNumber`,`blockName`,`secretaryPhoneNumber`) REFERENCES `flat` (`flatNumber`, `blockName`, `secretaryPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userflat_ibfk_2` FOREIGN KEY (`userPhoneNumber`) REFERENCES `users` (`userPhoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`userTypeId`) REFERENCES `usertype` (`userTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
