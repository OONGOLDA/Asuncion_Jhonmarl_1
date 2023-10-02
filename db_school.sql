-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 10:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Add_Person` (IN `InputLname` VARCHAR(30), IN `InputFname` VARCHAR(30), IN `InputMname` VARCHAR(30), IN `InputEname` VARCHAR(6), IN `Inputsex` CHAR(1), IN `InputBirthdate` DATE, IN `InputAge` INT(2), IN `InputHome_Address` VARCHAR(75), IN `InputCivil_Status` VARCHAR(12), IN `InputReligion` VARCHAR(20), IN `InputNationality` VARCHAR(20), IN `InputBoarding_address` VARCHAR(75), IN `InputContact_Number` CHAR(11), IN `InputEmail_address` VARCHAR(25))   BEGIN 
    	INSERT INTO person (`Lname`, `Fname`, `Mname`, `Ename`, `Sex`, `Birthdate`, `Age`, `Home_Address`, `Civil_status`, `Religion`, `Nationality`, `Boarding_address`, `Contact_Number`, `Email_address`) VALUES (InputLname,InputFname,InputMname,InputEname,InputSex,InputBirthdate,Inputage,InputHome_Address,InputCivil_status,InputReligion,InputNationality,InputBoarding_address,InputContact_Number,InputEmail_address);
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `InstructorID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `Schedule` varchar(50) NOT NULL,
  `NoOfStudents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `CourseID`, `InstructorID`, `RoomID`, `Schedule`, `NoOfStudents`) VALUES
(1, 1, 1, 1, 'Monday 9:00 AM - 11:00 AM', 25),
(2, 2, 2, 2, 'Tuesday 10:00 AM - 12:00 PM', 30),
(3, 3, 3, 3, 'Wednesday 1:00 PM - 3:00 PM', 20),
(4, 4, 4, 4, 'Thursday 2:00 PM - 4:00 PM', 22),
(5, 5, 5, 5, 'Friday 11:00 AM - 1:00 PM', 28),
(6, 6, 6, 6, 'Monday 1:00 PM - 3:00 PM', 19),
(7, 7, 7, 7, 'Tuesday 9:00 AM - 11:00 AM', 27),
(8, 8, 8, 8, 'Wednesday 3:00 PM - 5:00 PM', 24),
(9, 9, 9, 9, 'Thursday 10:00 AM - 12:00 PM', 31),
(10, 10, 10, 10, 'Friday 2:00 PM - 4:00 PM', 21);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `CourseName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseCode`, `CourseName`) VALUES
(1, 'CSC101', 'Introduction to Computer Science'),
(2, 'MTH202', 'Advanced Mathematics'),
(3, 'ENG301', 'English Literature'),
(4, 'BIO101', 'Biology Basics'),
(5, 'CHEM201', 'Chemistry Fundamentals'),
(6, 'PHY301', 'Physics for Engineers'),
(7, 'HIS101', 'World History'),
(8, 'ECON202', 'Macroeconomics'),
(9, 'PSYCH101', 'Introduction to Psychology'),
(10, 'ARTS202', 'Fine Arts Appreciation'),
(11, 'MUS101', 'Music Fundamentals'),
(12, 'SOC101', 'Sociology 101'),
(13, 'LANG202', 'Spanish Language'),
(14, 'BUS301', 'Business Management'),
(15, 'PHIL101', 'Philosophy 101'),
(16, 'GEOG201', 'Geography and Maps'),
(17, 'HUM202', 'Humanities and Culture'),
(18, 'POLSCI301', 'Political Science'),
(19, 'ENVSCI101', 'Environmental Science'),
(20, 'ASTRO201', 'Astronomy Explorations');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `InstructorID` int(11) NOT NULL,
  `InstructorName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`InstructorID`, `InstructorName`) VALUES
(1, 'John Smith'),
(2, 'Mary Johnson'),
(3, 'Robert Davis'),
(4, 'Jennifer Lee'),
(5, 'William Turner'),
(6, 'Emily White'),
(7, 'Michael Brown'),
(8, 'Sophia Clark'),
(9, 'David Wilson'),
(10, 'Olivia Adams'),
(11, 'James Taylor'),
(12, 'Emma Green'),
(13, 'Daniel Martin'),
(14, 'Ava Hall'),
(15, 'Joseph Allen'),
(16, 'Liam King'),
(17, 'Chloe Scott'),
(18, 'Benjamin Lewis'),
(19, 'Mia Turner'),
(20, 'Ethan White');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomID` int(11) NOT NULL,
  `RoomName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomID`, `RoomName`) VALUES
(1, 'Room A101'),
(2, 'Room B202'),
(3, 'Room C303'),
(4, 'Room D404'),
(5, 'Room E505'),
(6, 'Room F606'),
(7, 'Room G707'),
(8, 'Room H808'),
(9, 'Room I909'),
(10, 'Room J1010'),
(11, 'Room K1111'),
(12, 'Room L1212'),
(13, 'Room M1313'),
(14, 'Room N1414'),
(15, 'Room O1515'),
(16, 'Room P1616'),
(17, 'Room Q1717'),
(18, 'Room R1818'),
(19, 'Room S1919'),
(20, 'Room T2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `InstructorID` (`InstructorID`),
  ADD KEY `RoomID` (`RoomID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`InstructorID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `InstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `RoomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`InstructorID`) REFERENCES `instructor` (`InstructorID`),
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
