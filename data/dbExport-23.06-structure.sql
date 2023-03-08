-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 23. čen 2022, 14:02
-- Verze serveru: 10.4.20-MariaDB
-- Verze PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `crm`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `columns`
--

CREATE TABLE `columns` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `columns`
--

INSERT INTO `columns` (`id`, `name`, `type`) VALUES
(12, 'Pocitač', 1),
(13, 'Učitel', 1),
(14, 'Python', 1),
(15, 'Moje', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `time_start` datetime NOT NULL DEFAULT current_timestamp(),
  `time_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `firm`
--

CREATE TABLE `firm` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(500) DEFAULT NULL,
  `surname` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `source` varchar(500) DEFAULT NULL,
  `date_of_contact` date DEFAULT NULL,
  `date_of_2_contact` date DEFAULT NULL,
  `date_of_meeting` date DEFAULT NULL,
  `result` varchar(500) DEFAULT NULL,
  `workshop` varchar(500) DEFAULT NULL,
  `brigade` varchar(500) DEFAULT NULL,
  `practice` varchar(500) DEFAULT NULL,
  `cv` tinyint(4) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `c12` varchar(500) DEFAULT NULL,
  `c13` varchar(500) DEFAULT NULL,
  `c14` varchar(500) DEFAULT NULL,
  `c15` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `firms_in_event`
--

CREATE TABLE `firms_in_event` (
  `firm_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'ELE'),
(3, 'ELE,IT');

-- --------------------------------------------------------

--
-- Struktura tabulky `type_of_column`
--

CREATE TABLE `type_of_column` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `type_of_column`
--

INSERT INTO `type_of_column` (`id`, `type`, `alias`) VALUES
(1, 'text', 'Text'),
(2, 'date', 'Datum'),
(3, 'int', 'Číslo');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `firm`
--
ALTER TABLE `firm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subject` (`subject_id`);

--
-- Indexy pro tabulku `firms_in_event`
--
ALTER TABLE `firms_in_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firm_id` (`firm_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexy pro tabulku `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `type_of_column`
--
ALTER TABLE `type_of_column`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `columns`
--
ALTER TABLE `columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pro tabulku `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `firm`
--
ALTER TABLE `firm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `firms_in_event`
--
ALTER TABLE `firms_in_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `type_of_column`
--
ALTER TABLE `type_of_column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `firm`
--
ALTER TABLE `firm`
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

--
-- Omezení pro tabulku `firms_in_event`
--
ALTER TABLE `firms_in_event`
  ADD CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `firm_id` FOREIGN KEY (`firm_id`) REFERENCES `firm` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
