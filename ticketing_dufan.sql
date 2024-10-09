-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 02:07 AM
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
-- Database: `ticketing_dufan`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCustomer` (IN `in_customerID` CHAR(4), IN `in_customerName` VARCHAR(40), IN `in_customerGender` VARCHAR(10), IN `in_customerDoB` DATE, IN `in_customerAddress` VARCHAR(70), IN `in_customerPhoneNumb` INT(15), IN `in_customerEmail` VARCHAR(50))   BEGIN
    INSERT INTO Customer(customerID, customerName, customerGender, customerDoB, customerAddress, customerPhoneNumb, customerEmail)
    VALUES (in_customerID, in_customerName, in_customerGender, in_customerDoB, in_customerAddress, in_customerPhoneNumb, in_customerEmail);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` char(4) NOT NULL,
  `customerName` varchar(40) NOT NULL,
  `customerGender` varchar(10) NOT NULL,
  `customerDoB` date NOT NULL,
  `customerAddress` varchar(70) NOT NULL,
  `customerPhoneNumb` varchar(15) NOT NULL,
  `customerEmail` varchar(50) NOT NULL CHECK (`customerID` regexp 'C[0-9]{3}')
) ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `customerGender`, `customerDoB`, `customerAddress`, `customerPhoneNumb`, `customerEmail`) VALUES
('C001', 'John Doe', 'Male', '1990-05-15', '123 Main Street, City', '1234567890', 'johndoe@example.com'),
('C002', 'Jane Smith', 'Female', '1988-09-20', '456 Elm Street, Town', '2147483647', 'janesmith@example.com'),
('C003', 'David Johnson', 'Male', '1995-03-10', '789 Oak Street, Village', '2147483647', 'david@example.com'),
('C004', 'Emily Williams', 'Female', '1992-11-28', '567 Pine Street, County', '2147483647', 'emily@example.com'),
('C005', 'Michael Brown', 'Male', '1987-07-08', '890 Maple Street, Borough', '1112223334', 'michael@example.com'),
('C006', 'Sophia Miller', 'Female', '1998-02-14', '234 Cedar Street, District', '2147483647', 'sophia@example.com'),
('C007', 'Jacob Wilson', 'Male', '1993-12-03', '432 Birch Street, Suburb', '2147483647', 'jacob@example.com'),
('C008', 'Olivia Moore', 'Female', '1985-06-25', '876 Walnut Street, Precinct', '2147483647', 'olivia@example.com'),
('C009', 'William Taylor', 'Male', '1991-09-17', '765 Sycamore Street, Parish', '2147483647', 'william@example.com'),
('C010', 'Ava Anderson', 'Female', '1994-04-05', '987 Cherry Street, Sector', '2147483647', 'ava@example.com'),
('C011', 'Ethan Thomas', 'Male', '1989-08-11', '543 Poplar Street, Ward', '2147483647', 'ethan@example.com'),
('C012', 'Isabella Jackson', 'Female', '1996-01-27', '678 Birchwood Street, Hamlet', '2147483647', 'isabella@example.com'),
('C013', 'Mason White', 'Male', '1986-10-14', '5436 Juniper Street, Territory', '1112223332', 'mason@example.com'),
('C014', 'Charlotte Harris', 'Female', '1990-07-02', '765 Pinecrest Street, Province', '2147483647', 'charlotte@example.com'),
('C015', 'Liam Martin', 'Male', '1997-05-18', '876 Magnolia Street, Domain', '2147483647', 'liam@example.com'),
('C016', 'Amelia Thompson', 'Female', '1993-11-30', '987 Oakwood Street, Dominion', '2147483647', 'amelia@example.com'),
('C017', 'Logan Garcia', 'Male', '1988-03-22', '654 Elmwood Street, Territory', '2147483647', 'logan@example.com'),
('C018', 'Harper Martinez', 'Female', '1995-12-09', '543 Cedarwood Street, District', '2147483647', 'harper@example.com'),
('C019', 'Benjamin Robinson', 'Male', '1987-09-06', '123 Maplewood Street, Sector', '2147483647', 'benjamin@example.com'),
('C020', 'Evelyn Clark', 'Female', '1999-08-24', '876 Birchwood Street, Precinct', '1112223336', 'evelyn@example.com'),
('C021', 'James Rodriguez', 'Male', '1992-04-12', '456 Pinecrest Street, Borough', '2147483647', 'james@example.com'),
('C022', 'Abigail Perez', 'Female', '1996-02-03', '789 Cedarwood Street, County', '2147483647', 'abigail@example.com'),
('C023', 'Daniel Nguyen', 'Male', '1986-06-29', '234 Oakwood Street, Parish', '2147483647', 'daniel@example.com'),
('C024', 'Ella Hill', 'Female', '1991-10-19', '543 Elmwood Street, District', '2147483647', 'ella@example.com'),
('C025', 'Jackson Lewis', 'Male', '1994-09-15', '987 Maplewood Street, Ward', '2147483647', 'jackson@example.com'),
('C026', 'Mia Lewis', 'Female', '1989-08-07', '456 Pinecrest Street, Village', '2147483647', 'mia@example.com'),
('C027', 'Alexander Hall', 'Male', '1998-03-25', '678 Birchwood Street, City', '2147483647', 'alexander@example.com'),
('C028', 'Grace Young', 'Female', '1985-11-13', '789 Cedarwood Street, Town', '2147483647', 'grace@example.com'),
('C029', 'Noah Wright', 'Male', '1990-07-30', '123 Main Street, Hamlet', '2147483647', 'noah@example.com'),
('C030', 'Chloe Lee', 'Female', '1997-06-20', '456 Elm Street, Precinct', '2147483647', 'chloe@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `commentID` int(7) NOT NULL,
  `customerID` char(4) NOT NULL,
  `wahanaID` int(2) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`commentID`, `customerID`, `wahanaID`, `description`) VALUES
