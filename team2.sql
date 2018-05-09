-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2018 at 05:46 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

CREATE DATABASE IF NOT EXISTS team2;

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(11) NOT NULL,
  `first` varchar(10) NOT NULL,
  `second` varchar(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `second`, `user`, `password`) VALUES
('101', 'Rohit', 'Kapoor', 'Admin', 'admin@123'),
('102', 'Raman', 'Shetty', 'Admin2', 'admin@2');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE IF NOT EXISTS `visitor` (
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file` varchar(50) DEFAULT NULL,
  `gid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`name`, `number`, `city`, `address`, `date`, `file`, `gid`) VALUES
('Mohit', '7060053133', 'dehradun', 'sailok near Itbp camp', '2018-05-07 17:32:09', 'MOHIT.JPG', '102'),
('VODA', '7689789060', 'mumbai', 'andhari', '2018-05-07 17:44:55', 'voda.jpg', '102'),
('telnor', '7890678905', 'dehradun', 'prem nagar', '2018-05-07 17:53:34', 'telenor.jpg', '102'),
('Ramesh', '7890789067', 'bombay', 'Juhu beach', '2018-05-07 18:03:14', '2018-01-01-16-02-21.jpg', '101'),
('Rambo', '7890789067', 'bombay', 'Film city', '2018-05-07 18:06:07', 'main-qimg-757527df23d1d4591072566cbff0f782.jpg', '101'),
('Bruno', '9234565678', 'mumbai', 'South Mumbai', '2018-05-07 18:08:57', 'Tom Brady913_rectangle.jpg', '101'),
('raman', '4567897890', 'kolkata', 'xyz colony near abc', '2018-05-08 02:39:22', 'profile-pic.jpg', '102'),
('Navneet', '7060789060', 'hyderabad', 'zheerabad', '2018-05-08 02:44:56', 'user.jpg', '102'),
('rohit', '9999999999', 'dehradun', 'sangam pg', '2018-05-08 05:19:38', 'south.jpg', '102'),
('Mohit Negi', '9999999999', 'dehradun', 'Clementtown', '2018-05-08 05:37:42', 'DK4EgVSVAAAblCw.jpg', '101'),
('rohit', '9999999999', 'dehradun', 'clementttown', '2018-05-08 05:40:44', 'LMRC NEW.jpg', '102');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
