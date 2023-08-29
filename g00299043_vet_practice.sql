-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 03:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g00299043_vet_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressId` varchar(9) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `town` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `eircode` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressId`, `addressLine1`, `addressLine2`, `town`, `county`, `eircode`) VALUES
('add000001', 'Glenina Heights', 'Galway City', '', 'Galway', 'H91 YW8P'),
('add000002', '9 Quay Street', 'Galway City', '', 'Galway', 'H91 E7VW'),
('add000003', '15 Middle Street', 'Galway City', '', 'Galway', 'H91 K0RD'),
('add000004', '23 Woodquay', 'Galway City', '', 'Galway', 'H91 K0T3'),
('add000005', '3 Cross Street Lower', 'Galway City', '', 'Galway', 'H91 C6F7'),
('add000006', '6 Forster Street', 'Galway City', '', 'Galway', 'H91 VX7R'),
('add000007', '18 Sea Road', 'Galway City', '', 'Galway', 'H91 Y8NT'),
('add000008', '25 Upper Abbeygate Street', 'Galway City', '', 'Galway', 'H91 Y7PK'),
('add000009', '11 Quay Lane', 'Galway City', '', 'Galway', 'H91 EH7N'),
('add000010', '14 Mainguard Street', 'Galway City', '', 'Galway', 'H91 NHN2'),
('add000011', '12 Eyre Square', 'Galway City', '', 'Galway', 'H91 T1F5'),
('add000012', '8 Shop Street', 'Galway City', '', 'Galway', 'H91 R6RK'),
('add000013', '19 William Street West', 'Galway City', '', 'Galway', 'H91 FX76'),
('add000014', '4 St Francis Street', 'Galway City', '', 'Galway', 'H91 V1YY'),
('add000015', '17 Lombard Street', 'Galway City', '', 'Galway', 'H91 PYV0'),
('add000016', '22 Eyre Square', 'Galway City', '', 'Galway', 'H91 WN60'),
('add000017', '8 Dock Road', 'Galway City', '', 'Galway', 'H91 XH7V'),
('add000018', '12 Quay Street', 'Galway City', '', 'Galway', 'H91 Y3F3'),
('add000019', '20 Middle Street', 'Galway City', '', 'Galway', 'H91 K1W8'),
('add000020', '26 Woodquay', 'Galway City', '', 'Galway', 'H91 X6TN'),
('add000021', '4 Cross Street Upper', 'Galway City', '', 'Galway', 'H91 V6D7'),
('add000022', '8 Mainguard Street', 'Galway City', '', 'Galway', 'H91 V3C6'),
('add000023', '11 Augustine Street', 'Galway City', '', 'Galway', 'H91 Y8C5'),
('add000024', '16 Dominick Street Upper', 'Galway City', '', 'Galway', 'H91 PTW8');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `AnimalID` varchar(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Species` varchar(255) NOT NULL,
  `Breed` varchar(255) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `OwnerID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`AnimalID`, `Name`, `Species`, `Breed`, `DateOfBirth`, `Diagnosis`, `OwnerID`) VALUES
