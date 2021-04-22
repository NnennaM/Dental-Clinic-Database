-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 01:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_clinic_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `APPOINTMENT_ID` int(10) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `TREATMENT_ID` int(10) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`APPOINTMENT_ID`, `PATIENT_ID`, `DATE`, `TIME`, `TREATMENT_ID`, `STATUS`) VALUES
(210000, 5, '2021-01-22', '12:30:00', 10008, 'CONFIRMED'),
(210001, 1, '2021-01-22', '11:00:00', 10001, 'NOT  CONFIRMED'),
(210002, 4, '2021-01-22', '13:30:00', 10001, 'CANCELLED'),
(210003, 6, '2021-01-23', '15:30:00', 10008, 'CONFIRMED'),
(210004, 20, '2021-02-21', '09:00:00', 10005, 'NOT  CONFIRMED'),
(210005, 16, '2021-02-21', '09:30:00', 10004, 'CONFIRMED'),
(210006, 15, '2021-02-21', '10:00:00', 10004, 'CONFIRMED'),
(210007, 3, '2021-03-10', '09:00:00', 10005, 'CONFIRMED'),
(210008, 10, '2021-03-11', '09:00:00', 10005, 'NOT  CONFIRMED'),
(210009, 11, '2021-03-22', '10:30:00', 10007, 'NOT  CONFIRMED'),
(210010, 7, '2021-03-22', '11:00:00', 10010, 'CANCELLED'),
(210011, 10, '2021-03-23', '12:30:00', 10004, 'NOT  CONFIRMED'),
(210012, 13, '2021-03-24', '12:30:00', 10006, 'CONFIRMED'),
(210013, 8, '2021-03-25', '11:00:00', 10004, 'CANCELLED'),
(210014, 5, '2021-03-25', '13:30:00', 10001, 'NOT  CONFIRMED'),
(210015, 3, '2021-03-25', '15:30:00', 10005, 'CONFIRMED'),
(210016, 14, '2021-04-16', '09:30:00', 10005, 'NOT  CONFIRMED'),
(210017, 20, '2021-04-17', '09:00:00', 10001, 'CONFIRMED'),
(210018, 16, '2021-04-27', '09:30:00', 10008, 'NOT  CONFIRMED'),
(210019, 7, '2021-04-28', '09:00:00', 10008, 'CONFIRMED'),
(210020, 17, '2021-04-28', '10:30:00', 10002, 'NOT  CONFIRMED'),
(210021, 17, '2021-04-30', '11:00:00', 10001, 'NOT  CONFIRMED'),
(210022, 4, '2021-04-30', '12:30:00', 10007, 'CONFIRMED');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `INVOICE_ID` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `TREATMENT_COST` decimal(5,2) DEFAULT NULL,
  `CANCELLATION_FEE` decimal(5,2) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`INVOICE_ID`, `PATIENT_ID`, `TREATMENT_COST`, `CANCELLATION_FEE`, `TOTAL_COST`) VALUES
