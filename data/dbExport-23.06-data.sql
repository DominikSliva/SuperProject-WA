-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 23. čen 2022, 14:00
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

--
-- Vypisuji data pro tabulku `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `time_start`, `time_end`) VALUES
(6, 'test', '', '0000-00-00 00:00:00', NULL),
(7, 'Elon', 'ghjkgh', '2022-06-09 20:57:00', NULL),
(8, 'test', 'fdghdf', '0000-00-00 00:00:00', NULL);

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

--
-- Vypisuji data pro tabulku `firm`
--

INSERT INTO `firm` (`id`, `active`, `name`, `surname`, `email`, `phone`, `subject_id`, `source`, `date_of_contact`, `date_of_2_contact`, `date_of_meeting`, `result`, `workshop`, `brigade`, `practice`, `cv`, `note`, `c12`, `c13`, `c14`, `c15`) VALUES
(1, 1, '2N', '', 'machacova@2n.cz', '', 1, 'IT', '2022-06-08', NULL, NULL, 'nebude', 'Mají plnou kapacitu', NULL, NULL, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Praesent dapibus. Donec vitae arcu. Aenean id metus id velit ullamcorper pulvinar. Nulla est. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Donec ipsum massa, ul', NULL, '', NULL, '2022-07-08'),
(2, 1, '3DTech', 'Vrbický', 'vilem.vrbicky@3dtech.cz', '', 1, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'ResidIT', 'Flata', 'martin.falta@residit.com', '', 1, 'Mandík', '2019-04-10', NULL, '2019-04-18', 'cv', ' praxe', ' workshopy', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'gitisit', 'stavjanickova', 'kamila.stavjanickova@gitisit.cz', '', 1, 'Mandík', NULL, NULL, NULL, 'Personálka', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'a1m', 'Goby', 'vladimir.goby@a1m.cz', '', 1, '', '2019-02-04', NULL, '2019-02-13', 'Sponzoring', ' cv', ' praxe', ' workshoo? Sí´tařina', 1, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'ABB s.r.o.', 'Ondřej Novák', 'ondrej.novak@cz.abb.com', '', 1, 'Praxe žáků', '2019-03-18', NULL, NULL, 'mandík', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'acantha', ' s.r.o.', '', 'kajzrova@acant', 1, 'IT', NULL, NULL, '2019-03-18', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Cool', NULL),
(8, 1, 'AČR', '', 'kariera.praha@army.cz', '', 1, '', NULL, NULL, '2019-01-11', 'máme letáčky', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'ADAX s.r.o.', 'Jiří Huml', 'kallista@adax.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, 1, 'Advanced Technology Partners s.r.o.', 'Marek Štícha', 'marek.sticha@advancedtech.cz', '', 1, 'Praxe žáků', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'AgentK', '', 'jiri.turek@agentk.cz', '', 1, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Air Bank', '', '', '420 515 202 20', 1, '', NULL, NULL, NULL, 'Dostal jsem letáčky', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Aira GROUP', '', 'romana.kaderabkova@aira.cz', '', 1, '', '2019-02-27', NULL, NULL, 'předáno výše', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Aliance', '', 'petra.kovarikova@alliance-healthcare.cz', '', 1, 'Prac. nab z portalu', '2018-11-12', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Allcomp a.s.', 'Václav Vilímek', 'vilimek@allcomp.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(16, 1, 'AlphaI', 'Ráš', 'ras@alphai.cz', '', 1, '', NULL, NULL, NULL, 'Přednáška', ' workshopyk', ' projekty', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(17, 1, 'Alza.cz', 'a.s.', 'Smidtová', 'Hana.Smidtova@', 1, 'IT', NULL, NULL, '2019-02-27', NULL, 'nechtějí', 'ne', 'ne', 1, NULL, NULL, NULL, NULL, NULL),
(18, 1, 'Elvira', 'Pajkrt', 'fpajkrt@elvira.cz', '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(19, 1, 'Ami', 'Butovič', 'oskar.butovic@ami.cz', '', 1, 'LM', '2019-02-11', NULL, NULL, NULL, 'ozve', NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'AMiTs.r.o.', 'Martin Hajer', 'hajer@amit.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, '2019-02-15', 'CV', ' praxe', 'možná', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(21, 1, 'Amtech', 'Světlík', 'm.svetlik@amtech.cz', '', 1, '', '2019-01-31', NULL, '2019-02-15', 'nedoručitelné', 'ano', 'ne', 'ne', 1, NULL, NULL, NULL, NULL, NULL),
(22, 1, 'Annexnet', 'Patrik Sychra', 'Sychra@annexnet.cz', ' 777 125 004', 1, 'IT', NULL, NULL, NULL, NULL, 'Nemá zájem zatím.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(23, 1, 'Anritsu', '', '', '(408)-778-2000', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(24, 1, 'Antee s.r.o.', 'Petr Frima', 'Antee@antee.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(25, 1, 'Apollo multimedia', '', '', '241 760 033', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(26, 1, 'Onlio', '', 'marketa.tindel@onlio.com', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(27, 1, 'Aprofes', '', 'praha@aprofes.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(28, 1, 'ASCZ', '', 'servis@ascz.cz', '', 2, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Asix s.r.o.', 'Milan Vítek', 'obchod@asix.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(30, 1, 'Assist s.r.o.', 'Vladimír Jílek', 'assist@assist.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'Přšdáno dále', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(31, 1, 'Astra Security a.s.', 'Daniel Slavíček', 'info@astrasecurity.cz', '', 2, '', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(32, 1, 'ATOS IT Solutions and Services s.r.o.', 'Martin Sůra', 'martin.sura@atos.net', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(33, 1, 'Autokont', '', 'info@autocont.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-12', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(34, 1, 'AV Media a.s.', 'Petr Hrubeš', 'alena.farberova@avmedia.cz', '', 1, ' ELE', NULL, NULL, NULL, NULL, 'cv', ' praxe', ' uvidí se', 1, NULL, NULL, NULL, NULL, NULL),
(35, 1, 'Avalon', '', 'simmrova@avalon.cz', '', 2, 'Prac. nab z portalu', '2018-11-13', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(36, 1, 'Avast Software', 'Alan Rassaby', 'milan.vlk@avast.com', '', 2, 'Praxe žáků', NULL, NULL, NULL, 'čekám... až si vše pristudují', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(37, 1, 'or-cz', '', 'orcz@orcz.cz', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(38, 1, 'AZ Eletroprojekce s.r.o.', 'Vladimír Velát', 'rosicka@azep.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(39, 1, 'Ažd Praha', '', 'seidl.ladislav@azd.cz', '', 1, ' ELE', NULL, NULL, '2019-01-29', NULL, 'nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(40, 1, 'AŽD Praha s.r.o.', 'Antonín Diviš', 'azdzte@azd.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'nejde doručit', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(41, 1, 'bacs', 'Pitelka', 'pitelka@basc.cz', '', 1, '', NULL, NULL, NULL, 'nedoručitelné', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(42, 1, 'Baader Computer spol. s r.o.', 'Karolína Klasová', 'karolina.klasova@bcpraha.com', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, '2019-04-04', 'Zatím sihneme jen CV', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(43, 1, 'Basf s.r.o.', 'Filip Dvořák', 'filip.dvorak@basf.com', '', 1, 'Praxe žáků', '2019-01-28', NULL, '2019-02-13', 'čistě chem obor', NULL, NULL, 'ne', 1, NULL, NULL, NULL, NULL, NULL),
(44, 1, 'BCV solutions s. r. o.', '', '', '602 275 444', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(45, 1, 'BitServis', '', 'prace@bitservis.cz', '', 1, 'Prac. nab z portalu', '2018-11-18', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(46, 1, 'Blue Panther s.r.o.', 'Jaroslav Smetana', 'info@blue-panther.cz', '', 2, '', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(47, 1, 'Bonicom', '', 'Jak Klepal', '', 1, 'Osobní', '2018-11-12', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(48, 1, 'Bonnett', '', 'job@bonett.cz', '', 2, 'Prac. Nab. z protálu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(49, 1, 'Bosal ČR s.r.o.', 'Jan Gregor', 'jan.gregor@bosal.com', '', 2, 'Praxe žáků', NULL, NULL, '0000-00-00', ' asi tam nepracuje', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(50, 1, 'Bosch', 'schelová', 'barbora.schelova@cz.bosch.com', '', 2, 'Pedro', '2019-02-18', NULL, '2019-03-04', 'Telefon', ' zatím v jednání', ' možná exkurze do ČB', ' příspějí na bus', 1, NULL, NULL, NULL, NULL, NULL),
(51, 1, 'aimtec', '', 'aimtec@aimtecglobal.com', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(52, 1, 'Broker Trust a.s.', 'Michal Knapp', 'iveta.novotna@brokertrust.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'Praxe', ' cv', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(53, 1, 'BSL s.r.o.', 'David Štěpánek', 'stepanek@bsl.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(54, 1, 'BSP Technology', '', 'info@bsptechnology.eu', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(55, 1, 'Businesscom a.s.', 'Michal Parkos', 'info@businesscom.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(56, 1, 'Byzance IT', '', 'tomas.zaruba@byzance.cz', '', 1, 'Prac. nab z portalu', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(57, 1, 'CA CZ s.r.o.', 'Robert Molnár', 'prague@ca.com', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'nedoručitelné', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(58, 1, 'Capitol Development', '', 'nabor@capitol.cz', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(59, 1, 'Capom', '', 'hr@capcom-sls.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(60, 1, 'CASABLANCA INT s.r.o.', '', 'obchod@casablanca.cz', '', 1, '', '2019-02-27', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(61, 1, 'CDC Data s.r.o.', 'Zdeňka Strapinová', 'zdenka.strapinova@cdc.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(62, 1, 'cegelec', 'Scalzo', 'dagmar.scalzo@cegelec.com', '', 1, ' ELE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(63, 1, 'cdn77', '', 'int@cdn77.com', '', 1, '', '2019-03-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(64, 1, 'Cegelec a.s.', 'Zdeněk Kočárek', 'cegelec@cegelec.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(65, 1, 'Celeano World s.r.o.', 'Luděk Černý', 'info@celeano.cz', '', 1, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(66, 1, 'Centrum informační společnosti s.r.o.', 'Daniela Spiesová', 'zuzana.trnkova@adem.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(67, 1, 'Ceskomoravská ss', '', 'https://jobote.com/ameeutt', '', 1, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(68, 1, 'Cetin', 'Synáčková', 'milena.synackova@cetin.cz', '', 1, 'Festival vědy', NULL, NULL, '2019-02-08', 'cv', ' exkurze', ' praxě', 'hw', 1, NULL, NULL, NULL, NULL, NULL),
(69, 1, 'Clasic CZ s.r.o.', 'Karel Čihák', 'info@clasic.cz', '', 2, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(70, 1, 'Cloudevelops', 'Strejčková', 'karolina.strejckova@cloudevelops.com', '', 1, '', NULL, NULL, NULL, 'Žáci prošli výběrovým řízením', ' ale chtěl 12h prac. dobu', NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(71, 1, 'cloudinfrastack', ' s. r. o.', '', 'hr@cloudinfras', 1, 'IT', NULL, NULL, '2018-11-09', '29.1.2019', NULL, 'nic', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(72, 1, 'CMS Consulting s.r.o.', 'Viktor Burkert', 'v.burkert@cms.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(73, 1, 'ComAp a. s.', 'Přidálková', 'lucie.pridalkova@comap-control.com', '', 1, ' ELE', NULL, NULL, NULL, '7.3.2019', NULL, 'ano', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(74, 1, 'con4PAS a.s.', 'Petr Šebesta', 'petr.sebesta@con4pas.com', '', 1, 'Praxe žáků', '2019-01-31', NULL, '2019-03-26', ' 3) Pokusím se najít čas na seminář ještě v tomto školním roce.\r\n<br>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(75, 1, 'ano', '', 'ano', '1', 1, '', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(76, 1, 'Conrad electronic', '', 'marek.konecny@conrad.cz', '', 2, '', '2019-02-27', NULL, '2019-03-27', 'CV', ' budoucí  seminář o ekonomce firmy', 'ne', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(77, 1, 'Continental Automovie Czech Rep.', 'LenkaČížková', 'lukas.tancibudek@continental-corporation.com', '', 1, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(78, 1, 'CRM Factory GmbH', 'Martin Matej', 'martin.matej@mcon-group.com', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(79, 1, 'Coolpeople', 'Miroslav Pihorňa', 'miroslav.pihorna@coolpeople.cz', '724 974 991', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(80, 1, 'creative doc', '', '', '776 372 523', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(81, 1, 'Cznet s.r.o.', '', 'info@cznet.cz', '', 1, '', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(82, 1, 'ČD Telematika a.s.', 'Vilém Štindl ', 'cdt@cdt.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(83, 1, 'capcom-sls.cz', '', 'office@capcom-sls.cz', '', 2, '', '2019-03-06', NULL, NULL, NULL, NULL, NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(84, 1, 'ČEPS', 'Šnytová', 'snytova@ceps.cz', '', 1, 'LinkedIN', NULL, NULL, '0000-00-00', ' nemají poziace pro nás', 'Nekontaktovat', ' nemají poziace pro nás', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(85, 1, 'ČEZ', 'Cačrová ', 'cacrova@cez.cz', '777 901 080', 1, 'Velich', '2019-02-13', NULL, NULL, 'Chtějí Ondru', ' čekim na termín', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(86, 1, 'Česká Pojišťovna', 'Horáková', 'Horáková Nela <nela.horakova@ceskapojistovna.cz>', '', 1, 'LM', '2019-02-05', NULL, NULL, 'CV - nechtěli dělat pozvánky', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(87, 1, 'Česká spořitelna a.s.', '', 'hr@csas.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, NULL, 'Už jsme s edomluvili?)', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(88, 1, 'Česká telekomunikační infrastruktura a.s. ', 'Milena Synáčková', 'info@cetin.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, '2019-02-08', 'cv', ' praxe', ' workshopy', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(89, 1, 'Česká televize', 'František Kovařík', 'frantisek.kovarik@ceskatelevize.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(90, 1, 'České Radiokomunikace a.s.', 'Tejkal', 'l.tejkl@cra.cz', '', 2, 'Praxe žáků', NULL, NULL, '2019-03-25', 'Cv', ' praxe?', ' workshop bude', ' zaujalil jsme je. Mají fluktuaci zaměst 5%.Pokračovat příší rok.', 1, NULL, NULL, NULL, NULL, NULL),
(91, 1, 'Český Servis a.s.', 'Ladislav Fischer', 'marek.svir@ceskyservis.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(92, 1, 'ČEZ', 'Klacián', 'martin.klacian@cez.cz', '', 2, '', '2019-01-15', NULL, NULL, 'čekám na termín', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(93, 1, 'ČEZ', 'Buff', 'máme i od velicha', '602 576 206', 2, 'Pedro', NULL, NULL, NULL, 'čekám na termín', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(94, 1, 'ČEZ Distribuce a.s.', 'Klacián', 'martin.klacián@cez.cz', '', 1, 'Praxe žáků', '2019-01-29', NULL, NULL, 'Ozve se', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(95, 1, 'ČIP plus s.r.o.', 'Petr Jícha', 'jicha@cip.cz', '', 2, '', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(96, 1, 'ČSOB', 'Gilová', 'GILLOVÁ Aneta <agillova@csob.cz>', '', 1, 'Pedro', '2019-02-18', NULL, NULL, 'Nedoručitelné', ' asi tam nepracuje', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(97, 1, 'Rejnok', '', 'František Šindelář <sindelar@rejnok.cz>', '', 2, '', '2019-04-25', NULL, NULL, 'Zkusit příští rok', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(98, 1, 'control', '', 'obchod@control.cz', '556 704 290', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(99, 1, 'D&C s.r.o.', 'Josef Dusil', 'josef.dusil@dac-sro.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(100, 1, 'Dasko Net s.r.o.', 'Jaroslav Kavalier', 'jaroslav.kavalier@daskonet.cz', '', 1, '', '2019-01-28', NULL, NULL, 'PRaxe', NULL, NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(101, 1, 'Data Interservis', '', 'janecek@datais.cz', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(102, 1, 'datahelp', '', '', '775 220 440', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(103, 1, 'Datera s.r.o.', 'Pavel Pokorný', 'pavel.pokorny@datera.cz', '', 1, '', '2019-01-28', NULL, '2019-03-19', 'cv', ' prwxe?', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(104, 1, 'Daytrip', '', 'mt@ondaytrip.com', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(105, 1, 'Dazzle s.r.o.', 'Petr Vinklář', 'petr.vinklar@dazzlepictures.net', '', 2, '', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(106, 1, 'DC4U', 'Píbr', 'zdenek.pibr@dc4u.cz', '', 1, 'Zeman', NULL, NULL, '0000-00-00', 'Přednáška', ' DMP', ' praxe', ' CV', 1, NULL, NULL, NULL, NULL, NULL),
(107, 1, 'DCO s.r.o.', 'Jaroslav Ďoubalík', 'doubalik@dco.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(108, 1, 'daytona ', '', '', '1-800-PIT-SHOP', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(109, 1, 'Definity Systems s.r.o.', 'Kopecký', 'ladislav.kopecky@definity.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, '2019-03-22', 'cv', ' praxe', 'zatím ne', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(110, 1, 'DELTACOMP', '', 'info@deltacomp.cz', '', 1, 'Prac. nab z portalu', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(111, 1, 'deilote', 'petr Viktora', '', '602 364 891', 1, 'Pedro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(112, 1, 'DHL', 'Kratochvíl', 'radek.kratochvil@dhl.com', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(113, 1, 'DELL', '', '', '225 772 711', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(114, 1, 'Diametral', '', 'info@diametral.cz', '', 2, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(115, 1, 'Dicotech s.r.o.', 'Petr Spilka', 'spilka@dicotech.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(116, 1, 'Diebold Nixdorf s.r.o.', 'Roman Kotora', 'hr.cz@dieboldnixdorf.com', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(117, 1, 'Dimension Data.', '', 'emilia.karisna@dimensiondata.com', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(118, 1, 'Dopravní podnik hl. m. Prahy', '', '', 'absolventskypr', 1, 'ELE', NULL, NULL, '2019-01-29', NULL, 'nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(119, 1, 'E-solutions s.r.o.', 'Jan Švanda', 'svanda@e-solutions.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(120, 1, 'EasySW', '', 'monika@easy.cz', '', 1, 'Prac. nab z portalu', '2018-11-13', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(121, 1, 'E.ON Česká republika', '', 'i', 'in', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(122, 1, 'Eaton Elektrotechnika s.r.o.', 'Engelsbert Hetzmannseder', 'ElektrotechnikaCZ@eaton.com', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(123, 1, 'EK-automation', 'Čeřovský', 'milan.cerovsky@ek-automation.com', '', 2, 'Prac. nab z portalu', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(124, 1, 'Elektrické systémy', 'Kubát', 'jkubat@elektronickesystemy.cz', '', 1, '', '2019-01-31', NULL, NULL, 'Chce manuálně zručné', ' tedy nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(125, 1, 'Elektroinstalace s.r.o.', 'Miroslav Černý', 'cerny@elektroinstalace.com', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(126, 1, 'Elektroline', 'Mrázek', 'Zdeněk Mrázek <mrazek@elektroline.cz>', '', 1, ' ELE', NULL, NULL, NULL, '30.08.', 'Workshopy pro žáky', ' cv', ' brigády', 1, NULL, NULL, NULL, NULL, NULL),
(127, 1, 'Elektronické systémy', '', 'info@elektronickesystemy.cz', '', 2, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(128, 1, 'Elektrotechnika', '', 'info@ekotechnika.cz', '', 2, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(129, 1, 'ELMEP', '', 'magdalena.bednarova@elmep.cz', '', 2, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(130, 1, 'Elmoz', '', 'personalni@elmoz-czech.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(131, 1, 'ElmozCzech s.r.o.', 'Petr Sevid', 'jitka.markova@elmoz-czech.cz', '', 2, 'Praxe žáků', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(132, 1, 'Eltodo a.s.', 'Bébrová', 'bebrovad@eltodo.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(133, 1, 'Elvira', '', 'fpajkrt@elvira.cz', '', 2, 'Prac. nab z portalu', '2019-01-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(134, 1, 'Energocentrum Plus s.r.o.', 'Jiří Zikmund', 'zikmund@energocentrum.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, '2019-02-12', 'Praxe', ' cv', ' sídlo v arealu FEL', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(135, 1, 'Enersys s.r.o.', 'Radek Schejbal', 'info@cz.enersys.cz', '', 2, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(136, 1, 'equabank', 'Jan Kozerovsky', 'Jan.Kozerovsky@equabank.cz', '', 1, 'LM', '2019-02-08', NULL, '2019-02-28', 'CV', ' praxe', ' možná workshop', 'možná', 1, NULL, NULL, NULL, NULL, NULL),
(137, 1, 'Ericsson s.r.o.', 'Kopecká Jitka', 'jitka.kopecka@ericsson.com', '', 1, 'Praxe žáků', '2019-01-17', NULL, '2019-03-28', 'CV', ' praxe', ' možná workshop', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(138, 1, 'Eriell Services s.r.o.', 'Karel Chmelík', 'prague@eriell.eu', '', 2, '', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(139, 1, 'ESET', '', 'eliska.nekolova@eset.cz', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(140, 1, 'EUC a.s.', '', 'hr@eucpremium.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(141, 1, 'etnetera', '', 'info@etnetera.cz', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(142, 1, 'EY', '', 'miroslava.wagnerova@cz.ey.com', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, '0000-00-00', 'Praxe možná', ' CV ne. Chtějí hlavně Vš', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(143, 1, 'Festool s.r.o.', 'Milan Čunát', 'milan.cunat@festool.com', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(144, 1, 'Formel D', '', 'recruiting-czech@formeld.com', '', 2, 'Prac. nab z portalu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(145, 1, 'Formica Group s.r.o.', 'Petra Recová', 'prace@formicagroup.cz', '', 1, '', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(146, 1, 'FORTUNA ', 'Holubařová', 'holubarova.anna@ifortuna.cz', '', 1, '', '2019-02-27', NULL, NULL, 'Ozvat se v září', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(147, 1, 'firmy z www.iqrfsummit.org.', '', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(148, 1, 'FOTE', '', 'info@fote.eu', '', 2, 'Prac. Nab. z protálu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(149, 1, 'Foxconn', '', 'jkratochvilova@foxconn.cz', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(150, 1, 'Fronius', '', 'careers.cz@fronius.com', '', 2, 'Prac. Nab. z protálu', '2018-11-08', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(151, 1, 'FSPNET s r.o.', 'Tomáš Kláštérka', 'klasterka@fspnet.cz', '', 1, '', '2019-01-29', NULL, NULL, 'cV', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(152, 1, 'Fujitsu Technology Solutions s.r.o.', 'Jiří Řehák', 'michaela.klouckova@ts.fujitsu.com', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'neplatná adresa', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(153, 1, 'Cubeteam', 'Vrána', 'dan.vrana@cubeteam.eu', '', 1, 'Memos', '2019-04-18', NULL, '2019-04-29', 'praxe', ' praxe', ' cv', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(154, 1, 'GatingServices a.s.', 'Dan Jež', 'pavla.sulakova@gatingservices.cz', '', 2, '', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(155, 1, 'GEAC', 'Pasková', 'michaela.paskova@ge.com', '', 1, ' ELE', NULL, NULL, NULL, NULL, 'CV', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(156, 1, 'Gema s.r.o.', 'Miloslav Šedivý', 'sedivy@gema.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(157, 1, 'Generali Pojišťovna a.s.', '', 'recruitment.cz@generali.com', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(158, 1, 'Green Center', '', 'alzbeta.brtnova@green.cz', '', 1, ' ELE', NULL, NULL, '2019-01-31', '21.3.2019', 'Budou asi workshopy', ' zaujal jsem je.', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(159, 1, 'Heidenhain s.r.o.', 'Jan Štědrý', 'heidenhain@heidenhain.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(160, 1, 'Glass Cyber Solutions', '', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(161, 1, 'Hays Czech Republic', ' s.r.o.', '', 'prague@hays.cz', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(162, 1, 'Hewlett Packart Enterprise', 'Martin Petrák', 'martin.petrak@hpe.com', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, 'předáno na HR', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(163, 1, 'chytryregal.cz', 'Pejšová', 'katerina.pejsova@senselytics.com', '', 1, 'ELE', NULL, NULL, NULL, '21.1.2019', 'Výtečný - budou i projekty pro 2. pololetí', ' chtějí i kodéry', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(164, 1, 'Impression Media s.r.o.', 'Roman Stolejda', 'roman.stolejda@mmmedia.cz', '', 1, 'Praxe žáků', '2019-02-04', NULL, '2019-02-20', 'dělají náborové kampaně', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(165, 1, 'Honeywell', '', '', '480-353-3020', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(166, 1, 'HP', '', '', '420 239 016 39', 1, '', NULL, NULL, '0000-00-00', 'oozvalllisee', ' přippomeenout se', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(167, 1, 'Income s.r.o.', 'Jakub Baborák', 'j.baborak@income.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(168, 1, 'Indukce s.r.o.', 'Tomáš Zeman', 'zeman@indukce.cz', '420-272-131-11', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(169, 1, 'IBM', '', '', '', 1, '', NULL, NULL, '0000-00-00', 'Zařídí Mandík', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(170, 1, 'iNELS inteligentní elektroinstalace', 'Hofman', 'hofman@inels.cz', '', 1, '', '2019-02-05', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(171, 1, 'Innogy', 'Hesová', 'Hesova@innogy.com', '', 2, '', '2019-02-02', NULL, '2019-02-12', 'Semináře pro žáky', ' 2 na praxi - ty nadšené', ' někdo se jim bude opravdu věnova', ' nabídka exkurze - plynaři', 1, NULL, NULL, NULL, NULL, NULL),
(172, 1, 'Instalace Praha', 'Jaroslav Štoček', 'stocek@instalace.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(173, 1, 'Indsoft', 'Lukáš Sedláček', '', '284 693 900', 1, '', '2019-01-17', NULL, NULL, 'Ozvat se na jaře - ba příští šr', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(174, 1, 'Intedo s.r.o.', 'Jiří Zahradníček', 'manaqement@intedo.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(175, 1, 'IPsecurity s.r.o.', 'Pavel Skřivánek', 'skrivanek@ipsecurity.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(176, 1, 'IRQF', '', 'ivona.spurna@iqrf.org', '', 2, 'LM', '2019-02-06', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(177, 1, 'IVService', '', 'ph@ivservice.cz', '', 2, 'Prac. nab z portalu', '2018-11-12', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(178, 1, 'Janus data products', 'Vladimír Doležal', 'info@janus.cz', '', 1, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(179, 1, 'ISP AG', '', '', '31 930 46 46', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(180, 1, 'HE3DA s.r.o.', 'Radomír Starý ', 'stary@he3da.cz', '', 2, 'LM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(181, 1, 'Jablotron', '', '', '800 900 096', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(182, 1, 'IFA Services', ' s. r. o.\r\n<br>', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(183, 1, 'Ing. Vít Novotný', 'vit.novotny@ifaservices.cz', '', 'IT', 1, '15.5.', NULL, NULL, '0000-00-00', NULL, 'ano', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(184, 1, 'Artin', '', 'veronika.zosincukova@artin.cz', '604 152 456', 1, 'LM', '2019-11-18', NULL, NULL, 'Dobré', ' budou ws', ' projetky aj.', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(185, 1, 'Jebrains', '', '', '2 4172 2501', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(186, 1, 'Johnson & Johnson', '', '', '420 227 007 00', 1, '', NULL, NULL, NULL, 'Nechtějí nás', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(187, 1, 'KB', '', 'pavel_jirak@kb.cz', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(188, 1, 'K2', '', '', '595 135 110', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(189, 1, 'Kodys', '', 'jana.zidkova@kodys.cz', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, 'kontaktovat v září', NULL, 'ano', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(190, 1, 'con4PAS', '', 'petr.sebesta@con4pas.com', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(191, 1, 'Kosina', '', 'INFO@KOSINA.EU', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(192, 1, 'Krugostav', '', 'info@krugo.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(193, 1, 'Langard s.r.o.', 'Petr Kult', 'info@langard.cz', '', 2, '', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(194, 1, 'LMC', '', 'pomuzeme@lmc.eu', '', 1, '', '2019-02-04', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(195, 1, 'Lukapo', 'Lukáš Pour', 'lukas@lukapo.cz', '', 1, 'Prac. nab z portalu', NULL, NULL, NULL, '2x zrušeno', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(196, 1, 'M&M Elstav s.r.o.', 'Miroslav Šefl', 'Sefl@mmelstav.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(197, 1, 'Lenovo', '', '', '420 800 353 63', 1, '', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(198, 1, 'LMC', '', 'tomas.dombrovsky@lmc.eu', '224 810 053', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(199, 1, 'manuvia', '', 'sales@manuvia.com', '', 1, '', '2019-02-02', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(200, 1, 'MAXPROGRES', 'Kozlovský', 'vadim.kozlovsky@maxprogres.cz', '', 2, 'Prac. nab z portalu', NULL, NULL, NULL, 'Workshopy', ' cv', ' praxe', ' Bílek', 1, NULL, NULL, NULL, NULL, NULL),
(201, 1, 'MBtech Bohemia/ AKKA', 'Bilíková', 'BILIKOVA Sarka <Sarka.BILIKOVA@akka.eu>', '', 2, 'Prac. nab z portalu', '2019-01-28', NULL, '2019-03-25', 'cv', ' praxe', ' později workshopy.Darují časem PC', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(202, 1, 'made4net', 'Štefl', 'tomas.stefl@made4net.com', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(203, 1, 'Fanuc', '', 'Tomas.Vlach@fanuc.eu', '', 2, 'Pavlík', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(204, 1, 'Memos software', 'Andrej Bykadarov', 'tadeas.matousek@memos.cz', '', 1, '', '2019-01-28', NULL, '2019-02-18', 'WORKSHop možní', ' cv', ' praxe', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(205, 1, 'Meriis s.r.o.', 'Jiří Zahradníček', 'info@meriis.cz', '', 1, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(206, 1, 'McKisney', '', '', '(2) 2141 4111', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(207, 1, 'Metallife s.r.o.', 'Antonín Kundrát', '', '', 1, '', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(208, 1, 'Microsoft', 'Klatovský', 'Karel Klatovsky <Karel.Klatovsky@microsoft.com>', '', 1, '', '2019-01-31', NULL, '2019-02-26', 'skype hovor', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(209, 1, 'Mineus s.r.o.', 'Mirko Nedeljkovič', 'adela@mineus.net', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(210, 1, 'Miricom s.r.o.', 'Miroslav Vrána', 'vrana@miricom.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(211, 1, 'Mironet', '', 'personalni@mironet.cz', '', 1, 'Prac. nab z portalu', '2018-11-12', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(212, 1, 'Misan s.r.o.', 'Ondřej Svoboda', 'o.svoboda@misan.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(213, 1, 'Monerta', '', 'radka.pekelska@moneta.cz', '', 1, 'Pedro', '2019-02-18', NULL, NULL, 'Nepracuje tam', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(214, 1, 'MV', '', 'pinto.k@seznam.cz', '', 1, 'Prac. nab z portalu', '2018-11-12', NULL, NULL, 'ano', ' zprostředovává pro státní firmy', ' až něvo bude', ' tak se ozve.', 1, NULL, NULL, NULL, NULL, NULL),
(215, 1, 'MVision Čech Republic a.s.', 'Berislav Ćupić', 'cz.office@nvision.com', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(216, 1, 'Myq Solution', 'Sluková', 'petra.slukova@myq-solution.com', '', 1, 'Prac. nab z portalu', '2018-11-16', NULL, '2018-12-12', 'CV', ' praxe', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(217, 1, 'NEATOUS', '', 'jan.hajek@neatous.cz', '', 1, 'Prac. nab z portalu', '2018-11-16', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(218, 1, 'Moneta', '', '', '224 443 636', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(219, 1, 'Neit Consulting', 'Šimek', 'Šimek', ' Vlastimil <vl', 1, 'IT', NULL, NULL, NULL, NULL, 'Čekám na odpověď.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(220, 1, 'Nestlé', '', 'zuzana.nemcova@cz.nestle.com', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(221, 1, 'Nielsen Admosphere', '', 'jobs@admosphere.cz', '', 1, 'Prac. nab z portalu', '2018-11-16', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(222, 1, 'No 77', '', 'Andrea.melkesova@no77.eu', '', 2, 'Prac. nab z portalu', '2019-01-28', NULL, '2019-02-13', 'Doporučí n ám firmy', ' chtějí cv', ' nácvik pohovorů', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(223, 1, 'Notservis a.s.', 'Jan Šešina', 'jan.šešina@notservis.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(224, 1, 'Novatec', 'Birnerová', 'sekretariat@novatec-eas.cz', '', 1, 'Prac. nab z portalu', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(225, 1, 'O2 IT services', 'Rysková', 'hana.ryskova@o2.cz', ' pavel.ducho@o', 1, '', NULL, NULL, NULL, '14.3.', NULL, 'možná', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(226, 1, 'Nubium Development SE', '', 'kontakt@ nubium.cz', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(227, 1, 'Obis', '', 'simona.bogasova@obis.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-09', NULL, '0000-00-00', 'promyslí workshopy', NULL, 'ano', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(228, 1, 'OG Soft s.r.o.', 'Jaroslav Kopecký', 'kopecky@ogsoft.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(229, 1, 'Onlio', '', 'marketa.tindel@onlio.com', '', 1, 'Prac. Nab. z protálu', '2018-11-09', NULL, '0000-00-00', 'cv', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(230, 1, 'Open Text s.r.o.', 'Martin Vogel', 'mvogel@opentext.com', '', 1, '', '2019-01-28', NULL, NULL, 'zatím chtějí je bc.', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(231, 1, 'PČR', 'Hospůdka', 'milan.hospodka@pcr.cz', '', 1, '', '2019-02-04', NULL, '2019-03-01', 'Schůzka proběhla', ' předávám texty pro jednání s nadřízženým. Problém je v GDPR', 'v listopadu', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(232, 1, 'Penta Trading s.r.o.', 'Pravenec', 'mpravenec@penta-edm.cz', '', 2, 'Praxe žáků', '2019-01-29', NULL, '0000-00-00', 'bude schůzka', 'ano', 'ano', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(233, 1, 'PHOTON ENERGY GROUP', '', 'careers@photonenergy.com', ' Dagmar Masopu', 1, '', NULL, NULL, '2018-11-12', '29.1.2019', NULL, 'Ozvat se v lednu', ' volal mi manažer', 1, NULL, NULL, NULL, NULL, NULL),
(234, 1, 'PixelMate', '', 'info@pixelmate.cz', ' novotny@pixel', 1, 'IT', NULL, NULL, NULL, '28.11.', 'Měli jen požadavek na to jaké máme učit prog. web jazyky', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(235, 1, 'Power- Energo s.r.o.', 'Radim Hrubý', 'hruby@power-energo.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(236, 1, 'Prague Precision Engineering', 'Martin Tietenbach', 'mt@prague-pem.com', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(237, 1, 'PRE Pražská energetika a.s.', 'Mgr. Lenka Dvořáková', 'lenka.dvorakova@pre.cz', '', 1, 'Praxe žáků', NULL, NULL, '0000-00-00', 'schůzka', ' nakonec poslali jen personailivané pozvánky', 'ano', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(238, 1, 'Process Automation Solutions s.r.o.', '', '<Vladimira.Taberyova@pa-ats.com>', '', 1, ' ELE', NULL, NULL, '2019-01-29', '14.2.2019', 'Praxe letos ne', ' CV ano', ' workshop', 1, NULL, NULL, NULL, NULL, NULL),
(239, 1, 'PrimeRevenue', '', '228 882 638', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(240, 1, 'Pronix', '', 'lenka.vancova@pronix.cz', '', 2, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(241, 1, 'Prusa Research s.r.o.', 'Michal Průša', 'info@prusa3d.cz', '', 2, '', '2019-02-27', NULL, NULL, 'Tento rok nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(242, 1, 'ATOS', 'Vaněk', 'Jan.Vanek@atos.net', '', 1, '', '2019-03-13', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(243, 1, 'pwc', '', 'andrea.linhartova.palanova@cz-pwc.com', '', 1, 'Pedro', '2019-02-18', NULL, NULL, ' ', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(244, 1, 'Raiffeisenbank', '', 'info@rb.cz', '', 1, '', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(245, 1, 'R4U s.r.o.', 'Branislav Jánsky', 'r4u@r4u.cz', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(246, 1, 'Redhat', '', 'contact-sales-czsk@redhat.com', '', 1, '', '2019-02-02', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(247, 1, 'Rejnok s.r.o.', 'František Šindelář', 'sindelar@rejnok.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(248, 1, 'Repic soft s.r.o.', 'Jan Vlasák', 'jan.vlasak@repicsoft.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(249, 1, 'Riganti s.r.o.', 'Pavel Herceg', 'pavel.herceg@riganti.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(250, 1, 'Rotorama s.r.o.', 'Jan Mittner', 'jan@rotorama.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(251, 1, 'RT Technik s.r.o.', 'Petr Tikal', 'tikal@rttechnik.cz', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(252, 1, 'S a T CZ', '', 'personalni@sntcz.cz', '', 1, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(253, 1, 'Rockwell Automation s.r.o.', 'Jan Bezdíček', '', '284 015 901', 1, 'Praxe žáků', NULL, NULL, NULL, 'Nenalezen kontakt', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(254, 1, 'S.I.C. spol.s.r.o.', 'Robert Latýn', 'rlatyn@sic.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(255, 1, 'SAzka', '', 'Lukas.jelinek@sazka.cz', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(256, 1, 'Senselytics', 'Pejšová', 'katerina.pejsova@senselytics.com\r\n<br>', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(257, 1, 'SEznam.cz', '', 'kariera@firma.seznam.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-09', NULL, NULL, 'Ozvou se', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(258, 1, 'Shiva Motoshop KTM', 'Ondřej Šimek', 'info@shivamotoshop.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(259, 1, 'Schenker s.r.o.', 'Tomáš Holomoucký', 'tomas.holomoucky@schenker.cz', '', 2, '', '2019-02-04', NULL, NULL, 'Předáno na HR', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(260, 1, 'schrack', '', 'p.chroust(at)schrack.cz', '', 1, 'Mandík', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(261, 1, 'Schrack technik', '', 'r.knourkova@schrack.cz', '', 2, 'Festival vědy', '2018-11-12', NULL, NULL, 'Jen Elektro', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(262, 1, 'Sidat s.r.o.', 'Radim Novotný', 'petra.majerova@sidat.cz', '', 2, 'Velich', '2019-01-28', NULL, NULL, NULL, NULL, NULL, 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(263, 1, 'Siemens', 'Jelínek', 'alena.tomiskova@siemens.com', '', 1, ' ELE', NULL, NULL, '2019-01-29', '20.3.2019', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(264, 1, 'Siemens', 'tomišková', 'alena.tomiskova@siemens.com', '', 1, 'Pedro', '2019-02-28', NULL, '2019-03-20', 'zaujal jsem je', ' zatím nic', ' nemají studentské pozice', 'ne', 1, NULL, NULL, NULL, NULL, NULL),
(265, 1, 'SkySelect', '', 'praha@skyselect.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(266, 1, 'Slavia Pojišťovna a.s.', 'Michal Hrdlička', 'michal.hrdlicka@slavia-pojistovna.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, '2019-02-07', 'cv', ' ???', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(267, 1, 'Smart One s.r.o.', 'Michal Firyt', 'm.firyt@smart1.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(268, 1, 'SOITRON s.r.o.', 'Michal Novák', 'michal.novak@soitron.com', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(269, 1, 'SPC-net s.r.o.', 'Martin Novák', 'info@spc-net.cz', '', 2, '', '2019-01-29', NULL, '2019-03-18', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(270, 1, 'Spel a.s.', 'Jiří Svoboda', 'info@spel.cz ', '', 2, '', '2019-01-28', NULL, '2019-03-18', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(271, 1, 'Spinoco', '', 'zuzana@spinoco.com', '', 1, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(272, 1, 'Sprinx Systems a.s.', 'Mgr. Tereza Janečková', 'tereza.janeckova@sprinx.com', '', 1, '', '2019-01-29', NULL, '2019-02-06', 'Ceny pronájů zjistit', NULL, NULL, 'možná', 1, NULL, NULL, NULL, NULL, NULL),
(273, 1, 'st', 'Kulhánková', 'eva.kulhankova@st.com', '', 1, ' ELE', NULL, NULL, NULL, '12.2.2019', 'Dodají zařízení', ' 2-3 žáci. Vána půjde na workshop. Předáno Váňovi', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(274, 1, 'Stardust', '', 'ozsp@stardust.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(275, 1, 'Spolužáci ze střední', '', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(276, 1, 'Strojmetal Aluminium Forging s.r.o.', 'Miroslav Jelínek', 'smrckova@strojmetal.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(277, 1, 'tipsport', '', '', '702 025 110', 1, '', '2019-05-13', NULL, NULL, 'Nechtějí nás', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(278, 1, 'suoerhosting', '', '', 'obchod@superho', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(279, 1, 'škoda', 'Antošová', '', '604 292 250', 1, 'Pedro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(280, 1, 'škoda transpotation', 'Prat', '', '605 548 391', 1, 'Pedro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(281, 1, 'T-mobile', 'Králová', 'usula.kralova@t-mobile.cz', '800 73 73 33', 1, 'Pedro', '2019-02-18', NULL, NULL, 'Nejde doručit', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(282, 1, 'Tactica s.r.o.', 'Miroslav Prkna', 'miroslav.prkna@tactica.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, 'Personálka', ' nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(283, 1, 'talentica', '', 'info@talentica.cz', '', 1, '', '2019-01-31', NULL, NULL, 'Personálka', ' nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(284, 1, 'TECHart systems s.r.o.', '', 'kourim@techart.cz', '', 1, 'Prac. Nab. z protálu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(285, 1, 'Temo-Telekomunikace a.s.', 'Michal Setnický', 'temo@temo.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(286, 1, 'THINline s.r.o.', '', 'info@thinline.cz', '', 1, '', '2019-01-31', NULL, '2019-03-18', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(287, 1, 'Texas Instruments CZ', ' s.r.o.', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(288, 1, 'Tiscom s.r.o.', 'Petr Vojtíšek', 'vojtisek@tiscom.cz', '', 2, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(289, 1, 'TP link', '', 'martina.sedlackova@tp-link.com', '', 1, '', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(290, 1, 'TRASK Solutions a.s.', 'Filip Tománek', 'ftomanek@trask.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(291, 1, 'tritiumsystems', 'Šmerda', 'tomsmerda@tritiumsystems.cz', '', 2, 'Mandík', '2019-01-22', NULL, '2019-01-29', 'Jednání', ' 2 lidi na praxi', ' PLC', ' aktualizace vybavení', 1, NULL, NULL, NULL, NULL, NULL),
(292, 1, 'TUV - SUD', '', 'info@tuv-sud.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nemaji zajem', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(293, 1, 'Unicontrols a.s.', 'Antonín Felber', 'unic@unicontrols.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(294, 1, 'unicorn', 'kolář', 'vigour@vigour.cz', '', 1, 'Pedro', '2019-02-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(295, 1, 'UniCredit Business ntegrated Sol', 'Jitka Jirková', 'vlasta.bucilova@unicreditbank.cz', '', 1, '', '2019-01-28', NULL, NULL, 'nejde doručit', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(296, 1, 'Unimed', '', 'info@unimed.cz', '', 2, 'Prac. nab z portalu', '2018-11-09', NULL, NULL, 'nic', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `firm` (`id`, `active`, `name`, `surname`, `email`, `phone`, `subject_id`, `source`, `date_of_contact`, `date_of_2_contact`, `date_of_meeting`, `result`, `workshop`, `brigade`, `practice`, `cv`, `note`, `c12`, `c13`, `c14`, `c15`) VALUES
(297, 1, 'Universal Production Partners', ' a.s.', '', '', 1, '', NULL, NULL, NULL, NULL, 'Asi nic', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(298, 1, 'UPC Česká republika s.r.o.', 'Holý', 'Marian.Holy@upc.cz', '', 1, '', '2019-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(299, 1, 'V MBtech Bohemia/ AKKA', 'Jašková', 'martina.jaskova@mbtech-group.com', '', 2, 'Prac. nab z portalu', NULL, NULL, NULL, 'Nedoručitelné', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(300, 1, 'Valeo', 'Kostlivy', 'matous.kostlivy@valeo.com', '', 2, 'Den vědy', '2018-11-05', NULL, '2019-02-14', 'Poslat: IT', ' popis oborů', ' j-sat', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(301, 1, 'Videoprogress servis', 'Milan Machulda', 'servis@videoprogress.cz', '', 2, 'Praxe žáků', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(302, 1, 'Veeam', '', '', '420 226 251 81', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(303, 1, 'Vodafone', 'Kožová', 'lucie.kozova@vodafone.cz', '', 1, 'Mandík', '2018-10-24', NULL, '2018-10-24', 'Workshop 5.12.', 'ano', 'ano', 'ano', 1, NULL, NULL, NULL, NULL, NULL),
(304, 1, 'Volvo Group ', 'Robert Grozdanovski', 'info.cz@volvo.cz', '', 2, 'Praxe žáků', '2019-01-29', NULL, NULL, 'Nedoručitelné', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(305, 1, 'VS hosting', 'Egedová', 'Michaela Egedová <egedova@vshosting.cz>', '', 1, 'Prac. nab z portalu', '2019-02-04', NULL, '0000-00-00', 'nebude', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(306, 1, 'Výtahy Praha ČR s.r.o.', '', 'info@vytahypraha.cz', '', 2, 'Praxe žáků', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(307, 1, 'Winsite a.s.', 'Jan Klíma', 'jan.klima@winsite.cz', '', 1, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(308, 1, 'Yaskawa Czech s.r.o.', 'Andrej Gornik', 'andrej.gornik@yaskawa.eu.com', '', 2, 'Praxe žáků', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(309, 1, 'Zerot s.r.o.', 'Lukáš Šťastný', 'info@zerot.cz', '', 2, '', '2019-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(310, 1, 'ZPA Smart Energy a.s.', 'Petr Přívratský', 'petr.privratsky@zpa.cz', '', 1, '', '2019-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(311, 1, 'ZF group', '', '', '49 7541 77-0', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(312, 1, 'ÚJV Řeš', '', 'jiri.stastny1@ujv.cz', '', 2, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(313, 1, 'Computer System Group', '', 'pronajmy@computersystem.cz', '', 2, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(314, 1, 'Unitronics', '', 'sobanski@unitronics.cz', '', 1, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(315, 1, 'EYELEVEL s.r.o.', 'Hrunek', 'dusan.hrunek@computersystem.cz', '221 890 578', 1, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(316, 1, 'KAPA Services s.r.o.', '', 'karel.polak@servismobilu.eu \r\n<br>', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(317, 1, 'IFA SErvices', '', 'vit.novotny@ifaservices.cz', '', 1, 'LM', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(318, 1, 'interconnect.cz', 'Mezihorak', ' nebo Cerveny', 'Mezihorak@inte', 1, 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(319, 1, 'ujezd.net', '', 'kariera@abak.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(320, 1, 'JM-Net z.s.', '', 'info@jmnet.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(321, 1, 'ELDATA Pražská s.r.o.', '', 'ivana.kuvikova@eldata.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(322, 1, 'Rychlý drát', ' s.r.o.', '', 'info@rychlydra', 1, 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(323, 1, 'AspectWorks', '', 'jobs@aspectworks.com', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(324, 1, 'CRV', '', 'lenka.pelcova@crvcz.cz', '', 1, 'Prac. nab z portalu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(325, 1, 'HQS-net', '', 'jana.brodska@hqs-net.cz', '', 1, 'Mandík', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(326, 1, 'blue-infinity s. r. o.', '', 'nina.moravcova@dentsuaegis.com', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(327, 1, 'CA Technologies', '', 'audyova@codasip.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(328, 1, 'Evropské hodnoty o. s.', '', 'info@evropskehodnoty.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(329, 1, 'EXON s.r.o.', '', 'petra.zouboubkova@exon.cz', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(330, 1, 'FEI part of Thermo Fisher Scientific', '', 'jobs.brno@thermofisher.com', '', 1, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(331, 1, 'Festool s.r.o', '', 'kariera@festool.com', '', 2, 'Registrpraxi', '2019-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(332, 1, 'KEYENCE International', '', '', '222 191 483', 1, 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(333, 1, 'WI', '', 'adela.furikova@web-integrator.cz', '', 1, 'Mandík', '2019-05-13', NULL, '2019-05-15', 'CV tento rok', ' zbytek přští', ' obávají se žáků', ' co něco neumějí.', 1, NULL, NULL, NULL, NULL, NULL),
(334, 1, 'GIT Cunsult czech sro', '', 'lenka.soukupova@gitisit.cz', '', 1, 'Registrpraxi', '2019-05-13', NULL, '2019-05-10', 'Personálka', ' spolupracuje s Gnerelii', ' nabídka pohovotů', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(335, 1, 'certicon', 'Mgr. Markéta Kaňka', 'marketa.kanka@certicon.cz', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(336, 1, 'Profiber', '', 'barbora.hladikova@profiber.eu', '', 1, '', NULL, NULL, NULL, 'Ozvat se v srpnu', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(337, 1, 'Tacticaware', '', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(338, 1, 'MyCom Solutions', ' s.r.o.', '', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `firms_in_event`
--

CREATE TABLE `firms_in_event` (
  `firm_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `firms_in_event`
--

INSERT INTO `firms_in_event` (`firm_id`, `event_id`, `id`) VALUES
(1, 6, 1),
(9, 6, 2),
(1, 7, 3),
(9, 7, 4),
(241, 8, 5);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `firm`
--
ALTER TABLE `firm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT pro tabulku `firms_in_event`
--
ALTER TABLE `firms_in_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
