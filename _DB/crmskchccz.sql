-- Adminer 4.8.1 MySQL 5.5.5-10.5.15-MariaDB-0+deb11u1-log dump

create database superprojekt;
use superprojekt;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `columns` (`id`, `name`, `type`) VALUES
(14,	'Pozn 2022',	1),
(15,	'NEkontaktovat',	3),
(16,	'Počet WS 21/22',	3),
(17,	'Schůzka 2022',	3),
(18,	'Sponzor. dar 21/22',	1),
(19,	'Email2',	1),
(20,	'Praxe22',	3),
(21,	'Kontakt září 22',	2),
(22,	'LinkedIN',	1),
(23,	'WS 22/23',	3),
(24,	'Sponzor. dar 22/23',	3);

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `subject` (`id`, `name`) VALUES
(1,	'IT'),
(2,	'ELE'),
(3,	'ELE,IT');


DROP TABLE IF EXISTS `firm`;
CREATE TABLE `firm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `c14` varchar(500) DEFAULT NULL,
  `c15` varchar(500) DEFAULT NULL,
  `c16` varchar(500) DEFAULT NULL,
  `c17` varchar(500) DEFAULT NULL,
  `c18` varchar(500) DEFAULT NULL,
  `c19` varchar(500) DEFAULT NULL,
  `c20` varchar(500) DEFAULT NULL,
  `c21` varchar(500) DEFAULT NULL,
  `c22` varchar(500) DEFAULT NULL,
  `c23` varchar(500) DEFAULT NULL,
  `c24` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subject` (`subject_id`),
  CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `firm` (`id`, `active`, `name`, `surname`, `email`, `phone`, `subject_id`, `source`, `date_of_contact`, `date_of_2_contact`, `date_of_meeting`, `result`, `workshop`, `brigade`, `practice`, `cv`, `note`, `c14`, `c15`, `c16`, `c17`, `c18`, `c19`, `c20`, `c21`, `c22`, `c23`, `c24`)
