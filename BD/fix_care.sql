-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 07:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fix_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `ID` int(10) NOT NULL,
  `NOMBRE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`ID`, `NOMBRE`) VALUES
(1, 'Administrador'),
(2, 'Técnico'),
(3, 'Docente');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(10) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APEPAT` varchar(50) NOT NULL,
  `APEMAT` varchar(50) NOT NULL,
  `CORREO` varchar(200) NOT NULL,
  `IMG` varchar(200) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `ROL` int(10) NOT NULL,
  `USER` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`ID`, `NOMBRE`, `APEPAT`, `APEMAT`, `CORREO`, `IMG`, `TELEFONO`, `ROL`, `USER`, `PASSWORD`) VALUES
(1, 'Dayana Magdiel', 'Custodio', 'Avalos', 'chatita20@fake.com', 'img.jpg', '55555555', 1, 'Day232', '123'),
(2, 'Andrés', 'Palma', 'Hernandez', 'andres@gmail.com', 'img.jpg', '55555555', 2, 'Andy', '123'),
(3, '', '', '', '', '', '', 1, '', ''),
(4, 'qqq', 'qqq', 'qqq', 'qqq', 'img.jpg', 'qqqq', 2, 'qqqq', 'qqq'),
(5, 'ssss', 'ssss', 'sss', 'sss', 'img.jpg', 'sss', 1, 'ssss', 'sss'),
(6, 'aaaaa', 'aaaa', 'aaaa', 'aaaa', 'img.jpg', 'aaa', 3, 'aaaaa', 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ROL` (`ROL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