('ani00000001', 'Mia', 'Dog', 'Golden Retriever', '2015-06-12', 'Arthritis', 'own00000003'),
('ani00000002', 'Mittens', 'Cat', 'Siamese', '2019-03-20', 'Feline Leukemia', 'own00000005'),
('ani00000003', 'Dolly', 'Sheep', 'Merino', '2018-01-05', 'Pneumonia', 'own00000004'),
('ani00000004', 'Rusty', 'Horse', 'Quarter Horse', '2012-09-15', 'Laminitis', 'own00000006'),
('ani00000005', 'Bessie', 'Cow', 'Holstein', '2016-05-01', 'Mastitis', 'own00000011'),
('ani00000006', 'Fluffy', 'Cat', 'Persian', '2017-11-10', 'Kidney Disease', 'own00000012'),
('ani00000007', 'Lassie', 'Dog', 'Collie', '2014-07-23', 'Heartworm', 'own00000002'),
('ani00000008', 'Moo', 'Cow', 'Jersey', '2019-02-14', 'Bloat', 'own00000009'),
('ani00000009', 'Blackie', 'Horse', 'Thoroughbred', '2013-12-02', 'Colic', 'own00000007'),
('ani00000010', 'Fido', 'Dog', 'Chihuahua', '2016-09-30', 'Fleas', 'own00000001'),
('ani00000011', 'Lucky', 'Cat', 'Maine Coon', '2014-04-18', 'Upper Respiratory Infection', 'own00000008'),
('ani00000012', 'Buddy', 'Dog', 'Labrador Retriever', '2018-07-08', 'Hip Dysplasia', 'own00000002'),
('ani00000013', 'Nala', 'Cat', 'Tabby', '2020-02-01', 'Ringworm', 'own00000001'),
('ani00000014', 'Molly', 'Sheep', 'Dorper', '2019-11-12', 'Scrapie', 'own00000004'),
('ani00000015', 'Rosie', 'Horse', 'Arabian', '2015-04-26', 'Navicular Disease', 'own00000010'),
('ani00000016', 'Daisy', 'Cow', 'Angus', '2017-10-09', NULL, 'own00000015'),
('ani00000017', 'Whiskers', 'Cat', 'Russian Blue', '2016-02-14', NULL, 'own00000013'),
('ani00000018', 'Bella', 'Dog', 'French Bulldog', '2013-09-17', NULL, 'own00000014'),
('ani00000019', 'Lily', 'Sheep', 'Jacob', '2014-12-23', NULL, 'own00000004'),
('ani00000020', 'Smokey', 'Horse', 'Appaloosa', '2016-08-30', NULL, 'own00000010');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` varchar(11) NOT NULL,
  `AppDate` date NOT NULL,
  `AppTime` time NOT NULL,
  `OwnerID` varchar(11) DEFAULT NULL,
  `AnimalID` varchar(11) DEFAULT NULL,
  `Symptom` varchar(255) DEFAULT NULL,
  `treatCode` varchar(8) DEFAULT NULL,
  `StaffID` varchar(11) NOT NULL,
  `statCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `AppDate`, `AppTime`, `OwnerID`, `AnimalID`, `Symptom`, `treatCode`, `StaffID`, `statCode`) VALUES
