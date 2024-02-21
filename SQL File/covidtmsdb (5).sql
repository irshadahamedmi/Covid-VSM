-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 10:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', '1', NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 1234567890, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `VaccineCenter` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext DEFAULT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `VaccineCenter`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(16, 376533564, NULL, 'mohammed afraj', 702798648, 'mohammedafraj1@gmail.com', '2022-07-17', '1 p.m', NULL, 'Colombo\r\n', 'Post Wedding', 'jhjh', '2022-07-07 18:51:03', 'not okay', 'Cancelled', '2022-07-07 18:52:51'),
(17, 577346430, NULL, 'fazan', 5465464564, 'fazan@gmail.com', '2022-07-20', '10 a.m', NULL, 'Colombo\r\n', 'Pfizer', 'jcosidij', '2022-07-07 19:00:30', 'okay', 'Approved', '2022-07-07 19:20:07'),
(18, 279306139, NULL, 'mohammed afraj', 5465464564, 'mohammedafraj1@gmail.com', '2022-07-23', '1 p.m', 'DS Senanayaka College Colombo', 'Colombo\r\n', 'Moderna', 'cdvcv', '2022-07-07 19:11:55', '1st dose', 'Approved', '2022-07-08 18:08:20'),
(19, 564125656, NULL, 'mohammed afraj', 5465464564, 'mohammedafraj1@gmail.com', '2022-07-29', '12 p.m', 'MOH Puttalam', 'Colombo\r\n', 'Sinopharm', 'hkjhk', '2022-07-07 20:00:59', 'oki', 'Approved', '2022-07-08 18:15:56'),
(20, 506945563, NULL, 'Afraj', 702798648, 'mohammedafraj1@gmail.com', '2022-07-24', '5 a.m', 'MOH Puttalam', 'Colombo\r\n', 'Sinopharm', '1st dose', '2022-07-09 06:48:57', NULL, NULL, NULL),
(21, 670647215, NULL, 'mohammed afraj', 702798648, 'mohammedafraj1@gmail.com', '2022-07-15', '2 p.m', 'DS Senanayaka College Colombo', 'Colombo\r\n', 'Sinopharm', 'ji', '2022-07-09 06:57:15', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Pfizer', '2022-01-22 07:01:39'),
(2, 'Sinopharm', '2022-01-22 07:02:34'),
(3, 'Moderna', '2022-01-22 07:02:43'),
(4, 'Astrazeneca', '2022-01-22 07:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblgs`
--

CREATE TABLE `tblgs` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NIC` varchar(15) DEFAULT NULL,
  `Area` varchar(55) DEFAULT NULL,
  `District` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgs`
--

INSERT INTO `tblgs` (`id`, `EmpID`, `FullName`, `MobileNumber`, `Email`, `NIC`, `Area`, `District`, `password`, `RegDate`) VALUES
(13, '12345', 'Thahzeen', 789456123, 'NPTMC@gmail.com', '971761325V', 'Pottuvil', 'Kandy', '123', '2022-07-09 10:50:50'),
(15, '159', 'mohammed afraj', 7027986473, 'mohammedafraj1@gmail.com', '971761326V', 'Puttalam', 'Puttalam', NULL, '2022-07-09 10:53:40'),
(16, '122324', 'As', 123456789, 'mohammedafraj123@gmail.com', '964582613V', 'Kalpitya', 'Puttalam', '', '2022-07-09 11:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblmoh`
--

CREATE TABLE `tblmoh` (
  `ID` int(11) NOT NULL,
  `EmpId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NIC` varchar(15) DEFAULT NULL,
  `Area` varchar(55) DEFAULT NULL,
  `District` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmoh`
--

INSERT INTO `tblmoh` (`ID`, `EmpId`, `FullName`, `MobileNumber`, `Email`, `NIC`, `Area`, `District`, `password`, `RegDate`) VALUES
(4, '123', 'Afraj', 702798648, 'mohammedafraj1@gmail.com', '971761326V', 'Puttalam', 'Colombo', '1234', '2022-07-02 19:22:52'),
(5, '124', 'Jhon', 702798542, 'jhon@gmail.com', '958674123V', 'Kalpitya', 'Puttalam', '', '2022-07-03 06:46:50'),
(6, '125', 'jack', 758964123, 'jack@gmail.com', '964582613V', 'grandpass', 'Colombo', NULL, '2022-07-03 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(1, 'Anuj kumar', 1234567890, '1999-02-01', 'Driving License', '342545445345', 'A83748 New Delhi India', 'Delhi', '2021-04-27 17:31:22'),
(2, 'Sarita', 6547893210, '1990-05-09', 'Pancard', 'HHHGHGH8888jh', 'H 826273 Noida', 'Uttar Pradesh', '2021-04-27 18:04:57'),
(4, 'Garima Singh', 4598520125, '2005-01-08', 'Pancard', 'DDDKJKJ454545H', 'A-1234 Patna', 'Bihar', '2021-05-08 05:49:44'),
(5, 'Amit Singh', 2536987410, '2007-06-01', 'PANCARD', 'HJGGHG76767HGGH', 'H 37334 New Delhi', 'Delhi', '2021-05-08 09:25:50'),
(6, 'Rahul Yadav', 1234567899, '2003-06-05', 'Driving License', '5435345', 'ABC 123 XYZ Street Noida', 'Uttar Pradesh', '2021-05-08 09:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(1, 450040675, 'The Phlebotomist is on the way for collection.', 'On the Way for Collection', '2021-05-06 04:36:22', 2),
(6, 450040675, 'Sample collection.', 'Sample Collected', '2021-05-06 19:15:25', 2),
(7, 450040675, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-06 19:15:48', 2),
(9, 450040675, 'Report uploaded.', 'Delivered', '2021-05-06 20:01:48', 2),
(10, 617325549, 'The phlebotomist is on the way to sample collection.', 'On the Way for Collection', '2021-05-07 04:44:38', 2),
(11, 617325549, 'Sample collected successfully.', 'Sample Collected', '2021-05-07 04:46:46', 2),
(12, 617325549, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-07 04:51:25', 2),
(13, 617325549, 'Report uploaded.', 'Delivered', '2021-05-07 04:57:20', 2),
(14, 250482553, 'On the way for sample collection.', 'On the Way for Collection', '2021-05-08 09:31:42', 2),
(15, 250482553, 'Sample collected successfully', 'Sample Collected', '2021-05-08 09:32:06', 2),
(16, 250482553, 'Sample sent to lab', 'Sent to Lab', '2021-05-08 09:32:26', 2),
(17, 250482553, 'Report Uploaded', 'Delivered', '2021-05-08 09:32:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Party decorations', 'we finish designing 4 hours  before your ceremony .', '8000', '2022-01-24 07:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '700', '2022-01-24 07:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '650', '2022-01-24 07:19:14'),
(4, 'Photo Booth Hire', 'we install the DJ equipment before your ceremony ', '500', '2022-01-24 07:19:51'),
(6, 'Uplighters', 'Uplighters are bright lighting fixtures which are installed on the floor and shine a vibrant wash of colour over the walls of your venue', '200', '2022-01-24 07:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(1, 450040675, 1234567890, 'Antigen', '2021-05-01T04:05', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620331308.pdf', '07-05-2021 01:31:48 AM', '2021-04-27 17:31:23', '12587493', 'Amit Singh', '06-05-2021 10:05:22 AM'),
(2, 617325549, 6547893210, 'RT-PCR', '2021-05-01T05:10', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620363440.pdf', '07-05-2021 10:27:20 AM', '2021-04-27 18:04:58', '105202365', 'Rahul', '07-05-2021 10:13:41 AM'),
(4, 740138296, 1234567890, 'RT-PCR', '2021-05-05T14:40', 'Assigned', NULL, NULL, '2021-04-27 19:10:30', '105202365', 'Rahul', '07-05-2021 03:52:05 PM'),
(5, 716060226, 4598520125, 'CB-NAAT', '2021-05-15T14:22', NULL, NULL, NULL, '2021-05-08 05:49:46', NULL, NULL, NULL),
(6, 599452326, 2536987410, 'CB-NAAT', '2021-05-20T19:00', NULL, NULL, NULL, '2021-05-08 09:25:50', NULL, NULL, NULL),
(7, 250482553, 1234567899, 'Antigen', '2021-05-11T15:00', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620466371.pdf', '08-05-2021 03:02:51 PM', '2021-05-08 09:29:22', '12587493', 'Amit Singh', '08-05-2021 03:00:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(55) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `username`, `email`, `password`) VALUES
(0, 'afraj123', 'mohammedafraj123@gmail.com', '202cb962ac59075b964b07152d234b70'),
(1, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Bhathu', 'bhathu123@gmail.com', '050248cd2efad770e194ca0e12d44264'),
(4, 'Mala', 'mala@gmail.com', '038cd328c936d030e5553d18a3b4596a'),
(5, 'thushi', 'thushi@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(6, 'Nila', 'nila123@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(7, 'Danial', 'danial@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(9, 'Vithu', 'vithu123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Vimal', 'vimal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 'Gejanni', 'geja12@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(12, 'Viamala', 'vimala@gmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'Kamal', 'kamal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'Sharmila', 'sharmila@gmail.com', '7812e8b74f6837fba66f86fe86688a2b'),
(15, 'Sumudhu', 'sumudhu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(17, 'Sangavi', 'sangavi@gmail.com', '3ff053be7dd2f0860d8199e9467db3e3'),
(19, 'Vithu12', 'vithu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(20, 'Danial12', 'danial12@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(21, 'Keerthana', 'keerthana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(24, 'Bhathusha', 'bhathu23@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccine`
--

CREATE TABLE `tblvaccine` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `mobilenumber` int(10) DEFAULT NULL,
  `nic` varchar(10) DEFAULT NULL,
  `district` varchar(55) DEFAULT NULL,
  `vaccinecenter` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvaccine`
--

INSERT INTO `tblvaccine` (`id`, `fullname`, `email`, `age`, `mobilenumber`, `nic`, `district`, `vaccinecenter`) VALUES
(1, 'mohammed afraj', 'mohammedafraj1@gmail.com', 25, 702798648, '971761326V', 'Puttalam', 'Moh');

-- --------------------------------------------------------

--
-- Table structure for table `tblvcenter`
--

CREATE TABLE `tblvcenter` (
  `ID` int(10) NOT NULL,
  `VaccineCenter` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvcenter`
--

INSERT INTO `tblvcenter` (`ID`, `VaccineCenter`, `CreationDate`) VALUES
(1, 'GH Vavuniya', '2022-01-22 07:01:39'),
(2, 'GH Colombo', '2022-01-22 07:02:34'),
(3, 'MOH Puttalam', '2022-01-22 07:02:43'),
(4, 'Teaching Hospital Vavuniya', '2022-01-22 07:03:00'),
(5, 'Diyatha Uyana Batharamulla', '2022-07-07 19:55:33'),
(6, 'DS Senanayaka College Colombo', '2022-07-07 19:56:16'),
(7, 'GH Puttalam', '2022-07-07 19:57:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblgs`
--
ALTER TABLE `tblgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmoh`
--
ALTER TABLE `tblmoh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblvaccine`
--
ALTER TABLE `tblvaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvcenter`
--
ALTER TABLE `tblvcenter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`VaccineCenter`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblgs`
--
ALTER TABLE `tblgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblmoh`
--
ALTER TABLE `tblmoh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvaccine`
--
ALTER TABLE `tblvaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvcenter`
--
ALTER TABLE `tblvcenter`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
