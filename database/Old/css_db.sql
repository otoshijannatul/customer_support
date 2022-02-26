-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 25, 2022 at 05:02 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `css_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
CREATE TABLE IF NOT EXISTS `box` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `email`, `sender`, `msg`, `time`, `date`) VALUES
(123, 'admin', '', 'Hi Jaman what is your issue', '01:55 pm', '24-Feb-2022'),
(124, 'demo@gmail.com', 'Customer', 'My phone is broke', '01:55 pm', '24-Feb-2022'),
(125, 'stuff@gmail.com', '', 'Ok we will fix it', '01:55 pm', '24-Feb-2022'),
(126, 'admin', '', 'Super ', '01:58 pm', '24-Feb-2022'),
(127, 'admin', '', 'Ok jaman good bye', '01:58 pm', '24-Feb-2022'),
(128, 'demo@gmail.com', 'Customer', 'Thanks', '01:59 pm', '24-Feb-2022'),
(129, 'demo@gmail.com', 'Customer', 'So', '01:59 pm', '24-Feb-2022'),
(130, 'admin', '', 'ds', '01:59 pm', '24-Feb-2022'),
(131, 'admin', '', 'Hi sabbir ', '02:13 pm', '24-Feb-2022'),
(132, 'stuff@gmail.com', '', 'Ho ', '02:23 pm', '24-Feb-2022'),
(133, 'admin', '', 'Hello there', '12:38 am', '25-Feb-2022'),
(134, 'demo@gmail.com', 'Customer', 'Ok fine, lets work', '12:38 am', '25-Feb-2022'),
(135, 'demo@gmail.com', 'Customer', 'Hello, My laptop is not working ', '12:39 am', '25-Feb-2022'),
(136, 'admin', '', 'Ok please creatn an tickt so our support team can help you', '12:40 am', '25-Feb-2022'),
(137, 'admin', '', 'Ok please creatn an tickt so our support team can help you', '12:41 am', '25-Feb-2022'),
(138, 'stuff@gmail.com', '', 'We just start work', '12:43 am', '25-Feb-2022'),
(139, 'stuff@gmail.com', '', 'We just start work', '12:43 am', '25-Feb-2022'),
(140, 'admin', '', 'hello', '12:46 am', '25-Feb-2022');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_type` tinyint(1) NOT NULL COMMENT '1= admin, 2= staff,3= customer',
  `ticket_id` int NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_type`, `ticket_id`, `comment`, `date_created`) VALUES
(1, 1, 1, 1, '&lt;p&gt;Ok we will work here&lt;/p&gt;', '2022-02-25 00:41:41'),
(2, 2, 2, 1, '&lt;p&gt;Ok we just start and It will finised within two days&amp;nbsp;&lt;/p&gt;', '2022-02-25 00:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`, `status`) VALUES
(4, 'Customer', 'one', 'customer', '654165324198', 'Dhaka Bangladesh ', 'demo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-02-22 14:45:19', 0),
(5, 'New memebr ', 'sam', 'Ahmed ', '0181516001', 'Sa', 'otossshijanntul@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2022-02-25 22:59:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `date_created`) VALUES
(1, 'I.T. Department', 'Information technology Department', '2020-11-09 11:43:18'),
(2, 'Sample Department', 'Sample Department', '2020-11-09 11:44:08'),
(3, 'Walton Ref', 'Some test', '2022-02-24 14:14:34'),
(4, 'Walton Ref 2', 'test', '2022-02-24 14:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `department_id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`, `status`) VALUES
(2, 1, 'Demo ', 'One', 'Staff ', '0130449896848', 'Dhaka bangladesh ', 'stuff@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-02-22 14:44:07', 0),
(3, 2, 'Stuff', 'Two', 'Staff ', '01484963651', 'Bangladesh', 'new_stuff2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-02-22 14:44:45', 0),
(4, 3, 'Sabbir ', 'sam', 'Ahmed ', '0181516001', 'sa', 'saml@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-02-25 22:58:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending,1=on process,2= Closed',
  `department_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `description`, `status`, `department_id`, `customer_id`, `staff_id`, `admin_id`, `date_created`) VALUES
(2, 'Mobile damage ', '&lt;p&gt;Sa&lt;/p&gt;', 0, 1, 4, 0, 0, '2022-02-25 22:41:18'),
(3, 'Banglka ', '&lt;p&gt;Baw Bawe Baw&lt;/p&gt;', 0, 4, 4, 0, 0, '2022-02-25 22:42:48'),
(4, 'Otoshi Jan', '&lt;p&gt;Sabbir amr koljar tukra&lt;/p&gt;', 0, 2, 4, 0, 0, '2022-02-25 22:50:21'),
(5, 'Mobile damage ', '&lt;p&gt;sa&lt;/p&gt;', 0, 2, 4, 0, 0, '2022-02-25 22:50:59'),
(6, 'Mobile damage ', '', 0, 2, 4, 0, 0, '2022-02-25 22:52:32'),
(7, 'Mobile damage ', '', 0, 2, 4, 0, 0, '2022-02-25 22:54:39'),
(8, 'Otoshi Jan', '&lt;p&gt;Sabbir + Otoshi&amp;nbsp;&lt;/p&gt;', 0, 2, 4, 0, 0, '2022-02-25 22:55:41'),
(9, 'Otoshi Jan', '&lt;p&gt;Otoshi + Sabbir + Ariyan Ohin&lt;/p&gt;', 0, 2, 4, 0, 1, '2022-02-25 22:56:16'),
(10, 'Mobile damage otoshir ', '&lt;p&gt;Faltu&amp;nbsp;&lt;/p&gt;', 0, 4, 4, 0, 1, '2022-02-25 22:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '1 = Admin,2=support',
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `middlename`, `lastname`, `role`, `username`, `password`, `date_created`, `status`) VALUES
(1, 'admin@gmail.com', 'Admin', '', '', 1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
