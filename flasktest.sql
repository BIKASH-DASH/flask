-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 03:36 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flasktest`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `Technologies` varchar(255) NOT NULL,
  `UserDesignation` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `address`, `cpassword`, `emailid`, `gender`, `lastname`, `password`, `phoneno`, `Technologies`, `UserDesignation`) VALUES
(1, 'vikash', 'dasas', 'password', 'vikashdash004@gmail.com', 'male', 'lastname', 'password', '9937090484', 'as', 'asas'),
(6, 'vikash', 'address', 'password', 'vikashdash@gmail.com', 'female', 'dash', 'password', '9937090484', 'PHP', 'admin'),
(7, 'firstname', 'address', 'password', 'vikashdash@gmail.com', 'male', 'lastname', 'password', '9937090484', 'PHP', 'admin'),
(8, 'raja', 'address', '123456', 'v@gmail.com', 'female', 'dash', '123456', '9937090484', 'PHP', 'admin'),
(9, 'viaksh111', 'address', '123456', 'v@gmail.com', 'female', 'dash', '123456', '9937090484', 'PHP', 'subadmin'),
(10, 'vikash', 'address', '123456', 'vikashdash@gmail.com', 'female', 'dash', '123456', '9937090484', 'PHP', 'admin'),
(11, 'vikash', 'address', '1234546', 'vikashdash@gmail.com', 'female', 'lasst', 'password', '9937090484', 'PHP', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
