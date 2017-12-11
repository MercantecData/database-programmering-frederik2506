-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 11. 12 2017 kl. 10:19:16
-- Serverversion: 10.1.28-MariaDB
-- PHP-version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userlogin`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `certified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `login`
--

INSERT INTO `login` (`ID`, `Username`, `Password`, `certified`, `modified`) VALUES
(15, 'frederik', '$2y$10$fc6WJyBjgSZMgHussIKzOOSeEorbkhnUECG8i..7LZAyiHN4cKHdq', '2017-12-08 08:16:05', '2017-12-08 08:16:05'),
(16, 'localhost', '$2y$10$fuKuifVwwgY9N9.kAClwQOgnCCiX5M2mCXoaI7y7Wg3YyB3t03fqK', '2017-12-08 08:16:08', '2017-12-08 08:16:08');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `userchoice`
--

CREATE TABLE `userchoice` (
  `ID` int(11) NOT NULL,
  `C Sharp` tinyint(1) NOT NULL,
  `JAVA` tinyint(1) NOT NULL,
  `Php` tinyint(1) NOT NULL,
  `Html` tinyint(1) NOT NULL,
  `Python` tinyint(1) NOT NULL,
  `Createt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `userchoice`
--

INSERT INTO `userchoice` (`ID`, `C Sharp`, `JAVA`, `Php`, `Html`, `Python`, `Createt`, `modified`, `Name`, `Lastname`, `Age`) VALUES
(41, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '2017-12-08 08:57:33', 'tes', 'tes', 18),
(42, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '2017-12-08 08:58:37', 'sda', 'test', 18);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks for tabel `userchoice`
--
ALTER TABLE `userchoice`
  ADD PRIMARY KEY (`ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tilføj AUTO_INCREMENT i tabel `userchoice`
--
ALTER TABLE `userchoice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