('INV_01', 5, '40.00', NULL, '40.00'),
('INV_02', 1, '50.00', NULL, '50.00'),
('INV_03', 4, '50.00', '10.00', '60.00'),
('INV_04', 6, '40.00', NULL, '40.00'),
('INV_05', 20, '100.00', NULL, '100.00'),
('INV_06', 16, '250.00', NULL, '250.00'),
('INV_07', 15, '250.00', NULL, '250.00'),
('INV_08', 3, '100.00', NULL, '100.00'),
('INV_09', 10, '100.00', NULL, '100.00'),
('INV_10', 11, '75.00', NULL, '75.00'),
('INV_11', 10, '75.00', NULL, '75.00'),
('INV_12', 13, '70.00', NULL, '70.00'),
('INV_13', 8, '250.00', '10.00', '260.00'),
('INV_14', 5, '50.00', '10.00', '60.00'),
('INV_15', 3, '100.00', NULL, '100.00'),
('INV_16', 14, '100.00', NULL, '100.00'),
('INV_17', 20, '50.00', NULL, '50.00'),
('INV_18', 16, '40.00', NULL, '40.00'),
('INV_19', 7, '40.00', '10.00', '50.00'),
('INV_20', 17, '40.00', NULL, '40.00'),
('INV_21', 17, '50.00', NULL, '50.00'),
('INV_22', 4, '75.00', NULL, '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `firstName`, `lastName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1004, 'Diane', 'Mulcahy', 'x5800', 'drmulcahy@dentalclinic.com', '1', NULL, 'Dentist'),
(1075, 'Zoe', 'Smith', 'x5800', 'zsmith@dentalclinic.com', '1', 1004, 'Dental Nurse'),
(1076, 'Helen', 'Patterson', 'x9273', 'hpatterson@dentalclinic.com', '1', 1004, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `addressLine1`, `addressLine2`, `city`, `phone`, `postalCode`) VALUES
('1', '100 Market Street', NULL, 'Baltimore, Cork', '091333487', 'IE94P80');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_ID` int(10) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `DATE OF BIRTH` date DEFAULT NULL,
  `ADDRESS LINE 1` varchar(50) DEFAULT NULL,
  `ADDRESS LINE 2` varchar(50) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CASE_MANAGER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_ID`, `NAME`, `SURNAME`, `DATE OF BIRTH`, `ADDRESS LINE 1`, `ADDRESS LINE 2`, `PHONE`, `EMAIL`, `CASE_MANAGER`) VALUES
