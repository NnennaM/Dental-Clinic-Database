--

-- Database: `dental_clinic_database`

--

--
-- Queries for Dental Clinic Database (CREATE ,INSERT, SELECT, UPDATE, DELETE)
-- 

-- --------------------------------------------------------


--
-- CREATE
--


CREATE TABLE `PATIENT` (
  `PATIENT_ID` int(10) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `DATE OF BIRTH` DATE DEFAULT NULL,
  `ADDRESS LINE 1` varchar(50) DEFAULT NULL,
  `ADDRESS LINE 2` varchar(50) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CASE_MANAGER` int(11) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `APPOINTMENT`(
  `APPOINTMENT_ID` int(10) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL ,
  `DATE` DATE NOT NULL,
  `TIME` TIME NOT NULL,
  `TREATMENT_ID` int(10) NOT NULL ,
  `STATUS` varchar(50) DEFAULT NULL
  
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `TREATMENT` (
  `TREATMENT_ID` int(10) NOT NULL,
  `TREATMENT_TYPE` varchar(50) DEFAULT NULL,
  `TREATMENT_COST` decimal(5,2) DEFAULT NULL,
  `SPECIALIST_REQUIRED` varchar(10) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `SPECIALISTS` (
  `SPECIALIST_ID` varchar(15) NOT NULL,
  `TREATMENT_ID` int(10) NOT NULL ,
  `SPECIALIST_NAME` varchar(50) DEFAULT NULL ,
  `SPECIALIST_ADDRESS` varchar(50) DEFAULT NULL,
  `CONTACT_NO` varchar(13) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `REFERRALS` (
  `SPECIALIST_REF` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `SPECIALIST_CODE` varchar(15) NOT NULL,
  `DATE` DATE DEFAULT NULL,
  `TIME` TIME DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `BILL` (
  `INVOICE_ID` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL ,
  `TREATMENT_COST` decimal(5,2) DEFAULT NULL,
  `CANCELLATION_FEE` decimal(5,2) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `PAYMENT` (
  `PAYMENT_ID` varchar(15) NOT NULL,
  `INVOICE_ID` varchar(15) NOT NULL,
  `PAYMENT_TYPE` varchar(50) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL,
  `PAYMENT_STATUS` varchar(50) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `EMPLOYEES` (
  `employeeNumber` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- INSERT
--


INSERT INTO `patient` (`PATIENT_ID`, `NAME`, `SURNAME`, `DATE OF BIRTH`, `ADDRESS LINE 1`, `ADDRESS LINE 2`, `PHONE`, `EMAIL`,`CASE_MANAGER` ) VALUES
(01, 'Carine', 'Gustav','1981-11-17','55 Church Strand', 'Baltimore Cork', '0870009976', 'gustavcarine@ymail.com', 1004), 
(02, 'Peter', 'Ferguson','1981-05-01','43 Harbour ct', 'Baltimore Cork', '0870134579', 'peter@ymail.com', 1004),
(03, 'Susan', 'Nelson','1949-06-09','22 Castle End', 'Baltimore Cork', '0872778890', 'susan@gmail.com', 1004), 
(04, 'Julie', 'Murphy','1975-04-02','46 The Hill', 'Baltimore Cork', '0870529900', 'mjulie@gmail.com', NULL),
(05, 'Caroline', 'Fleming','1980-09-20','88 Cove Hill', 'Baltimore Cork', '0898873002', 'flemingc@ymail.com', 1004),
(06, 'Jeff', 'Young','1976-02-12','10 Freke Terrace', 'Baltimore Cork', '0870674321', 'jeffy@ymail.com', 1004),
(07, 'Wendy', 'Williams','1944-05-14','29 Freke Terrace', 'Baltimore Cork', '0870921534', 'wendyw@gmail.com', 1004),
(08, 'Victoria', 'Smith','1970-06-19','15 Castlefields', 'Baltimore Cork', '0850491227', 'smithvictoria@gmail.com', 1075),
(09, 'Keith', 'Powell','1986-12-17','16 Mariners Cove', 'Baltimore Cork', '0891706079', 'keith@ymail.com', NULL),
(10, 'Jane', 'Briggs','1982-01-23','59 Church Strand', 'Baltimore Cork', '0871244954', 'janebriggs@gmail.com', 1004),
(11, 'Chloe', 'Greenberg','1992-12-09','27 Cliff Estate', NULL, '0870555565', 'cgreenberg@ymail.com', 1004),
(12, 'Joe', 'Philips','1990-03-13','88 Cliff Estate', 'Baltimore Cork', '0872343488', 'joephilips@gmail.com', 1075),
(13, 'Patrick', 'Jones','1989-08-31','99 Castle End', 'Baltimore Cork', '0870127700', 'patjones@gmail.com', 1075),
(14, 'Imran', 'Ahktar','1975-10-15','49 The Hill', 'Baltimore Cork', '0870006784', 'imranahktar@ymail.com', 1004),
(15, 'Grace', 'Johnson','1981-02-17','86 Freke Terrace', 'Baltimore Cork', '0837053133', 'grace@gmail.com', NULL),
(16, 'Janet', 'Jackson','1976-07-03','13 Hill Estate', 'Baltimore Cork', '0899944225', 'jjackson@ymail.com',1004),
(17, 'Kelly', 'Peters','1995-06-01','88 Cove Hill', 'Baltimore Cork', '0870620002', 'kellyp@gmail.com', 1004),
(18, 'Luke', 'Miller','1993-03-18','77 Hill Estate', 'Baltimore Cork', '0870252022', 'lmiller@gmail.com', 1004),
(19, 'Maria', 'Diego','1986-06-12','29 Mariners Cove', 'Baltimore Cork', '0877022220', 'mariadiego@gmail.com', 1004),
(20, 'Lucy', 'West','1987-08-05','11 Freke Terrace', 'Baltimore Cork', '0873501884', 'lucywest@ymail.com', 1075);


INSERT INTO `appointment` (`APPOINTMENT_ID`, `PATIENT_ID`,  `DATE`, `TIME`, `TREATMENT_ID`, `STATUS`) VALUES
(210000, 05, '2021-01-22', '12:30', 10008, 'CONFIRMED'), 
(210001, 01, '2021-01-22', '11:00', 10001,'NOT  CONFIRMED'),
(210002, 04, '2021-01-22', '13:30', 10001, 'CANCELLED'), 
(210003, 06, '2021-01-23', '15:30', 10008, 'CONFIRMED'),
(210004, 20, '2021-02-21', '09:00', 10005, 'NOT  CONFIRMED'),
(210005, 16, '2021-02-21', '09:30', 10004, 'CONFIRMED'),
(210006, 15, '2021-02-21', '10:00', 10004, 'CONFIRMED'),
(210007, 03, '2021-03-10', '09:00', 10005, 'CONFIRMED'),
(210008, 10, '2021-03-11', '09:00', 10005, 'NOT  CONFIRMED'),
(210009, 11, '2021-03-22', '10:30', 10007, 'NOT  CONFIRMED'),
(210010, 07, '2021-03-22', '11:00', 10010, 'CANCELLED'),
(210011, 10, '2021-03-23', '12:30', 10004, 'NOT  CONFIRMED'),
(210012, 13, '2021-03-24', '12:30', 10006, 'CONFIRMED'), 
(210013, 08, '2021-03-25', '11:00', 10004, 'CANCELLED'),
(210014, 05, '2021-03-25', '13:30', 10001, 'NOT  CONFIRMED'), 
(210015, 03, '2021-03-25', '15:30', 10005, 'CONFIRMED'),
(210016, 14, '2021-04-16', '09:30', 10005, 'NOT  CONFIRMED'),
(210017, 20, '2021-04-17', '09:00', 10001, 'CONFIRMED'),
(210018, 16, '2021-04-27', '09:30', 10008, 'NOT  CONFIRMED'),
(210019, 07, '2021-04-28', '09:00', 10008, 'CONFIRMED'),
(210020, 17, '2021-04-28', '10:30', 10002, 'NOT  CONFIRMED'),
(210021, 17, '2021-04-30', '11:00', 10001, 'NOT  CONFIRMED'),
(210022, 04, '2021-04-30', '12:30', 10007, 'CONFIRMED');

INSERT INTO `treatment`(`TREATMENT_ID`, `TREATMENT_TYPE`, `TREATMENT_COST`, `SPECIALIST_REQUIRED`) VALUES 
(10001, 'Routine Dental Check Ups', 50.00, 'NO'),
(10002, 'Invisalign',999.99,'YES'), 
(10003, 'Veneers', 999.99, 'YES'), 
(10004, 'Cosmetic Fillings', 250.00, 'NO'), 
(10005, 'Root Canal Treatment', 100.00, 'NO'), 
(10006, 'Wisdom Teeth Removal', 70.00, 'NO'), 
(10007, 'Dental Hygienist', 75.00, 'NO'), 
(10008, 'Consultation & Treatment Plan', 40.00, 'NO'), 
(10009, 'Implants', 200.00, 'NO'), 
(10010, 'Dentures', 600.00, 'YES');

INSERT INTO `specialist`(`SPECIALIST_ID`, `TREATMENT_ID`, `SPECIALIST_NAME`, `SPECIALIST_ADDRESS`, `CONTACT_NO`) VALUES 
('SID_01', 10002, 'Dr.Healy','Cork City, Co.Cork','091333487'), 
('SID_02', 10003, 'Dr.Daly','Cobh, Co.Cork','091443115'), 
('SID_03', 10010, 'Dr.Gary','Ballincollig, Co.Cork','091662229');

INSERT INTO `referrals` (SPECIALIST_REF, PATIENT_ID, SPECIALIST_ID, DATE, TIME) VALUES 
('REF_01', 05, 'S_01', '2021-01-22', '12:30:00'),
('REF_02', 06, 'S_01', '2021-01-23', '15:30:00'),
('REF_03', 17, 'S_01', '2021-05-17', '09:00:00'),
('REF_04', 20, 'S_01', '2021-02-24', '09:30:00'),
('REF_05', 05, 'S_02', '2021-02-24', '09:00:00'),
('REF_06', 16, 'S_02', '2021-02-24', '11:00:00'),
('REF_07', 07, 'S_03', '2021-02-24', '09:00:00'),


INSERT INTO `bill` (INVOICE_ID, PATIENT_ID, TREATMENT_COST, CANCELLATION_FEE, TOTAL_COST) VALUES
('INV_01', 05, 40.00, NULL, 40.00),
('INV_02', 01, 50.00, NULL, 50.00),
('INV_03', 04, 50.00, 10.00, 60.00),
('INV_04', 06, 40.00, NULL, 40.00),
('INV_05', 20, 100.00, NULL, 100.00),
('INV_06', 16, 250.00, NULL, 250.00),
('INV_07', 15, 250.00, NULL, 250.00),
('INV_08', 03, 100.00, NULL, 100.00),
('INV_09', 10, 100.00, NULL, 100.00),
('INV_10', 11, 75.00, NULL, 75.00),
('INV_11', 10, 75.00, NULL, 75.00),
('INV_12', 13, 70.00, NULL, 70.00),
('INV_13', 08, 250.00, 10.00, 260.00),
('INV_14', 05, 50.00, 10.00, 60.00),
('INV_15', 03, 100.00, NULL, 100.00),
('INV_16', 14, 100.00, NULL, 100.00),
('INV_17', 20, 50.00, NULL, 50.00),
('INV_18', 16, 40.00, NULL, 40.00),
('INV_19', 07, 40.00, 10.00, 50.00),
('INV_20', 17, 40.00, NULL, 40.00);
('INV_21', 17, 50.00, NULL, 50.00);
('INV_22', 04, 75.00, NULL, 75.00);

INSERT INTO `payment` (`PAYMENT_ID`, `INVOICE_ID`, `PAYMENT_TYPE`, `TOTAL_COST`, `PAYMENT_STATUS`) VALUES
('PT_01', 'INV_01', 'CREDIT CARD', '40.00', 'PAID'),
('PT_02', 'INV_02', 'CREDIT CARD', '50.00', 'PAID'),
('PT_03', 'INV_03', 'CASH', '60.00', 'PAID'),
('PT_04', 'INV_04', 'CHEQUE', '40.00', 'PAID'),
('PT_05', 'INV_05',  NULL, '100.00', 'NOT PAID'),
('PT_06', 'INV_06', 'CREDIT CARD', '250.00', 'PAID'),
('PT_07', 'INV_07', 'CASH', '250.00', 'PAID'),
('PT_08', 'INV_08', 'CREDIT CARD', '100.00', 'PAID'),
('PT_09', 'INV_09', 'CREDIT CARD', '100.00', 'PAID'),
('PT_10', 'INV_10', 'CREDIT CARD', '75.00', 'PAID'),
('PT_11', 'INV_11', 'CASH', '75.00', 'PAID'),
('PT_12', 'INV_12', 'CASH', '70.00', 'PAID'),
('PT_13', 'INV_13', 'CASH', '260.00', 'PAID'),
('PT_14', 'INV_14',  NULL, '60.00', 'NOT PAID'),
('PT_15', 'INV_15', 'CHEQUE', '100.00', 'PAID'),
('PT_16', 'INV_16', 'CREDIT CARD', '100.00', 'PAID'),
('PT_17', 'INV_17', 'CREDIT CARD', '50.00', 'PAID'),
('PT_18', 'INV_18', 'CREDIT CARD', '40.00', 'PAID'),
('PT_19', 'INV_19', 'CASH', '50.00', 'PAID'),
('PT_20', 'INV_20', 'CREDIT CARD', '40.00', 'PAID'),
('PT_21', 'INV_21', 'CASH', '50.00', 'PAID'),
('PT_22', 'INV_22', 'CASH', '75.00', 'PAID');

INSERT INTO `APPOINTMENT` (210021, 05,'2021-04-29','11:00', 10001, 'CONFIRMED');
INSERT INTO `APPOINTMENT` (210022, 01,'2021-04-29','12:30', 10001, 'CONFIRMED');


INSERT INTO `employees` (`employeeNumber`,`firstName`,`lastName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1004, 'Diane', 'Mulcahy', 'x5800', 'drmulcahy@dentalclinic.com', '1', NULL, 'Dentist'),
(1075, 'Zoe', 'Smith', 'x5800', 'zsmith@dentalclinic.com', '1', 1004, 'Dental Nurse'),
(1076, 'Helen', 'Patterson', 'x9273', 'hpatterson@dentalclinic.com', '1', 1004, 'Administrator');