('app00000001', '2023-04-15', '09:05:00', 'own00000003', 'ani00000001', 'Limp', 'treat001', 'stf001', 'STA05'),
('app00000002', '2023-04-16', '10:00:00', 'own00000005', 'ani00000002', 'Loss of appetite', 'treat010', 'stf002', 'STA05'),
('app00000003', '2023-04-17', '14:30:00', 'own00000004', 'ani00000003', 'nasal discharge', 'treat003', 'stf003', 'STA05'),
('app00000004', '2023-04-18', '11:45:00', 'own00000006', 'ani00000004', 'Lameness', 'treat005', 'stf004', 'STA05'),
('app00000005', '2023-04-19', '09:30:00', 'own00000011', 'ani00000005', 'reduction in milk yield', 'treat001', 'stf005', 'STA05'),
('app00000006', '2023-04-20', '09:00:00', 'own00000012', 'ani00000006', 'bad breath', 'treat006', 'stf001', 'STA05'),
('app00000007', '2023-04-20', '16:05:00', 'own00000002', 'ani00000007', 'weight loss', 'treat001', 'stf002', 'STA05'),
('app00000008', '2023-04-21', '13:05:00', 'own00000009', 'ani00000008', 'discomfort', 'treat009', 'stf003', 'STA05'),
('app00000009', '2023-04-21', '14:25:00', 'own00000007', 'ani00000009', 'Biting', 'treat003', 'stf004', 'STA05'),
('app00000010', '2023-04-22', '18:00:00', 'own00000003', 'ani00000010', 'itching', 'treat001', 'stf005', 'STA04'),
('app00000011', '2023-04-23', '12:15:00', 'own00000008', 'ani00000011', 'breathing heavily', 'treat001', 'stf001', 'STA05'),
('app00000012', '2023-04-24', '15:55:00', 'own00000002', 'ani00000012', 'reluctant to climb stairs', 'treat001', 'stf001', 'STA05'),
('app00000013', '2023-04-24', '11:20:00', 'own00000001', 'ani00000013', 'crusty skin', 'treat003', 'stf004', 'STA05'),
('app00000014', '2023-04-25', '10:05:00', 'own00000004', 'ani00000014', 'Irritation', 'treat005', 'stf002', 'STA05'),
('app00000015', '2023-04-26', '14:25:00', 'own00000010', 'ani00000015', 'lameness', 'treat008', 'stf003', 'STA05'),
('app00000016', '2023-04-27', '15:00:00', 'own00000015', 'ani00000016', 'reduction in milk yield', 'treat001', 'stf005', 'STA02'),
('app00000017', '2023-04-28', '18:00:00', 'own00000013', 'ani00000017', 'diarrhoea', 'treat001', 'stf002', 'STA02'),
('app00000018', '2023-04-29', '13:35:00', 'own00000014', 'ani00000018', 'sneezing', 'treat001', 'stf001', 'STA06'),
('app00000019', '2023-04-30', '11:55:00', 'own00000004', 'ani00000019', 'Inflamed', 'treat005', 'stf003', 'STA02'),
('app00000020', '2023-05-01', '16:00:00', 'own00000010', 'ani00000020', 'swelling', 'treat001', 'stf006', 'STA02'),
('app00000021', '2023-05-02', '15:25:00', 'own00000002', 'ani00000012', 'Follow up', 'treat001', 'stf005', 'STA03'),
('app00000022', '2023-05-03', '10:45:00', 'own00000012', 'ani00000006', 'Follow up', 'treat001', 'stf001', 'STA03'),
('app00000023', '2023-05-03', '13:25:00', 'own00000002', 'ani00000007', 'Follow up', 'treat001', 'stf003', 'STA03'),
('app00000024', '2023-05-04', '12:05:00', 'own00000010', 'ani00000015', 'Follow up', 'treat001', 'stf001', 'STA03'),
('app00000025', '2023-05-05', '15:30:00', 'own00000005', 'ani00000002', 'Follow up', 'treat001', 'stf001', 'STA03'),
('app00000026', '2023-05-05', '16:30:00', NULL, NULL, NULL, NULL, 'stf003', 'STA01'),
('app00000027', '2023-05-06', '16:30:00', NULL, NULL, NULL, NULL, 'stf001', 'STA01'),
('app00000028', '2023-05-07', '16:30:00', NULL, NULL, NULL, NULL, 'stf002', 'STA01'),
('app00000029', '2023-05-08', '16:30:00', NULL, NULL, NULL, NULL, 'stf003', 'STA01');

-- --------------------------------------------------------

--
-- Table structure for table `appstatus`
--