(1, 'Carine', 'Gustav', '1981-11-17', '55 Church Strand', 'Baltimore Cork', '0870009976', 'gustavcarine@ymail.com', 1004),
(2, 'Peter', 'Ferguson', '1981-05-01', '43 Harbour ct', 'Baltimore Cork', '0870134579', 'peter@ymail.com', 1004),
(3, 'Susan', 'Nelson', '1949-06-09', '22 Castle End', 'Baltimore Cork', '0872778890', 'susan@gmail.com', 1004),
(4, 'Julie', 'Murphy', '1975-04-02', '46 The Hill', 'Baltimore Cork', '0870529900', 'mjulie@gmail.com', NULL),
(5, 'Caroline', 'Fleming', '1980-09-20', '88 Cove Hill', 'Baltimore Cork', '0898873002', 'flemingc@ymail.com', 1004),
(6, 'Jeff', 'Young', '1976-02-12', '10 Freke Terrace', 'Baltimore Cork', '0870674321', 'jeffy@ymail.com', 1004),
(7, 'Wendy', 'Williams', '1944-05-14', '29 Freke Terrace', 'Baltimore Cork', '0870921534', 'wendyw@gmail.com', 1004),
(8, 'Victoria', 'Smith', '1970-06-19', '15 Castlefields', 'Baltimore Cork', '0850491227', 'smithvictoria@gmail.com', 1075),
(9, 'Keith', 'Powell', '1986-12-17', '16 Mariners Cove', 'Baltimore Cork', '0891706079', 'keith@ymail.com', NULL),
(10, 'Jane', 'Briggs', '1982-01-23', '59 Church Strand', 'Baltimore Cork', '0871244954', 'janebriggs@gmail.com', 1004),
(11, 'Chloe', 'Greenberg', '1992-12-09', '27 Cliff Estate', NULL, '0870555565', 'cgreenberg@ymail.com', 1004),
(12, 'Joe', 'Philips', '1990-03-13', '88 Cliff Estate', 'Baltimore Cork', '0872343488', 'joephilips@gmail.com', 1075),
(13, 'Patrick', 'Jones', '1989-08-31', '99 Castle End', 'Baltimore Cork', '0870127700', 'patjones@gmail.com', 1075),
(14, 'Imran', 'Ahktar', '1975-10-15', '49 The Hill', 'Baltimore Cork', '0870006784', 'imranahktar@ymail.com', 1004),
(15, 'Grace', 'Johnson', '1981-02-17', '86 Freke Terrace', 'Baltimore Cork', '0837053133', 'grace@gmail.com', NULL),
(16, 'Janet', 'Jackson', '1976-07-03', '13 Hill Estate', 'Baltimore Cork', '0899944225', 'jjackson@ymail.com', 1004),
(17, 'Kelly', 'Peters', '1995-06-01', '88 Cove Hill', 'Baltimore Cork', '0870620002', 'kellyp@gmail.com', 1004),
(18, 'Luke', 'Miller', '1993-03-18', '77 Hill Estate', 'Baltimore Cork', '0870252022', 'lmiller@gmail.com', 1004),
(19, 'Maria', 'Diego', '1986-06-12', '29 Mariners Cove', 'Baltimore Cork', '0877022220', 'mariadiego@gmail.com', 1004),
(20, 'Lucy', 'West', '1987-08-05', '11 Freke Terrace', 'Baltimore Cork', '0873501884', 'lucywest@ymail.com', 1075);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAYMENT_ID` varchar(15) NOT NULL,
  `INVOICE_ID` varchar(15) NOT NULL,
  `PAYMENT_TYPE` varchar(50) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL,
  `PAYMENT_STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAYMENT_ID`, `INVOICE_ID`, `PAYMENT_TYPE`, `TOTAL_COST`, `PAYMENT_STATUS`) VALUES
('PT_01', 'INV_01', 'CREDIT CARD', '40.00', 'PAID'),
('PT_02', 'INV_02', 'CREDIT CARD', '50.00', 'PAID'),
('PT_03', 'INV_03', 'CASH', '60.00', 'PAID'),
('PT_04', 'INV_04', 'CHEQUE', '40.00', 'PAID'),
('PT_05', 'INV_05', NULL, '100.00', 'NOT PAID'),
('PT_06', 'INV_06', 'CREDIT CARD', '250.00', 'PAID'),
('PT_07', 'INV_07', 'CASH', '250.00', 'PAID'),
('PT_08', 'INV_08', 'CREDIT CARD', '100.00', 'PAID'),
('PT_09', 'INV_09', 'CREDIT CARD', '100.00', 'PAID'),
('PT_10', 'INV_10', 'CREDIT CARD', '75.00', 'PAID'),
('PT_11', 'INV_11', 'CASH', '75.00', 'PAID'),
('PT_12', 'INV_12', 'CASH', '70.00', 'PAID'),
('PT_13', 'INV_13', 'CASH', '260.00', 'PAID'),
('PT_14', 'INV_14', NULL, '60.00', 'NOT PAID'),
('PT_15', 'INV_15', 'CHEQUE', '100.00', 'PAID'),
('PT_16', 'INV_16', 'CREDIT CARD', '100.00', 'PAID'),
('PT_17', 'INV_17', 'CREDIT CARD', '50.00', 'PAID'),
('PT_18', 'INV_18', 'CREDIT CARD', '40.00', 'PAID'),
('PT_19', 'INV_19', 'CASH', '50.00', 'PAID'),
('PT_20', 'INV_20', 'CREDIT CARD', '40.00', 'PAID'),
('PT_21', 'INV_21', 'CASH', '50.00', 'PAID'),
('PT_22', 'INV_22', 'CASH', '75.00', 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `SPECIALIST_REF` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `SPECIALIST_ID` varchar(15) NOT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`SPECIALIST_REF`, `PATIENT_ID`, `SPECIALIST_ID`, `DATE`, `TIME`) VALUES
('REF_01', 5, 'SID_01', '2021-01-22', '12:30:00'),
('REF_02', 6, 'SID_01', '2021-01-23', '15:30:00'),
('REF_03', 17, 'SID_01', '2021-05-17', '09:00:00'),
('REF_04', 20, 'SID_01', '2021-02-24', '09:30:00'),
('REF_05', 5, 'SID_02', '2021-02-24', '09:00:00'),
('REF_06', 16, 'SID_02', '2021-02-24', '11:00:00'),
('REF_07', 7, 'SID_03', '2021-02-24', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `SPECIALIST_ID` varchar(15) NOT NULL,
  `TREATMENT_ID` int(10) NOT NULL,
  `SPECIALIST_NAME` varchar(50) DEFAULT NULL,
  `SPECIALIST_ADDRESS` varchar(50) DEFAULT NULL,
  `CONTACT_NO` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialists`
