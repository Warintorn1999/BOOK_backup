-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2019 at 02:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_pj`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `std_id` varchar(15) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `Book_name` varchar(100) NOT NULL,
  `Date_borrow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`std_id`, `std_name`, `Book_name`, `Date_borrow`) VALUES
('603020801-0', 'Warintorn', 'Little prince', '2019-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Book_id` varchar(4) NOT NULL,
  `Book_name` varchar(50) NOT NULL,
  `Writer_name` varchar(50) NOT NULL,
  `Publisher_name` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Book_id`, `Book_name`, `Writer_name`, `Publisher_name`, `img`) VALUES
('', 'Harry potter', 'เจ.เค.โรว์ลิง', 'แจ่มใส', ''),
('B001', 'The litle price', 'อองตวน', 'อมรินทร์', ''),
('B003', 'Little Prince', 'SDS', 'M,', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr5jLEcZzQaGhOFDGMVNfRY8osUoQsU99nW6JU5GQC_f'),
('B004', 'Aom', 'AIAI', 'jamsai', '58443695_307337860143524_810126081515323392_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Student_id` varchar(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Student_id`, `username`, `Password`) VALUES
('603020369-6', 'วัชรมน  สิริบรรลือศักดิ์', '3696'),
('603020784-4', 'ธีรพล  วนาคม', '7844'),
('603020801-0', 'warink', '8010'),
('603021065-1', 'อริสา พระอามาตร์', '0610'),
('603021714-0', 'กฤติมาพร เข็มเวียง', '7140');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
