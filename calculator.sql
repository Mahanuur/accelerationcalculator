-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calculator`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceleration`
--

CREATE TABLE `acceleration` (
  `meters per second squared` double NOT NULL,
  `gravitational acc` double NOT NULL,
  `feet per second squared` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acceleration`
--

INSERT INTO `acceleration` (`meters per second squared`, `gravitational acc`, `feet per second squared`) VALUES
(1, 0.10197162129779, 3.28084);

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE `distance` (
  `meters` double NOT NULL,
  `mili meters` double NOT NULL,
  `centimeters` double NOT NULL,
  `kilometers` double NOT NULL,
  `inches` double NOT NULL,
  `feets` double NOT NULL,
  `yards` double NOT NULL,
  `miles` double NOT NULL,
  `feets/inches` double NOT NULL,
  `meters/centimeters` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`meters`, `mili meters`, `centimeters`, `kilometers`, `inches`, `feets`, `yards`, `miles`, `feets/inches`, `meters/centimeters`) VALUES
(1, 1000, 100, 0.001, 39.3701, 3.280841666667, 1.093613888889, 0.0006213715277778409, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `finalspeed`
--

CREATE TABLE `finalspeed` (
  `meters per second` double NOT NULL,
  `kilometers per hour` double NOT NULL,
  `feet per second` double NOT NULL,
  `miles per hour` double NOT NULL,
  `knots` double NOT NULL,
  `kilometers per second` double NOT NULL,
  `miles per seconds` double NOT NULL,
  `light speed` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalspeed`
--

INSERT INTO `finalspeed` (`meters per second`, `kilometers per hour`, `feet per second`, `miles per hour`, `knots`, `kilometers per second`, `miles per seconds`, `light speed`) VALUES
(1, 3.6, 3.28084, 2.2369363636364, 1.9438445563230073, 0.001, 0.000621371, 3.33564e-18);

-- --------------------------------------------------------

--
-- Table structure for table `force`
--

CREATE TABLE `force` (
  `Newtons` double NOT NULL,
  `kilonewtons` double NOT NULL,
  `Meganewtons` double NOT NULL,
  `giganewtons` double NOT NULL,
  `teranewtons` double NOT NULL,
  `poundals` double NOT NULL,
  `pounds-force` double NOT NULL,
  `dynes` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `force`
--

INSERT INTO `force` (`Newtons`, `kilonewtons`, `Meganewtons`, `giganewtons`, `teranewtons`, `poundals`, `pounds-force`, `dynes`) VALUES
(1, 0.001, 0.000001, 0.000000001, 0.000000000001, 7.23301, 0.224809, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `initialspeed`
--

CREATE TABLE `initialspeed` (
  `meters per second` double NOT NULL,
  `kilometers per hour` double NOT NULL,
  `feet per second` double NOT NULL,
  `miles per hour` double NOT NULL,
  `knots` double NOT NULL,
  `kilometers per second` double NOT NULL,
  `miles per seconds` double NOT NULL,
  `light speed` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `initialspeed`
--

INSERT INTO `initialspeed` (`meters per second`, `kilometers per hour`, `feet per second`, `miles per hour`, `knots`, `kilometers per second`, `miles per seconds`, `light speed`) VALUES
(1, 3.6, 3.28084, 2.2369363636364, 1.9438445563230073, 0.001, 0.000621371, 3.33564e-18);

-- --------------------------------------------------------

--
-- Table structure for table `mass`
--

CREATE TABLE `mass` (
  `miligram` double NOT NULL,
  `kilograms` double NOT NULL,
  `grams` double NOT NULL,
  `metric_tons` double NOT NULL,
  `grains` double NOT NULL,
  `drachms` double NOT NULL,
  `ounces` double NOT NULL,
  `pounds` double NOT NULL,
  `stones` double NOT NULL,
  `US_short_tons` double NOT NULL,
  `imporial_tons` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mass`
--

INSERT INTO `mass` (`miligram`, `kilograms`, `grams`, `metric_tons`, `grains`, `drachms`, `ounces`, `pounds`, `stones`, `US_short_tons`, `imporial_tons`) VALUES
(1000000, 1, 1000, 0.001, 15432.4, 564.383, 35.274, 2.20462, 0.157472857135078, 0.001102309999945546, 0.0009842053570942376);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `seconds` int(11) NOT NULL,
  `minutes` double NOT NULL,
  `hours` double(10,0) NOT NULL,
  `day` double(10,0) NOT NULL,
  `weeks` double NOT NULL,
  `months` double NOT NULL,
  `years` double NOT NULL,
  `minutes/seconds` double NOT NULL,
  `hours/minutes` double NOT NULL,
  `miliseconds` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`seconds`, `minutes`, `hours`, `day`, `weeks`, `months`, `years`, `minutes/seconds`, `hours/minutes`, `miliseconds`) VALUES
(1, 0.0166667, 0, 0, 0.00000165344246, 0.00000038051, 0.000000031709855, 1, 1, 1000.0019999880001);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