--

INSERT INTO `specialists` (`SPECIALIST_ID`, `TREATMENT_ID`, `SPECIALIST_NAME`, `SPECIALIST_ADDRESS`, `CONTACT_NO`) VALUES
('SID_01', 10002, 'Dr.Healy', 'Cork City, Co.Cork', '091333487'),
('SID_02', 10003, 'Dr.Daly', 'Cobh, Co.Cork', '091443115'),
('SID_03', 10010, 'Dr.Gary', 'Ballincollig, Co.Cork', '091662229');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TREATMENT_ID` int(10) NOT NULL,
  `TREATMENT_TYPE` varchar(50) DEFAULT NULL,
  `TREATMENT_COST` decimal(5,2) DEFAULT NULL,
  `SPECIALIST_REQUIRED` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TREATMENT_ID`, `TREATMENT_TYPE`, `TREATMENT_COST`, `SPECIALIST_REQUIRED`) VALUES
(10001, 'Routine Dental Check Ups', '50.00', 'NO'),
(10002, 'Invisalign', '999.99', 'YES'),
(10003, 'Veneers', '999.99', 'YES'),
(10004, 'Cosmetic Fillings', '250.00', 'NO'),
(10005, 'Root Canal Treatment', '100.00', 'NO'),
(10006, 'Wisdom Teeth Removal', '70.00', 'NO'),
(10007, 'Dental Hygienist', '75.00', 'NO'),
(10008, 'Consultation & Treatment Plan', '40.00', 'NO'),
(10009, 'Implants', '200.00', 'NO'),
(10010, 'Dentures', '600.00', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`APPOINTMENT_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `TREATMENT_ID` (`TREATMENT_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `TREATMENT_COST` (`TREATMENT_COST`,`TOTAL_COST`),
  ADD KEY `Bill_DC_2` (`PATIENT_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `reportsTo` (`reportsTo`),
  ADD KEY `officeCode` (`officeCode`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENT_ID`),
  ADD KEY `CASE_MANAGER` (`CASE_MANAGER`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`,`TOTAL_COST`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`SPECIALIST_REF`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `SPECIALIST_ID` (`SPECIALIST_ID`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`SPECIALIST_ID`),
  ADD KEY `TREATMENT_ID` (`TREATMENT_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TREATMENT_ID`),
  ADD KEY `TREATMENT_COST` (`TREATMENT_COST`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appT_DC_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`),
  ADD CONSTRAINT `appT_DC_2` FOREIGN KEY (`TREATMENT_ID`) REFERENCES `treatment` (`TREATMENT_ID`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Bill_DC_1` FOREIGN KEY (`TREATMENT_COST`) REFERENCES `treatment` (`TREATMENT_COST`),
  ADD CONSTRAINT `Bill_DC_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_DC_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  ADD CONSTRAINT `employees_DC_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patients_DC_1` FOREIGN KEY (`CASE_MANAGER`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `Pay_DC_1` FOREIGN KEY (`INVOICE_ID`) REFERENCES `bill` (`INVOICE_ID`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `SpecREF_DC_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`),
  ADD CONSTRAINT `SpecREF_DC_2` FOREIGN KEY (`SPECIALIST_ID`) REFERENCES `specialists` (`SPECIALIST_ID`);

--
-- Constraints for table `specialists`
--
ALTER TABLE `specialists`
  ADD CONSTRAINT `Spec_DC_1` FOREIGN KEY (`TREATMENT_ID`) REFERENCES `treatment` (`TREATMENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