INSERT INTO `offices` (`officeCode`,`addressLine1`, `addressLine2`, `city`, `phone`, `postalCode`) VALUES
('1','100 Market Street', NULL, 'Baltimore, Cork', '091333487',  'IE94P80');


-- --------------------------------------------------------

--
-- SELECT - is used to select data from a database.
--

SELECT * FROM `appointment`;

SELECT INVOICE_ID, TREATMENT_COST from bill;

SELECT * from patient where PATIENT_ID = 05;

SELECT PATIENT_ID , INVOICE_ID from bill where TOTAL_COST between 100.00 and 250.00;

SELECT PATIENT_ID , INVOICE_ID, TOTAL_COST from bill where CANCELLATION_FEE!= 'NULL'; 
SELECT PATIENT_ID, DATE, TREATMENT_ID from appointment where STATUS != 'NOT CONFIRMED';

SELECT Max(TOTAL_COST), NAME, SURNAME FROM patient, bill where patient.PATIENT_ID = bill.PATIENT_ID;

SELECT NAME, SURNAME, PHONE FROM patient WHERE CASE_MANAGER is NULL ORDER BY NAME;


-- --------------------------------------------------------


--
-- UPDATE - is used to modify the existing records in a table.
--


update appointment
set TIME = '11:00'
where APPOINTMENT_ID = 210021 ;

update patient
set PHONE = '0898873002'
where PATIENT_ID = 05;

update specialists
set SPECIALIST_ADDRESS = 'Ballincollig, Co.Cork'
where SPECIALIST_ID = 'SID_03' ;


-- --------------------------------------------------------


--
-- DELETE - is used to delete any records that exist in a table.
--


delete from patient
where PATIENT_ID = 21;

delete from patient_history;

delete from treatment
where TREATMENT_ID = 10011;

DELETE from employees 
where employeeNumber = 1077;