CREATE TABLE `appstatus` (
  `statCode` varchar(5) NOT NULL,
  `Details` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appstatus`
--

INSERT INTO `appstatus` (`statCode`, `Details`) VALUES
('STA01', 'VACANT'),
('STA02', 'BOOKED'),
('STA03', 'CONFIRMED'),
('STA04', 'CANCELLED'),
('STA05', 'ATTENDED'),
('STA06', 'LATECANCELLATION');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billNumber` varchar(10) NOT NULL,
  `billTotal` decimal(10,2) NOT NULL,
  `payNumber` varchar(9) DEFAULT NULL,
  `OwnerID` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billNumber`, `billTotal`, `payNumber`, `OwnerID`) VALUES
('bill000001', '45.00', 'pay000001', 'own00000003'),
('bill000002', '600.00', 'pay000002', 'own00000005'),
('bill000003', '50.00', 'pay000003', 'own00000004'),
('bill000004', '200.00', 'pay000004', 'own00000006'),
('bill000005', '45.00', 'pay000005', 'own00000011'),
('bill000006', '150.00', 'pay000006', 'own00000012'),
('bill000007', '45.00', 'pay000007', 'own00000002'),
('bill000008', '500.00', 'pay000008', 'own00000009'),
('bill000009', '50.00', 'pay000009', 'own00000007'),
('bill000010', '45.00', 'pay000010', 'own00000003'),
('bill000011', '45.00', 'pay000011', 'own00000008'),
('bill000012', '100.00', 'pay000012', 'own00000001'),
('bill000013', '500.00', 'pay000013', 'own00000009'),
('bill000014', '50.00', 'pay000014', 'own00000002'),
('bill000015', '45.00', 'pay000015', 'own00000004'),
('bill000016', '50.00', 'pay000016', 'own00000001');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactCode` varchar(9) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactCode`, `email`, `phone`, `extension`) VALUES
('con000001', 'joe.od@gleninaheightsvets.ie', '+353852425777', '0001'),
('con000002', 'reception@gleninaheightsvets.ie', '+353852425778', '0002'),
('con000003', 'j.griffey@gleninaheightsvets.ie', '+353852425779', '0003'),
('con000004', 't.burke@gleninaheightsvets.ie', '+353852425780', '0004'),
('con000005', 'l.od@gleninaheightsvets.ie', '+353852425781', '0005'),
('con000006', 'k.od@gleninaheightsvets.ie', '+353852425782', '0006'),
('con000007', 'm.casey@gleninaheightsvets.ie', '+353852425783', '0007'),
('con000008', 'm.quinnlin@outlook.com', NULL, NULL),
('con000009', 'j.mcgrath@gmail.com', NULL, NULL),
('con000010', 'kevin.lynch@gmail.com', '+353832791811', NULL),
('con000011', NULL, '+353869874521', NULL),
('con000012', 's.murphy@gmail.com', '+353813456999', NULL),
('con000013', NULL, '+353865432198', NULL),
('con000014', NULL, '+353894785632', NULL),
('con000015', 's.casey@gmail.com', '+353872000900', NULL),
('con000016', 'eoinbarry@gmail.com', '+353892221095', NULL),
('con000017', NULL, '+353894785650', NULL),
('con000018', 'mark.foley@gmail.com', '+353875632111', NULL),
('con000019', 'ciara.quinn@gmail.com', '+353894012234', NULL),
('con000020', 'laura.casey@gmail.com', NULL, NULL),
('con000021', 'm.griffey@gmail.com', '+353898889087', NULL),
('con000022', NULL, '+353894785654', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `MedicationID` varchar(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Dosage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`MedicationID`, `Name`, `Dosage`) VALUES
('med00000001', 'Anti Inflamatories', '2'),
('med00000002', 'antibiotics', '1'),
('med00000003', 'Worm Tablets', '1'),
('med00000004', 'penicillin', '50mg'),
('med00000005', 'anesthetic', '50mg'),
('med00000006', 'anesthetic', '100mg'),
('med00000007', 'anesthetic', '150mg'),
('med00000008', 'tablets', '2'),
('med00000009', 'dental', '1'),
('med00000010', 'Respiratory', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payNumber` varchar(9) NOT NULL,
  `billNumber` varchar(10) NOT NULL,
  `OwnerID` varchar(11) NOT NULL,
  `payTypeID` varchar(4) DEFAULT NULL,
  `payAmount` decimal(10,2) NOT NULL,
  `payDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payNumber`, `billNumber`, `OwnerID`, `payTypeID`, `payAmount`, `payDate`) VALUES