(1012345, 'C001', 3, 'Baling-Baling memberikan sensasi yang menggelitik, saya suka!'),
(1112345, 'C005', 17, 'Bianglala sangat menarik untuk dinaiki, pemandangan dari atasnya indah sekali.'),
(1212345, 'C002', 22, 'Karavel memberikan pengalaman menyegarkan di hari yang panas.'),
(1234567, 'C005', 5, 'Wahana ini sangat menyenangkan! Saya suka sensasi dari halilintar.'),
(1312345, 'C009', 11, 'Kereta Misteri sangat misterius, pengalaman yang unik.'),
(1412345, 'C004', 6, 'Kora-Kora memberikan sensasi ayunan yang mengasyikkan.'),
(1512345, 'C007', 18, 'Komidi Putar Turangga-Rangga cocok untuk anak-anak.'),
(1612345, 'C006', 2, 'Tornado memberikan sensasi putaran yang cepat.'),
(1712345, 'C003', 9, 'Niagara Gara memberikan sensasi air yang menyegarkan.'),
(1812345, 'C008', 16, 'Rumah Riana memberikan sensasi horor yang menyenangkan.'),
(1912345, 'C010', 25, 'Ombang-Ombang memberikan sensasi air yang mengasyikkan.'),
(2012345, 'C001', 4, 'Kicir-Kicir memberikan sensasi yang menyenangkan.'),
(2112345, 'C005', 13, 'Poci-Poci adalah wahana yang cocok untuk keluarga.'),
(2212345, 'C002', 21, 'Paralayang memberikan pengalaman terbang seperti burung.'),
(2312345, 'C009', 10, 'Arung Jeram memberikan sensasi rafting yang mengasyikkan.'),
(2345678, 'C002', 11, 'Kereta Misteri memberikan pengalaman yang menegangkan, saya suka!'),
(2412345, 'C004', 14, 'Alap-Alap memberikan sensasi terbang yang seru.'),
(2512345, 'C007', 23, 'Kolibri memberikan sensasi terbang yang mengasyikkan.'),
(3456789, 'C009', 20, 'Ice Age Arctic Adventure sangat cocok untuk keluarga, anak-anak saya senang.'),
(4567890, 'C004', 7, 'Turbo Drop memberikan sensasi yang luar biasa, tapi antrian terlalu lama.'),
(5678901, 'C007', 19, 'Istana Boneka sangat lucu dan menggemaskan, cocok untuk anak-anak.'),
(6789012, 'C006', 1, 'Hysteria adalah wahana paling favorit saya, terutama pada malam hari.'),
(7890123, 'C003', 8, 'Pontang-Pontang memberikan pandangan indah dari atas, luar biasa!'),
(8901234, 'C008', 15, 'The Conjuring House seram tapi sangat menyenangkan untuk pecinta horor.'),
(9012345, 'C010', 33, 'Simulator Mowgli’s memberikan pengalaman simulasi yang seru.');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `orderID` int(6) NOT NULL,
  `customerID` char(4) NOT NULL,
  `staffID` char(5) NOT NULL,
  `typeTicket` char(1) NOT NULL,
  `orderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`orderID`, `customerID`, `staffID`, `typeTicket`, `orderDate`) VALUES
(100001, 'C001', 'S1010', 'F', '2023-02-15'),
(100002, 'C002', 'S1008', 'R', '2023-04-07'),
(100003, 'C003', 'S1012', 'F', '2023-07-22'),
(100004, 'C004', 'S1018', 'R', '2023-09-14'),
(100005, 'C005', 'S1020', 'F', '2023-10-30'),
(100006, 'C006', 'S1016', 'R', '2023-06-18'),
(100007, 'C007', 'S1026', 'F', '2023-08-03'),
(100008, 'C008', 'S1018', 'R', '2023-05-11'),
(100009, 'C009', 'S1028', 'F', '2023-03-25'),
(100010, 'C010', 'S1020', 'R', '2023-11-09'),
(100011, 'C001', 'S1010', 'F', '2023-02-28'),
(100012, 'C002', 'S1008', 'R', '2023-04-17'),
(100013, 'C003', 'S1012', 'F', '2023-07-01'),
(100014, 'C004', 'S1018', 'R', '2023-09-23'),
(100015, 'C005', 'S1020', 'F', '2023-10-10'),
(100016, 'C006', 'S1016', 'R', '2023-06-25'),
(100017, 'C007', 'S1026', 'F', '2023-08-13'),
(100018, 'C008', 'S1018', 'R', '2023-05-28'),
(100019, 'C009', 'S1026', 'F', '2023-03-16'),
(100020, 'C010', 'S1020', 'R', '2023-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` char(5) NOT NULL,
  `staffName` varchar(40) NOT NULL,
  `staffAddress` varchar(70) NOT NULL,
  `staffPhoneNumb` varchar(15) NOT NULL,
  `staffEmail` varchar(50) NOT NULL,
  `staffDoJ` date NOT NULL,
  `staffPosition` varchar(30) NOT NULL,
  `staffSalary` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `staffAddress`, `staffPhoneNumb`, `staffEmail`, `staffDoJ`, `staffPosition`, `staffSalary`) VALUES