VALUES
(1,	1,	'2N',	'',	'zajicek@2n.com',	'',	1,	'IT',	NULL,	NULL,	NULL,	'nebude',	'Mají plnou kapacitu',	NULL,	NULL,	1,	'machacova@2n.cz',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2,	1,	'3DTech',	'Vrbický',	'vilem.vrbicky@3dtech.cz',	'',	1,	'Praxe žáků',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(3,	1,	'ResidIT',	'Flata',	'martin.falta@residit.com',	'',	1,	'Mandík',	'2019-04-10',	NULL,	'2019-04-18',	'cv',	' praxe',	' workshopy',	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(4,	1,	'gitisit',	'stavjanickova',	'kamila.stavjanickova@gitisit.cz',	'',	1,	'Mandík',	NULL,	NULL,	NULL,	'Personálka',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(5,	1,	'a1m',	'Goby',	'vladimir.goby@a1m.cz',	'',	1,	'',	'2019-02-04',	NULL,	'2019-02-13',	'Sponzoring',	' cv',	' praxe',	' workshoo? Sí´tařina',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(6,	1,	'ABB s.r.o.',	'Ondřej Novák',	'ondrej.novak@cz.abb.com',	'',	1,	'Praxe žáků',	'2019-03-18',	NULL,	NULL,	'mandík',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'f',	NULL),
(8,	1,	'AČR',	'',	'kariera.praha@army.cz',	'',	1,	'',	NULL,	NULL,	'2019-01-11',	'máme letáčky',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(9,	1,	'ADAX s.r.o.',	'Jiří Huml',	'kallista@adax.cz',	'',	2,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(10,	1,	'Advanced Technology Partners s.r.o.',	'Marek Štícha',	'marek.sticha@advancedtech.cz',	'',	1,	'Praxe žáků',	'2019-01-31',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(12,	1,	'Air Bank',	'',	'',	'420 515 202 20',	1,	'',	NULL,	NULL,	NULL,	'Dostal jsem letáčky',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(13,	1,	'Aira GROUP',	'',	'romana.kaderabkova@aira.cz',	'',	1,	'',	'2019-02-27',	NULL,	NULL,	'předáno výše',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(14,	1,	'Aliance',	'',	'',	'',	1,	'Prac. nab z portalu',	'2018-11-12',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	'petra.kovarikova@alliance-healthcare.cz - nefunguje',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(15,	1,	'Allcomp a.s.',	'Václav Vilímek',	'vilimek@allcomp.cz',	'',	2,	'Praxe žáků',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(17,	1,	'Alza.cz',	'a.s.',	'Smidtová',	'Hana.Smidtova@',	1,	'IT',	NULL,	NULL,	'2019-02-27',	NULL,	'nechtějí',	'ne',	'ne',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(18,	1,	'Elvira',	'Pajkrt',	'fpajkrt@elvira.cz',	'',	2,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'ano',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(20,	1,	'AMiTs.r.o.',	'Martin Hajer',	'hajer@amit.cz',	'',	2,	'Praxe žáků',	'2019-01-28',	NULL,	'2019-02-15',	'CV',	' praxe',	'možná',	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(21,	1,	'Amtech',	'',	'',	'',	1,	'',	'2019-01-31',	NULL,	'2019-02-15',	'nedoručitelné',	'ano',	'ne',	'ne',	1,	'm.svetlik@amtech.cz neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(22,	1,	'Annexnet',	'Patrik Sychra',	'',	' 777 125 004',	1,	'IT',	NULL,	NULL,	NULL,	NULL,	'Nemá zájem zatím.',	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(24,	1,	'Antee s.r.o.',	'Petr Frima',	'Antee@antee.cz',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2022-10-11',	NULL,	NULL,	NULL),
(25,	1,	'Apollo multimedia',	'',	'',	'241 760 033',	1,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(27,	1,	'Aprofes',	'',	'praha@aprofes.cz',	'',	1,	'Prac. Nab. z protálu',	'2018-11-08',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(28,	1,	'ASCZ',	'',	'servis@ascz.cz',	'',	2,	'Prac. nab z portalu',	'2018-11-08',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(29,	1,	'Asix s.r.o.',	'Milan Vítek',	'obchod@asix.cz',	'',	2,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(30,	1,	'Assist s.r.o.',	'Vladimír Jílek',	'assist@assist.cz',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	'Přšdáno dále',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(31,	1,	'Astra Security a.s.',	'Daniel Slavíček',	'info@astrasecurity.cz',	'',	2,	'',	'2019-01-29',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(32,	1,	'ATOS IT Solutions and Services s.r.o.',	'Martin Sůra',	'martin.sura@atos.net',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Jan.Vanek@atos.net',	NULL,	NULL,	NULL,	NULL,	NULL),
(35,	1,	'Avalon',	'',	'',	'',	2,	'Prac. nab z portalu',	'2018-11-13',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	'simmrova@avalon.cz - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(36,	1,	'Avast Software',	'Alan Rassaby',	'',	'',	2,	'Praxe žáků',	NULL,	NULL,	NULL,	'čekám... až si vše pristudují',	NULL,	NULL,	NULL,	1,	'milan.vlk@avast.com - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(37,	1,	'or-cz',	'',	'orcz@orcz.cz',	'',	1,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(38,	1,	'AZ Eletroprojekce s.r.o.',	'Vladimír Velát',	'rosicka@azep.cz',	'',	2,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(40,	1,	'AŽD Praha s.r.o.',	'Antonín Diviš',	'azdzte@azd.cz',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	'nejde doručit',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'https://www.linkedin.com/in/marie-jirusova/',	NULL,	NULL),
(41,	1,	'bacs',	'',	'',	'',	1,	'',	NULL,	NULL,	NULL,	'nedoručitelné',	NULL,	NULL,	NULL,	1,	'pitelka@basc.cz - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(42,	1,	'Baader Computer spol. s r.o.',	'Karolína Klasová',	'karolina.klasova@bcpraha.com',	'',	1,	'Prac. nab z portalu',	'2018-11-09',	NULL,	'2019-04-04',	'Zatím sihneme jen CV',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(43,	1,	'Basf s.r.o.',	'',	'',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	'2019-02-13',	'čistě chem obor',	NULL,	NULL,	'ne',	1,	'filip.dvorak@basf.com - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(45,	1,	'BitServis',	'',	'prace@bitservis.cz',	'',	1,	'Prac. nab z portalu',	'2018-11-18',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(46,	1,	'Blue Panther s.r.o.',	'Jaroslav Smetana',	'info@blue-panther.cz',	'',	2,	'',	'2019-01-29',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(47,	1,	'Bonicom',	'',	'Jak Klepal',	'',	1,	'Osobní',	'2018-11-12',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(48,	1,	'Bonnett',	'',	'job@bonett.cz',	'',	2,	'Prac. Nab. z protálu',	'2018-11-09',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(49,	1,	'Bosal ČR s.r.o.',	'Jan Gregor',	'jan.gregor@bosal.com',	'',	2,	'Praxe žáků',	NULL,	NULL,	'0000-00-00',	' asi tam nepracuje',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(50,	1,	'Bosch',	'schelová',	'barbora.schelova@cz.bosch.com',	'',	2,	'Pedro',	'2019-02-18',	NULL,	'2019-03-04',	'Telefon',	' zatím v jednání',	' možná exkurze do ČB',	' příspějí na bus',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(53,	1,	'BSL s.r.o.',	'David Štěpánek',	'stepanek@bsl.cz',	'',	1,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(54,	1,	'BSP Technology',	'Marianna Harajdová',	'recepce@bsptechnology.eu',	'+420 731 138 4',	1,	'Prac. nab z portalu',	'2018-11-09',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	'info@bsptechnology.eu',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(55,	1,	'Businesscom a.s.',	'Michal Parkos',	'info@businesscom.cz',	'',	2,	'Praxe žáků',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(56,	1,	'Byzance IT',	'',	'tomas.zaruba@byzance.cz',	'',	1,	'Prac. nab z portalu',	'2019-01-17',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(57,	1,	'CA CZ s.r.o.',	'Robert Molnár',	'',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	'nedoručitelné',	NULL,	NULL,	NULL,	1,	'prague@ca.com - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(58,	1,	'Capitol Development',	'',	'nabor@capitol.cz',	'',	1,	'Prac. nab z portalu',	'2018-11-09',	NULL,	NULL,	'nic',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(60,	1,	'CASABLANCA INT s.r.o.',	'',	'obchod@casablanca.cz',	'',	1,	'',	'2019-02-27',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(61,	1,	'CDC Data s.r.o.',	'Zdeňka Strapinová',	'zdenka.strapinova@cdc.cz',	'',	1,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(62,	1,	'cegelec',	'',	'',	'',	1,	' ELE',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(63,	1,	'cdn77',	'',	'hello@cdn77.com',	'',	1,	'',	'2019-03-18',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	'https://cdn77.jobs/pracovni-nabidky?twclid=25rdfzjig6ql0uj5hv3o2j8ki1',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(64,	1,	'Cegelec a.s.',	'Zdeněk Kočárek',	'cegelec@cegelec.cz',	'',	2,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(66,	1,	'Centrum informační společnosti s.r.o.',	'Daniela Spiesová',	'',	'',	2,	'Praxe žáků',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	'zuzana.trnkova@adem.cz - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(67,	1,	'Ceskomoravská ss',	'',	'https://jobote.com/ameeutt',	'',	1,	'Prac. nab z portalu',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(68,	1,	'Cetin',	'',	'dita.houzvickova@cetin.cz',	'+420725560485',	1,	'Festival vědy',	NULL,	NULL,	'2019-02-08',	'cv',	' exkurze',	' praxě',	'hw',	1,	'milena.synackova@cetin.cz -',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	''),
(69,	1,	'Clasic CZ s.r.o.',	'Karel Čihák',	'info@clasic.cz',	'',	2,	'Praxe žáků',	'2019-01-29',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(70,	1,	'Cloudevelops',	'',	'',	'',	1,	'',	NULL,	NULL,	NULL,	'Žáci prošli výběrovým řízením',	' ale chtěl 12h prac. dobu',	NULL,	'ano',	1,	'karolina.strejckova@cloudevelops.com - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(71,	1,	'cloudinfrastack',	' s. r. o.',	'',	'hr@cloudinfras',	1,	'IT',	NULL,	NULL,	'2018-11-09',	'29.1.2019',	NULL,	'nic',	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(72,	1,	'CMS Consulting s.r.o.',	'Viktor Burkert',	'v.burkert@cms.cz',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(73,	1,	'ComAp a. s.',	'Přidálková',	'lucie.pridalkova@comap-control.com',	'',	1,	' ELE',	NULL,	NULL,	NULL,	'7.3.2019',	NULL,	'ano',	NULL,	1,	'tatyana.tsapaeva@comap-control.com\nwww.comap-control.com\n T: +420 777664118',	NULL,	NULL,	'2',	NULL,	NULL,	NULL,	NULL,	'2022-09-08',	NULL,	NULL,	NULL),
(74,	1,	'con4PAS a.s.',	'Petr Šebesta',	'petr.sebesta@con4pas.com',	'',	1,	'Praxe žáků',	'2019-01-31',	NULL,	'2019-03-26',	' 3) Pokusím se najít čas na seminář ještě v tomto školním roce.\r\n<br>',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(76,	1,	'Conrad electronic',	'',	'marek.konecny@conrad.cz',	'',	2,	'',	'2019-02-27',	NULL,	'2019-03-27',	'CV',	' budoucí  seminář o ekonomce firmy',	'ne',	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(77,	1,	'Continental Automovie Czech Rep.',	'LenkaČížková',	'lukas.tancibudek@continental-corporation.com',	'',	1,	'Praxe žáků',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	'barobora.Deverova@continental-corporation.com',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(78,	1,	'CRM Factory GmbH',	'Martin Matej',	'',	'',	2,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	'martin.matej@mcon-group.com - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(79,	1,	'Coolpeople',	'Miroslav Pihorňa',	'miroslav.pihorna@coolpeople.cz',	'724 974 991',	1,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(80,	1,	'creative doc',	'',	'',	'776 372 523',	1,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(81,	1,	'Cznet s.r.o.',	'',	'info@cznet.cz',	'',	1,	'',	'2019-01-31',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(82,	1,	'ČD Telematika a.s.',	'Vilém Štindl ',	'cdt@cdt.cz',	'',	2,	'',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(83,	1,	'capcom-sls.cz',	'',	'office@capcom-sls.cz',	'',	2,	'',	'2019-03-06',	NULL,	NULL,	NULL,	NULL,	NULL,	'ano',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(84,	1,	'ČEPS',	'Šnytová',	'',	'',	1,	'LinkedIN',	NULL,	NULL,	'0000-00-00',	' nemají poziace pro nás',	'Nekontaktovat',	' nemají poziace pro nás',	NULL,	1,	'snytova@ceps.cz - neex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(86,	1,	'Česká Pojišťovna',	'Horáková',	'Horáková Nela <nela.horakova@ceskapojistovna.cz>',	'',	1,	'LM',	'2019-02-05',	NULL,	NULL,	'CV - nechtěli dělat pozvánky',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(87,	1,	'Česká spořitelna a.s.',	'Jakub Jusko',	'jjusko@csas.cz',	'',	1,	'Praxe žáků',	'2019-02-04',	NULL,	NULL,	'Už jsme s edomluvili?)',	NULL,	NULL,	NULL,	1,	'LeoDostalova@csas.cz - nový kontakt od listopadu 22',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	''),
(89,	1,	'Česká televize',	'František Kovařík',	'frantisek.kovarik@ceskatelevize.cz',	'',	1,	'Praxe žáků',	'2019-02-04',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(90,	1,	'České Radiokomunikace a.s.',	'Tejkal',	'l.tejkl@cra.cz',	'',	2,	'Praxe žáků',	NULL,	NULL,	'2019-03-25',	'Cv',	' praxe?',	' workshop bude',	' zaujalil jsme je. Mají fluktuaci zaměst 5%.Pokračovat příší rok.',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(93,	1,	'ČEZ',	'Buff',	'máme i od velicha',	'602 576 206',	2,	'Pedro',	NULL,	NULL,	NULL,	'čekám na termín',	NULL,	NULL,	NULL,	1,	'Buka Tomáš <tomas.buka@cez.cz>',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(94,	1,	'ČEZ Distribuce a.s.',	'Klacián',	'martin.klacián@cez.cz',	'',	2,	'Praxe žáků',	'2019-01-29',	NULL,	NULL,	'Ozve se',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(95,	1,	'ČIP plus s.r.o.',	'Petr Jícha',	'jicha@cip.cz',	'',	2,	'',	'2019-01-31',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(96,	1,	'ČSOB',	'Gilová',	'GILLOVÁ Aneta <agillova@csob.cz>',	'',	1,	'Pedro',	'2019-02-18',	NULL,	NULL,	'Nedoručitelné',	' asi tam nepracuje',	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(97,	1,	'Rejnok',	'',	'František Šindelář <sindelar@rejnok.cz>',	'',	2,	'',	'2019-04-25',	NULL,	NULL,	'Zkusit příští rok',	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(98,	1,	'control',	'',	'obchod@control.cz',	'556 704 290',	1,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(99,	1,	'D&C s.r.o.',	'Josef Dusil',	'josef.dusil@dac-sro.cz',	'',	1,	'Praxe žáků',	'2019-01-28',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(100,	1,	'Dasko Net s.r.o.',	'Jaroslav Kavalier',	'jaroslav.kavalier@daskonet.cz',	'',	1,	'',	'2019-01-28',	NULL,	NULL,	'PRaxe',	NULL,	NULL,	'ano',	1,	'procházel jsem v květnu poskytnutá CV, ale nemohl jsem nalézt nic, co by nám vyhovovalo. Vesměs jsem nalezl samé programátory (SW pracovníky). Naše firma se zabývá výstavbou a zajišťováním provozu telekomunikační sítě (bezdrátové, optické, metalické) – tj. nejen jejich výstavbou, ale i konfigurací, dohledem, správou aktivních prvků, serverů, virtualizací, apod. Taktéž řešíme zabezpečovací systémy, kamerové systémy (jejich výstavbu i konfiguraci). Jedná se nám tedy spíš o HW technika. Aktuálně má',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL)
;

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `time_start` datetime NOT NULL DEFAULT current_timestamp(),
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk:firm` (`firm_id`),
  CONSTRAINT `fk:firm` FOREIGN KEY (`firm_id`) REFERENCES `firm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `events` (`id`, `firm_id`, `name`, `description`, `time_start`, `time_end`) VALUES
(5,	NULL,	'NOrdic telecom',	'dělat příští rok WS 22/23\r\nnedostalo se na ně na praxíth, žáci je nechtěli.',	'2022-08-26 10:17:00',	'2022-08-31 10:17:00'),
(6,	NULL,	'WS s VF',	'Email 22.6.22:\r\n\r\n\r\nZdravím z Vodafonu, pane Masopust,\r\n\r\n \r\n\r\nvěřím, že se Vám daří dobře a že již vyhlížíte konec školního roku a zasloužené letní volno.\r\n\r\nV minulých letech jsme byli ve společné komunikaci ohledně zapojení Vašich studentů do praktických aktivit Vodafonu a my bychom na tyto aktivity nyní moc rádi navázali a oslovili Vás v rámci spolupráce při nových projektech v IT sféře, které bychom rádi za Vodafone nastartovali a směřovali ke středním školám.\r\n\r\n \r\n\r\nChtěli bychom Vaší ško',	'2022-08-26 10:26:00',	'2022-08-31 10:26:00'),
(7,	NULL,	'Ověřit emaily',	'filip.dvorak@basf.com \r\nmichaela.klouckova@ts.fujitsu.com \r\nmanaqement@intedo.cz \r\ndagmar.scalzo@cegelec.com couldn\t be delivered.\r\npetra.zouboubkova@exon.cz\r\nsimona.bogasova@obis.cz\r\ninfo@celeano.cz\r\nsnytova@ceps.cz \r\nemilia.karisna@dimensiondata.com\r\njitka.kopecka@ericsson.com\r\njkratochvilova@foxconn.cz \r\nnina.moravcova@dentsuaegis.com\r\nvlasta.bucilova@unicreditbank.cz\r\neliska.nekolova@eset.cz\r\nseidl.ladislav@azd.cz \r\nLukas.jelinek@sazka.cz\r\npetra.slukova@myq-solution.com \r\nhr@eucpremium.cz \r',	'2022-08-26 16:44:00',	NULL),

(8,	NULL,	'daskonet - domluvit WS',	'Dobrý den,\r\n\r\n \r\n\r\nworkshop by asi neměl být problém. Můžeme se dohodnout.\r\n\r\n \r\n\r\nS pozdravem\r\n\r\n \r\n\r\nJaroslav Kavalier\r\n\r\njednatel společnosti\r\n\r\nE-mail: jaroslav.kavalier@daskonet.cz\r\n\r\nGSM: +420 772 727 900\r\n\r\n \r\n\r\nPopis: podpis_1',	'2022-08-25 10:46:00',	NULL),
(11,	NULL,	'Připravit WS s Cetinem',	'',	'2022-08-29 12:22:00',	NULL),
(12,	NULL,	'Připravit WS s apertia',	'',	'2022-08-29 12:22:00',	NULL),
(13,	NULL,	'Schrack 16.2. přijedou i s autem udělat ws',	'',	'2023-01-02 09:53:00',	NULL),
(14,	NULL,	'Cetin exkurze',	'OZvat, kdy mají čas. viz email z 3.11.',	'2023-01-04 14:58:00',	NULL);

DROP TABLE IF EXISTS `firms_in_event`;
CREATE TABLE `firms_in_event` (
  `firm_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `firm_id` (`firm_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `firm_id` FOREIGN KEY (`firm_id`) REFERENCES `firm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `firms_in_event` (`firm_id`, `event_id`, `id`) VALUES
(100,	8,	1),
(68,	11,	3);

DROP TABLE IF EXISTS `hidden_columns`;
CREATE TABLE `hidden_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `hidden_columns` (`id`, `name`) VALUES
(1,	'active'),
(2,	'note'),
(3,	'note'),
(4,	'brigade'),
(7,	'cv'),
(8,	'practice'),
(9,	'workshop'),
(11,	'c18');


DROP TABLE IF EXISTS `type_of_column`;
CREATE TABLE `type_of_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `type_of_column` (`id`, `type`, `alias`) VALUES
(1,	'text',	'Text'),
(2,	'date',	'Datum'),
(3,	'int',	'Číslo');

