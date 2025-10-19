-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 08:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cruise_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `uname` varchar(20) NOT NULL,
  `ucontact` varchar(10) NOT NULL,
  `user` varchar(100) NOT NULL,
  `usuggest` varchar(100) NOT NULL,
  `urefer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookid` int(11) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `cruise_name` varchar(50) NOT NULL,
  `cruise_amt` int(11) NOT NULL,
  `acprice` int(11) NOT NULL,
  `famt` int(11) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `nperson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`bookid`, `cust_name`, `cruise_name`, `cruise_amt`, `acprice`, `famt`, `bdate`, `nperson`) VALUES
(1, '1', 'Mumbai-Goa', 85000, 4500, 89500, '5/5/2022', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancel`
--

CREATE TABLE `tbl_cancel` (
  `can_id` int(11) NOT NULL,
  `can_date` varchar(20) NOT NULL,
  `can_bookid` int(11) NOT NULL,
  `can_cust` varchar(50) NOT NULL,
  `can_reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cancel`
--

INSERT INTO `tbl_cancel` (`can_id`, `can_date`, `can_bookid`, `can_cust`, `can_reason`) VALUES
(1, '12-12-2021', 1, 'Test', 'Want to change travel date');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cruise`
--

CREATE TABLE `tbl_cruise` (
  `cruise_id` int(11) NOT NULL,
  `cruisename` varchar(40) NOT NULL,
  `cruise_arrival` varchar(40) NOT NULL,
  `cruise_dest` varchar(50) NOT NULL,
  `cruise_date` varchar(20) NOT NULL,
  `cruise_duration` varchar(20) NOT NULL,
  `cruise_total` int(10) NOT NULL,
  `cruise_other` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cruise`
--

INSERT INTO `tbl_cruise` (`cruise_id`, `cruisename`, `cruise_arrival`, `cruise_dest`, `cruise_date`, `cruise_duration`, `cruise_total`, `cruise_other`) VALUES
(2, 'Mumbai-Goa', 'Mumbai', 'Goa', '12-8-2022', '2 days', 12500, 50),
(4, 'Goa-Andman', 'Goa', 'Andman', '12-12-2022', '3', 5600, 20),
(5, 'Goa-Maldive', 'Goa', 'Andman', '12-12-2022', '3', 56000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `custid` int(11) NOT NULL,
  `custname` varchar(40) NOT NULL,
  `custmob` varchar(13) NOT NULL,
  `custadd` varchar(100) NOT NULL,
  `custmailid` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `custpass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`custid`, `custname`, `custmob`, `custadd`, `custmailid`, `username`, `custpass`) VALUES
(1, 'test', '8888888888', 'test', 'test@gmail.com', 'test', 'test123'),
(2, 'test', '8989888888', 'test', 'gmail.com', 'test', 'test123'),
(3, 'nikita', '8956234789', 'test', 'nikita@gmail.com', 'nikita', 'nikita@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `eid` int(11) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `enquiryfor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`eid`, `ename`, `contactno`, `address`, `emailid`, `enquiryfor`) VALUES
(1, 'kunal', '7878987898', 'test', 'kunal@gmail.com', 'andaman cruise'),
(2, 'test', '8789878987', 'test', 'itsdnyan@gmail.com', 'test'),
(3, 'ee', '9878767654', 'test', 'test@gmail.com', 'test'),
(4, 'hello', '9878767654', 'test', 'test@gmail.com', 'test'),
(5, 'ee', '9878767654', 'test', 'test@gmail.com', 'test'),
(6, 'hello', '9878767654', 'test', 'test@gmail.com', 'test'),
(7, 'hello', '9878767654', 'test', 'test@gmail.com', 'test'),
(8, 'Nikita', '8888888888', 'pune', 'nikita@gmail.com', 'cruise'),
(9, 'hello', '9878767654', 'test', 'test@gmail.com', 'test'),
(10, 'yash', '9856325542', 'yes', 'nothing', 'yes'),
(11, 'y', '9875641235', 'yes', 'nothing', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_date` varchar(20) NOT NULL,
  `feedback_cust` varchar(50) NOT NULL,
  `feedback_email` varchar(50) NOT NULL,
  `feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `feedback_date`, `feedback_cust`, `feedback_email`, `feedback`) VALUES
(1, '19/09/22', 'feedback', 'feedback@gmail.com', 'feedback');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `acid` int(11) NOT NULL,
  `atype` varchar(30) NOT NULL,
  `aroomno` varchar(20) NOT NULL,
  `acfeatures` varchar(40) NOT NULL,
  `acprice` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`acid`, `atype`, `aroomno`, `acfeatures`, `acprice`) VALUES
(1, 'Occean View', '101', 'AC', '15000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `zip` varchar(7) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv` varchar(5) NOT NULL,
  `card_val_mon` varchar(20) NOT NULL,
  `card_val_year` varchar(4) NOT NULL,
  `payid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`fname`, `lname`, `email`, `zip`, `gender`, `card_type`, `card_no`, `cvv`, `card_val_mon`, `card_val_year`, `payid`) VALUES
('hello', 'davane', 'test@GMAIL.COM', '17700', 'on', 'on', '566766', '123', '01 jun', '2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `scheduleno` int(11) NOT NULL,
  `sc_start_date` varchar(10) NOT NULL,
  `sc_end_date` varchar(10) NOT NULL,
  `cruisename` varchar(20) NOT NULL,
  `boarding_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`scheduleno`, `sc_start_date`, `sc_end_date`, `cruisename`, `boarding_time`) VALUES
(1, '12/12/2022', '12/12/2022', 'Mumbai-Goa', '9.30 Am'),
(2, '12/12/2022', '14/12/2022', 'Goa', '10:00 Am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tbl_cancel`
--
ALTER TABLE `tbl_cancel`
  ADD PRIMARY KEY (`can_id`);

--
-- Indexes for table `tbl_cruise`
--
ALTER TABLE `tbl_cruise`
  ADD PRIMARY KEY (`cruise_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`scheduleno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cancel`
--
ALTER TABLE `tbl_cancel`
  MODIFY `can_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cruise`
--
ALTER TABLE `tbl_cruise`
  MODIFY `cruise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `acid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `scheduleno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