('S1001', 'John Doe', '123 Main Street, City', '1234567890', 'johndoe@example.com', '2020-01-15', 'Teknisi Wahana', '3000000'),
('S1002', 'Jane Smith', '456 Elm Street, Town', '9876543210', 'janesmith@example.com', '2019-08-20', 'CS Loket', '3000000'),
('S1003', 'David Johnson', '789 Oak Street, Village', '5551234567', 'david@example.com', '2021-03-10', 'Teknisi Wahana', '3000000'),
('S1004', 'Emily Williams', '567 Pine Street, County', '9998887776', 'emily@example.com', '2018-11-28', 'CS Loket', '3000000'),
('S1005', 'Michael Brown', '890 Maple Street, Borough', '1112223334', 'michael@example.com', '2017-07-08', 'Teknisi Wahana', '3000000'),
('S1006', 'Sophia Miller', '234 Cedar Street, District', '4445556665', 'sophia@example.com', '2019-02-14', 'CS Loket', '3000000'),
('S1007', 'Jacob Wilson', '432 Birch Street, Suburb', '7778889992', 'jacob@example.com', '2020-12-03', 'Teknisi Wahana', '3000000'),
('S1008', 'Olivia Moore', '876 Walnut Street, Precinct', '6667778881', 'olivia@example.com', '2016-06-25', 'CS Loket', '3000000'),
('S1009', 'William Taylor', '765 Sycamore Street, Parish', '3334445550', 'william@example.com', '2018-09-17', 'Teknisi Wahana', '3000000'),
('S1010', 'Ava Anderson', '987 Cherry Street, Sector', '2223334449', 'ava@example.com', '2022-04-05', 'CS Loket', '3000000'),
('S1011', 'Ethan Thomas', '543 Poplar Street, Ward', '8889990008', 'ethan@example.com', '2019-08-11', 'Teknisi Wahana', '3000000'),
('S1012', 'Isabella Jackson', '678 Birchwood Street, Hamlet', '5556667777', 'isabella@example.com', '2020-01-27', 'CS Loket', '3000000'),
('S1013', 'Mason White', '5436 Juniper Street, Territory', '1112223332', 'mason@example.com', '2016-10-14', 'Teknisi Wahana', '3000000'),
('S1014', 'Charlotte Harris', '765 Pinecrest Street, Province', '7778889996', 'charlotte@example.com', '2019-07-02', 'CS Loket', '3000000'),
('S1015', 'Liam Martin', '876 Magnolia Street, Domain', '4445556665', 'liam@example.com', '2021-05-18', 'Teknisi Wahana', '3000000'),
('S1016', 'Amelia Thompson', '987 Oakwood Street, Dominion', '5556667774', 'amelia@example.com', '2018-11-30', 'CS Loket', '3000000'),
('S1017', 'Logan Garcia', '654 Elmwood Street, Territory', '8889990003', 'logan@example.com', '2017-03-22', 'Teknisi Wahana', '3000000'),
('S1018', 'Harper Martinez', '543 Cedarwood Street, District', '7778889992', 'harper@example.com', '2022-12-09', 'CS Loket', '3000000'),
('S1019', 'Benjamin Robinson', '123 Maplewood Street, Sector', '2223334447', 'benjamin@example.com', '2016-09-06', 'Teknisi Wahana', '3000000'),
('S1020', 'Evelyn Clark', '876 Birchwood Street, Precinct', '1112223336', 'evelyn@example.com', '2019-08-24', 'CS Loket', '3000000'),
('S1021', 'James Rodriguez', '456 Pinecrest Street, Borough', '4445556661', 'james@example.com', '2022-04-12', 'Teknisi Wahana', '3000000'),
('S1022', 'Abigail Perez', '789 Cedarwood Street, County', '7778889990', 'abigail@example.com', '2017-02-03', 'CS Loket', '3000000'),
('S1023', 'Daniel Nguyen', '234 Oakwood Street, Parish', '8889990009', 'daniel@example.com', '2018-06-29', 'Teknisi Wahana', '3000000'),
('S1024', 'Ella Hill', '543 Elmwood Street, District', '5556667778', 'ella@example.com', '2020-10-19', 'CS Loket', '3000000'),
('S1025', 'Jackson Lewis', '987 Maplewood Street, Ward', '2223334445', 'jackson@example.com', '2019-09-15', 'Teknisi Wahana', '3000000'),
('S1026', 'Mia Lewis', '456 Pinecrest Street, Village', '7778889994', 'mia@example.com', '2018-08-07', 'CS Loket', '3000000'),
('S1027', 'Alexander Hall', '678 Birchwood Street, City', '4445556663', 'alexander@example.com', '2021-03-25', 'Teknisi Wahana', '3000000'),
('S1028', 'Grace Young', '789 Cedarwood Street, Town', '5556667772', 'grace@example.com', '2016-11-13', 'CS Loket', '3000000'),
('S1029', 'Noah Wright', '123 Main Street, Hamlet', '8889990001', 'noah@example.com', '2019-07-30', 'Teknisi Wahana', '3000000'),
('S1030', 'Chloe Lee', '456 Elm Street, Precinct', '2223334440', 'chloe@example.com', '2020-06-20', 'CS Loket', '3000000');

