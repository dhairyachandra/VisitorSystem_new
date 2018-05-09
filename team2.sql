-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2018 at 02:25 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(11) NOT NULL,
  `first` varchar(10) NOT NULL,
  `second` varchar(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `second`, `user`, `password`) VALUES
('1000', 'Dhairya', 'dc', 'dc', 'admin@123'),
('101', 'Dhairya', 'Chandra', 'Admin', 'admin@123'),
('102', 'Raman', 'Shetty', 'Admin2', 'admin@2');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file` varchar(50) DEFAULT NULL,
  `gid` varchar(11) DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `gate` varchar(10) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`name`, `number`, `city`, `address`, `date`, `file`, `gid`, `purpose`, `gate`, `fname`) VALUES
('Mohit', '7060053133', 'dehradun', 'sailok near Itbp camp', '2018-05-07 17:32:09', 'MOHIT.JPG', '102', NULL, NULL, NULL),
('VODA', '7689789060', 'mumbai', 'andhari', '2018-05-07 17:44:55', 'voda.jpg', '102', NULL, NULL, NULL),
('telnor', '7890678905', 'dehradun', 'prem nagar', '2018-05-07 17:53:34', 'telenor.jpg', '102', NULL, NULL, NULL),
('Ramesh', '7890789067', 'bombay', 'Juhu beach', '2018-05-07 18:03:14', '2018-01-01-16-02-21.jpg', '101', NULL, NULL, NULL),
('Rambo', '7890789067', 'bombay', 'Film city', '2018-05-07 18:06:07', 'main-qimg-757527df23d1d4591072566cbff0f782.jpg', '101', NULL, NULL, NULL),
('Bruno', '9234565678', 'mumbai', 'South Mumbai', '2018-05-07 18:08:57', 'Tom Brady913_rectangle.jpg', '101', NULL, NULL, NULL),
('raman', '4567897890', 'kolkata', 'xyz colony near abc', '2018-05-08 02:39:22', 'profile-pic.jpg', '102', NULL, NULL, NULL),
('Navneet', '7060789060', 'hyderabad', 'zheerabad', '2018-05-08 02:44:56', 'user.jpg', '102', NULL, NULL, NULL),
('rohit', '9999999999', 'dehradun', 'sangam pg', '2018-05-08 05:19:38', 'south.jpg', '102', NULL, NULL, NULL),
('Mohit Negi', '9999999999', 'dehradun', 'Clementtown', '2018-05-08 05:37:42', 'DK4EgVSVAAAblCw.jpg', '101', NULL, NULL, NULL),
('rohit', '9999999999', 'dehradun', 'clementttown', '2018-05-08 05:40:44', 'LMRC NEW.jpg', '102', NULL, NULL, NULL),
('aaa', '121', 'ddd', 'aaa', '2018-05-08 06:24:42', 'dc.jpg', '101', NULL, NULL, NULL),
('ft', 'rfg', 'tgy', 'r5f6tg', '2018-05-08 06:35:34', 'IMG_1643.JPG', '101', NULL, NULL, NULL),
('tst', 'jsdgjshg', 'skjdhjskh', 'kbkdbf', '2018-05-08 07:55:23', 'IMG_0619.jpg', '101', NULL, NULL, NULL),
('hdvhgsv', 'jhvh', 'v', 'hjvv', '2018-05-08 07:57:41', 'IMG_1968.JPG', '101', NULL, NULL, NULL),
('hg', 'jhg', 'jhgn', 'hj', '2018-05-08 08:01:13', 'IMG_1942.JPG', '101', NULL, NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 08:02:49', 'IMG_1968.JPG', '101', NULL, NULL, NULL),
('d', '123', 'dd', 'd', '2018-05-08 08:09:58', 'zoom.jpg', '101', NULL, NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 08:23:47', 'IMG_1643.JPG', '101', NULL, NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 08:54:43', 'IMG_1942.JPG', '101', NULL, NULL, NULL),
('sjhdgshdv', 'jgbsjhdbj', 'jhbsdhjcbsjh', 'hjbcsdhjcv', '2018-05-08 08:59:33', 'IMG_8670.JPG', '101', '1234567898765434567876543456785434', NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 09:06:42', 'IMG_1656.JPG', '101', 'a', NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 09:07:53', 'zoom.jpg', '101', 'a', NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 09:08:27', 'IMG_1942.JPG', '101', 'a', NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 09:19:16', 'IMG_8670.JPG', '101', 'a', NULL, NULL),
('a', 'a', 'a', 'a', '2018-05-08 09:29:44', 'IMG_1643.JPG', '101', 'a', 'Gate 1', NULL),
('jhsjhb', 'jbhsjb', 'jhbjhdvbh', 'jkbjhbsj', '2018-05-08 09:46:38', 'IMG_0619.jpg', '101', 'bjhnm', 'Gate 1', 'jhbhsvbj'),
('sdjhsjdghdb', 'gbdhjvdhfhj', 'kdjgdjhfgh', 'kgdjhgvdj', '2018-05-08 09:49:53', 'Web-designing.jpg', '101', 'kugjdhgvjdid', 'Gate 2', ''),
('gfhjknm', 'ghvbjnkm', 'ghvbjnkm', 'gvbnm', '2018-05-08 11:37:01', 'IMG_8670.JPG', '101', 'gvbhjnk', 'Gate 1', 'fghjk'),
('dfgc', 'ghcnbnc', 'gcnnvb', 'vcbnbvm', '2018-05-08 11:49:12', 'IMG_1942.JPG', '101', 'cbvnm,', 'Gate 2', 'gcnbv'),
('arun', '1234567', 'fdghjkjl', 'dsfgh,', '2018-05-08 12:44:03', 'IMG_1643.JPG', '101', 'bcvnm,.', 'Gate 1', 'arun 2'),
('asas', 'saasa', 'saas', 'sasas', '2018-05-08 19:37:45', 'Web-designing.jpg', '101', 'sasasaa', 'Gate 2', 'asasa'),
('Dhairya Chandra', '8699078990', 'Chandigarh', '1442-A , Sector -61', '2018-05-08 20:07:26', 'IMG_0619.jpg', '101', 'Admission Enquiry', 'Gate 1', 'Vyas Chandra'),
('dsfg', 'fghjk', 'fghjk', 'gfhj', '2018-05-08 20:39:41', 'dc.jpg', '101', 'ghjk', 'Gate 1', 'hfdghj'),
('gf', '7777777777', 'jhnm,', 'bnm,', '2018-05-09 12:18:39', 'IMG_1968.JPG', '101', 'bnm,', 'Gate 1', 'ghj'),
('dfghj', '9898989898', 'hghgjhgj', 'hgjhgjhjg', '2018-05-09 12:21:41', 'IMG_1643.JPG', '101', 'hgjhgjhjg', 'Gate 1', 'ghjk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