('pay000001', 'bill000001', 'own00000003', 'pt02', '45.00', '2023-04-15'),
('pay000002', 'bill000002', 'own00000005', 'pt01', '600.00', '2023-04-16'),
('pay000003', 'bill000003', 'own00000004', 'pt02', '50.00', '2023-04-17'),
('pay000004', 'bill000004', 'own00000006', 'pt04', '200.00', '2023-04-18'),
('pay000005', 'bill000005', 'own00000011', 'pt03', '45.00', '2023-04-19'),
('pay000006', 'bill000006', 'own00000012', 'pt04', '150.00', '2023-04-20'),
('pay000007', 'bill000007', 'own00000002', 'pt01', '45.00', '2023-04-20'),
('pay000008', 'bill000008', 'own00000009', 'pt05', '500.00', '2023-04-21'),
('pay000009', 'bill000009', 'own00000007', 'pt02', '50.00', '2023-04-21'),
('pay000010', 'bill000010', 'own00000003', 'pt03', '45.00', '2023-04-22'),
('pay000011', 'bill000011', 'own00000008', 'pt04', '45.00', '2023-04-23'),
('pay000012', 'bill000012', 'own00000001', 'pt04', '100.00', '2023-04-24'),
('pay000013', 'bill000013', 'own00000009', 'pt05', '500.00', '2023-04-24'),
('pay000014', 'bill000014', 'own00000002', 'pt02', '50.00', '2023-04-24'),
('pay000015', 'bill000015', 'own00000004', 'pt01', '45.00', '2023-04-25'),
('pay000016', 'bill000016', 'own00000001', 'pt01', '50.00', '2023-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `paytype`
--

CREATE TABLE `paytype` (
  `payTypeId` varchar(4) NOT NULL,
  `payTypeDescription` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paytype`
--

INSERT INTO `paytype` (`payTypeId`, `payTypeDescription`) VALUES
('pt01', 'cash'),
('pt02', 'card'),
('pt03', 'cheque'),
('pt04', 'revolut'),
('pt05', 'installment');

-- --------------------------------------------------------

--
-- Table structure for table `petowners`
--

CREATE TABLE `petowners` (
  `OwnerID` varchar(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `addressID` varchar(9) DEFAULT NULL,
  `contactCode` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petowners`
--

INSERT INTO `petowners` (`OwnerID`, `firstName`, `lastName`, `addressID`, `contactCode`) VALUES
('own00000001', 'Mark', 'Quinlin', 'add000006', 'con000008'),
('own00000002', 'John', 'McGrath', 'add000007', 'con000009'),
('own00000003', 'Kevin', 'Lynch', 'add000008', 'con000010'),
('own00000004', 'Mary', 'Ryan', 'add000009', 'con000011'),
('own00000005', 'Siobhan', 'Murphy', 'add000010', 'con000012'),
('own00000006', 'Mick', 'Touhy', 'add000011', 'con000013'),
('own00000007', 'Paddy', 'Lennon', 'add000012', 'con000014'),
('own00000008', 'Stehpen', 'Casey', 'add000013', 'con000015'),
('own00000009', 'Eoin', 'Barry', 'add000014', 'con000016'),
('own00000010', 'David', 'Stapleton', 'add000015', 'con000017'),
('own00000011', 'Mark', 'Foley', 'add000016', 'con000018'),
('own00000012', 'Ciara', 'Quinn', 'add000017', 'con000019'),
('own00000013', 'Laura', 'Casey', 'add000018', 'con000020'),
('own00000014', 'Mary', 'Griffey', 'add000019', 'con000021'),
('own00000015', 'Patsy', 'Kearse', 'add000020', 'con000022');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(6) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `addressId` varchar(9) NOT NULL,
  `contactCode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `firstName`, `lastName`, `Role`, `addressId`, `contactCode`) VALUES
('stf001', 'Joe', 'ODonnell', 'Vet', 'add000001', 'con000001'),
('stf002', 'Jonathan', 'Griffey', 'Vet', 'add000002', 'con000003'),
('stf003', 'Tony', 'Burke', 'Vet', 'add000003', 'con000004'),
('stf004', 'Laura', 'ODonnell', 'Nurse', 'add000001', 'con000005'),
('stf005', 'Kate', 'ODonnell', 'Nurse', 'add000001', 'con000006'),
('stf006', 'Michelle', 'Casey', 'Nurse', 'add000004', 'con000007'),
('stf007', 'Roisin', 'Murphy', 'Receptionist', 'add000005', 'con000002');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatCode` varchar(8) NOT NULL,
  `treatDetails` varchar(4000) NOT NULL,
  `MedicationID` varchar(11) DEFAULT NULL,
  `treatCost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatCode`, `treatDetails`, `MedicationID`, `treatCost`) VALUES
('treat001', 'Routine exam', NULL, '45.00'),
('treat003', 'Bloodwork', NULL, '50.00'),
('treat004', 'Spay/neuter', 'med00000008', '100.00'),
('treat005', 'X-rays', NULL, '200.00'),
('treat006', 'Dental cleaning', 'med00000009', '150.00'),
('treat007', 'Ultrasound', NULL, '300.00'),
('treat008', 'Surgery (minor)', 'med00000006', '1000.00'),
('treat009', 'Surgery (major)', 'med00000007', '2000.00'),
('treat010', 'Chemotherapy', 'med00000008', '600.00'),
('treat011', 'Physical therapy session', NULL, '100.00'),
('treat012', 'euthanized', NULL, '50.00'),
('treat013', 'MISC', 'med00000008', '50.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`AnimalID`),
  ADD KEY `Owner_ID_FK_1` (`OwnerID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `Animal_ID_FK` (`AnimalID`),
  ADD KEY `Treatment_ID_FK` (`treatCode`),
  ADD KEY `Staff_ID_FK` (`StaffID`),
  ADD KEY `Status_ID_FK` (`statCode`),
  ADD KEY `Owner_ID_FK_2` (`OwnerID`);

--
-- Indexes for table `appstatus`
--
ALTER TABLE `appstatus`
  ADD PRIMARY KEY (`statCode`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billNumber`),
  ADD KEY `PayNumber_ID_FK` (`payNumber`),
  ADD KEY `Owner_ID_FK_3` (`OwnerID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactCode`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`MedicationID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payNumber`),
  ADD KEY `BillNumber_ID_FK` (`billNumber`),
  ADD KEY `Owner_ID_FK_4` (`OwnerID`),
  ADD KEY `PayType_ID_FK` (`payTypeID`);

--
-- Indexes for table `paytype`
--
ALTER TABLE `paytype`
  ADD PRIMARY KEY (`payTypeId`);

--
-- Indexes for table `petowners`
--
ALTER TABLE `petowners`
  ADD PRIMARY KEY (`OwnerID`),
  ADD KEY `Address_ID_FK` (`addressID`),
  ADD KEY `ContactCode_ID_FK` (`contactCode`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `Address_ID_FK_2` (`addressId`),
  ADD KEY `ContactCode_ID_FK_2` (`contactCode`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatCode`),
  ADD KEY `Medication_ID_FK` (`MedicationID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `Owner_ID_FK_1` FOREIGN KEY (`OwnerID`) REFERENCES `petowners` (`OwnerID`) ON UPDATE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `Animal_ID_FK` FOREIGN KEY (`AnimalID`) REFERENCES `animal` (`AnimalID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Owner_ID_FK_2` FOREIGN KEY (`OwnerID`) REFERENCES `petowners` (`OwnerID`),
  ADD CONSTRAINT `Staff_ID_FK` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Status_ID_FK` FOREIGN KEY (`statCode`) REFERENCES `appstatus` (`statCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Treatment_ID_FK` FOREIGN KEY (`treatCode`) REFERENCES `treatment` (`treatCode`) ON UPDATE CASCADE;

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `Owner_ID_FK_3` FOREIGN KEY (`OwnerID`) REFERENCES `petowners` (`OwnerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PayNumber_ID_FK` FOREIGN KEY (`payNumber`) REFERENCES `payment` (`payNumber`) ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `BillNumber_ID_FK` FOREIGN KEY (`billNumber`) REFERENCES `billing` (`billNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Owner_ID_FK_4` FOREIGN KEY (`OwnerID`) REFERENCES `petowners` (`OwnerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PayType_ID_FK` FOREIGN KEY (`payTypeID`) REFERENCES `paytype` (`payTypeId`) ON UPDATE CASCADE;

--
-- Constraints for table `petowners`
--
ALTER TABLE `petowners`
  ADD CONSTRAINT `Address_ID_FK` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ContactCode_ID_FK` FOREIGN KEY (`contactCode`) REFERENCES `contact` (`contactCode`) ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `Address_ID_FK_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ContactCode_ID_FK_2` FOREIGN KEY (`contactCode`) REFERENCES `contact` (`contactCode`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `Medication_ID_FK` FOREIGN KEY (`MedicationID`) REFERENCES `medication` (`MedicationID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
