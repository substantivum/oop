-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 28 2022 г., 09:29
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `travel_agency`
--

-- --------------------------------------------------------

--
-- Структура таблицы `airclass`
--

CREATE TABLE `airclass` (
  `IDairClass` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `airclass`
--

INSERT INTO `airclass` (`IDairClass`, `name`) VALUES
(1, 'VIP');

-- --------------------------------------------------------

--
-- Структура таблицы `airticketstours`
--

CREATE TABLE `airticketstours` (
  `IDairTicketsTours` int(11) NOT NULL,
  `place` int(11) DEFAULT NULL,
  `flightCode` int(11) DEFAULT NULL,
  `airLine` varchar(20) DEFAULT NULL,
  `PassportID` int(11) DEFAULT NULL,
  `clientFullName` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `agreementDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `air_tickets`
--

CREATE TABLE `air_tickets` (
  `IDairTickets` int(11) NOT NULL,
  `place` int(11) DEFAULT NULL,
  `flighеСode` int(11) DEFAULT NULL,
  `airline` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `IDcategory` int(11) NOT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `fullName` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `IDclient` int(11) NOT NULL,
  `phoneNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `contract`
--

CREATE TABLE `contract` (
  `clientFullName` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `agreementDate` date DEFAULT NULL,
  `IDcontract` int(11) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `eventtickets`
--

CREATE TABLE `eventtickets` (
  `IDeventTickets` int(11) NOT NULL,
  `place` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `eventPlace` varchar(20) DEFAULT NULL,
  `beginningTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hotel`
--

CREATE TABLE `hotel` (
  `IDhotel` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hotelclass`
--

CREATE TABLE `hotelclass` (
  `class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `ordertable`
--

CREATE TABLE `ordertable` (
  `tourNumber` int(11) DEFAULT NULL,
  `PassportID` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL,
  `IDorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `permit`
--

CREATE TABLE `permit` (
  `PassportID` int(11) DEFAULT NULL,
  `clientFullName` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `agreementDate` date DEFAULT NULL,
  `IDpermit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `permitnumber`
--

CREATE TABLE `permitnumber` (
  `IDpermitNumber` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `PassportID` int(11) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(20) DEFAULT NULL,
  `clientFullName` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `agreementDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE `position` (
  `IDposition` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `program`
--

CREATE TABLE `program` (
  `IDprogram` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `IDrooms` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hotelName` varchar(20) DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `departureDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `IDstaff` int(11) NOT NULL,
  `passportID` int(11) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `fullName` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tour`
--

CREATE TABLE `tour` (
  `IDtour` int(11) NOT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `tourStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourevents`
--

CREATE TABLE `tourevents` (
  `IDtourEvents` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `beginningTime` date DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourflights`
--

CREATE TABLE `tourflights` (
  `IDtourFlights` int(11) NOT NULL,
  `flightCode` int(11) DEFAULT NULL,
  `airLine` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `departureTime` date DEFAULT NULL,
  `ArrivalCity` varchar(20) DEFAULT NULL,
  `departureCity` varchar(20) DEFAULT NULL,
  `directions` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourist`
--

CREATE TABLE `tourist` (
  `passportID` int(11) NOT NULL,
  `touristFullName` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourtasks`
--

CREATE TABLE `tourtasks` (
  `IDtourTasks` int(11) NOT NULL,
  `taskNumber` int(11) DEFAULT NULL,
  `PassportID` int(11) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourType` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `programNumber` int(11) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `taskStatus` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourtickets`
--

CREATE TABLE `tourtickets` (
  `IDtourTickets` int(11) NOT NULL,
  `place` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `beginningDate` date DEFAULT NULL,
  `eventPlace` varchar(20) DEFAULT NULL,
  `beginningTime` date DEFAULT NULL,
  `passwordID` int(11) DEFAULT NULL,
  `clientFullName` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(20) DEFAULT NULL,
  `tourNumber` int(11) DEFAULT NULL,
  `agreementDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tourtype`
--

CREATE TABLE `tourtype` (
  `tourType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `airclass`
--
ALTER TABLE `airclass`
  ADD PRIMARY KEY (`IDairClass`);

--
-- Индексы таблицы `airticketstours`
--
ALTER TABLE `airticketstours`
  ADD PRIMARY KEY (`IDairTicketsTours`);

--
-- Индексы таблицы `air_tickets`
--
ALTER TABLE `air_tickets`
  ADD PRIMARY KEY (`IDairTickets`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`IDcategory`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IDclient`);

--
-- Индексы таблицы `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`IDcontract`);

--
-- Индексы таблицы `eventtickets`
--
ALTER TABLE `eventtickets`
  ADD PRIMARY KEY (`IDeventTickets`);

--
-- Индексы таблицы `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`IDhotel`);

--
-- Индексы таблицы `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`IDorder`);

--
-- Индексы таблицы `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`IDpermit`);

--
-- Индексы таблицы `permitnumber`
--
ALTER TABLE `permitnumber`
  ADD PRIMARY KEY (`IDpermitNumber`);

--
-- Индексы таблицы `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`IDposition`);

--
-- Индексы таблицы `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`IDprogram`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`IDrooms`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`IDstaff`);

--
-- Индексы таблицы `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`IDtour`);

--
-- Индексы таблицы `tourevents`
--
ALTER TABLE `tourevents`
  ADD PRIMARY KEY (`IDtourEvents`);

--
-- Индексы таблицы `tourflights`
--
ALTER TABLE `tourflights`
  ADD PRIMARY KEY (`IDtourFlights`);

--
-- Индексы таблицы `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`passportID`);

--
-- Индексы таблицы `tourtasks`
--
ALTER TABLE `tourtasks`
  ADD PRIMARY KEY (`IDtourTasks`);

--
-- Индексы таблицы `tourtickets`
--
ALTER TABLE `tourtickets`
  ADD PRIMARY KEY (`IDtourTickets`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `airclass`
--
ALTER TABLE `airclass`
  MODIFY `IDairClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `airticketstours`
--
ALTER TABLE `airticketstours`
  MODIFY `IDairTicketsTours` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `air_tickets`
--
ALTER TABLE `air_tickets`
  MODIFY `IDairTickets` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `IDcategory` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `IDclient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contract`
--
ALTER TABLE `contract`
  MODIFY `IDcontract` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eventtickets`
--
ALTER TABLE `eventtickets`
  MODIFY `IDeventTickets` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `hotel`
--
ALTER TABLE `hotel`
  MODIFY `IDhotel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `IDorder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permit`
--
ALTER TABLE `permit`
  MODIFY `IDpermit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permitnumber`
--
ALTER TABLE `permitnumber`
  MODIFY `IDpermitNumber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `position`
--
ALTER TABLE `position`
  MODIFY `IDposition` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `program`
--
ALTER TABLE `program`
  MODIFY `IDprogram` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `IDrooms` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `IDstaff` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour`
--
ALTER TABLE `tour`
  MODIFY `IDtour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tourevents`
--
ALTER TABLE `tourevents`
  MODIFY `IDtourEvents` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tourflights`
--
ALTER TABLE `tourflights`
  MODIFY `IDtourFlights` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tourtasks`
--
ALTER TABLE `tourtasks`
  MODIFY `IDtourTasks` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tourtickets`
--
ALTER TABLE `tourtickets`
  MODIFY `IDtourTickets` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