-- --------------------------------------------------------

--
-- Table structure for table `ticketing`
--

CREATE TABLE `ticketing` (
  `ticketID` char(1) NOT NULL,
  `typeTicket` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `ticketing`
--

INSERT INTO `ticketing` (`ticketID`, `typeTicket`) VALUES
('F', 'Fast Track Ticket'),
('R', 'Reguler Ticket');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewwahana`
-- (See below for the actual view)
--
CREATE TABLE `viewwahana` (
`wahanaName` varchar(30)
,`staffName` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `wahana`
--

CREATE TABLE `wahana` (
  `wahanaID` int(2) NOT NULL,
  `staffWahana` char(5) NOT NULL,
  `wahanaName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wahana`
--

INSERT INTO `wahana` (`wahanaID`, `staffWahana`, `wahanaName`) VALUES
(1, 'S1001', 'Hysteria'),
(2, 'S1003', 'Tornado'),
(3, 'S1005', 'Baling-Baling'),
(4, 'S1007', 'Kicir-Kicir'),
(5, 'S1009', 'Halilintar'),
(6, 'S1001', 'Kora-Kora'),
(7, 'S1013', 'Turbo Drop'),
(8, 'S1015', 'Pontang-Pontang'),
(9, 'S1017', 'Niagara Gara'),
(10, 'S1019', 'Arung Jeram'),
(11, 'S1021', 'Kereta Misteri'),
(12, 'S1023', 'Ontang-Anting'),
(13, 'S1025', 'Poci-Poci'),
(14, 'S1027', 'Alap-Alap'),
(15, 'S1029', 'The Conjuring House'),
(16, 'S1001', 'Rumah Riana'),
(17, 'S1003', 'Bianglala'),
(18, 'S1005', 'Komidi Putar Turangga-Rangga'),
(19, 'S1007', 'Istana Boneka'),
(20, 'S1009', 'Ice Age Arctic Adventure'),
(21, 'S1011', 'Paralayang'),
(22, 'S1013', 'Karavel'),
(23, 'S1015', 'Kolibri'),
(24, 'S1017', 'Galactica'),
(25, 'S1019', 'Ombang-Ombang'),
(26, 'S1021', 'Happy Feet'),
(27, 'S1023', 'Rumah Miring'),
(28, 'S1025', 'Color of Kingdom'),
(29, 'S1027', 'Baku Toki'),
(30, 'S1029', 'Kalila Adventure'),
(31, 'S1001', 'Kontiki'),
(32, 'S1003', 'Dream Playground'),
(33, 'S1005', 'Simulator Mowgli’s');

-- --------------------------------------------------------

--
-- Structure for view `viewwahana`
--
DROP TABLE IF EXISTS `viewwahana`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewwahana`  AS SELECT `w`.`wahanaName` AS `wahanaName`, `s`.`staffName` AS `staffName` FROM (`wahana` `w` join `staff` `s` on(`w`.`staffWahana` = `s`.`staffID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `wahanaID` (`wahanaID`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `typeTicket` (`typeTicket`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `ticketing`
--
ALTER TABLE `ticketing`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `wahana`
--
ALTER TABLE `wahana`
  ADD PRIMARY KEY (`wahanaID`),
  ADD KEY `staffWahana` (`staffWahana`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`wahanaID`) REFERENCES `wahana` (`wahanaID`);

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `order__ibfk_2` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  ADD CONSTRAINT `order__ibfk_3` FOREIGN KEY (`typeTicket`) REFERENCES `ticketing` (`ticketID`);

--
-- Constraints for table `wahana`
--
ALTER TABLE `wahana`
  ADD CONSTRAINT `wahana_ibfk_1` FOREIGN KEY (`staffWahana`) REFERENCES `staff` (`staffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
