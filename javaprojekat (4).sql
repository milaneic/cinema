-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 10:11 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaprojekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `id` int(11) NOT NULL,
  `naziv` varchar(255) DEFAULT NULL,
  `grad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`id`, `naziv`, `grad`) VALUES
(1, 'CineStar Usce', 1),
(2, 'CineStar Vracar', 1),
(3, 'CineStar Stari Grad', 2),
(4, 'CineStar Detelinara', 2),
(5, 'CineStar Gradski trg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `opis` mediumtext NOT NULL,
  `producent` varchar(255) NOT NULL,
  `pisci` varchar(255) NOT NULL,
  `glumci` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `trajanje` int(11) NOT NULL,
  `godina` int(11) NOT NULL,
  `ocena` double NOT NULL,
  `zanr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `naziv`, `slika`, `opis`, `producent`, `pisci`, `glumci`, `trailer`, `trajanje`, `godina`, `ocena`, `zanr`) VALUES
(1, 'StarWars', 'images/star_wars.jpg', 'When renowned crime novelist Harlan Thrombey (Christopher Plummer) is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc (Daniel Craig) is mysteriously enlisted to investigate. From Harlan\'s dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan\'s untimely death. Written by Lionsgate', ' J.J. Abrams', 'Chris Terrio (screenplay by), J.J. Abrams ', 'Daisy Ridley, John Boyega, Oscar Isaac |', 'https://www.youtube.com/embed/8Qn_spdM5Zg', 144, 2019, 6.7, 5),
(2, 'The Godfather: Part II ', 'images/goodfather2.jpg', 'The continuing saga of the Corleone crime family tells the story of a young Vito Corleone growing up in Sicily and in 1910s New York; and follows Michael Corleone in the 1950s as he attempts to expand the family business into Las Vegas, Hollywood and Cuba. Written by Keith Loh <loh@sfu.ca>', ' Francis Ford Coppola', ' Francis Ford Coppola (screenplay by), Mario Puzo', ' Al Pacino, Robert De Niro, Robert Duvall |', 'https://www.youtube.com/embed/9O1Iy9od7-A', 202, 1974, 9, 4),
(3, 'Knives Out', 'images/knivesout.jpg', 'When renowned crime novelist Harlan Thrombey (Christopher Plummer) is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc (Daniel Craig) is mysteriously enlisted to investigate. From Harlan\'s dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan\'s untimely death. Written by Lionsgate', 'Rian Johnson', ' Rian Johnson', ' Daniel Craig, Chris Evans, Ana de Armas ', 'https://www.youtube.com/embed/xi-1NchUqMA', 130, 2019, 7.9, 1),
(4, 'Joker', 'images/joker.jpg', 'Arthur Fleck works as a clown and is an aspiring stand-up comic. He has mental health issues, part of which involves uncontrollable laughter. Times are tough and, due to his issues and occupation, Arthur has an even worse time than most. Over time these issues bear down on him, shaping his actions, making him ultimately take on the persona he is more known as...Joker. Written by grantss', 'Todd Phillips', 'Todd Phillips, Scott Silver |', 'Joaquin Phoenix, Robert De Niro, Zazie Beetz ', 'https://www.youtube.com/embed/zAGVQLHvwOY', 130, 2019, 8.5, 9),
(5, 'Inception ', 'images/inception.jpg', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming. Written by Warner Bros. Pictures', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page ', 'https://www.youtube.com/embed/YoHD9XEInc0', 148, 2010, 8.8, 1),
(6, 'Django Unchained', 'images/django.jpg', 'In 1858, a bounty hunter named Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. After finding them, Django wants to find his wife, Broomhilda, who along with him were sold separately by his former owner for trying to escape. Schultz offers to help him if he chooses to stay with him and be his partner. Eventually they learn that she was sold to a plantation in Mississippi. Knowing they can t just go in and say they want her, they come up with a plan so that the owner will welcome them into his home and they can find a way. Written by', 'Quentin Tarantino', ' Quentin Tarantino', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio ', 'https://www.youtube.com/embed/_iH0UBYDI4g', 120, 2012, 8.4, 1),
(7, 'The King s Man', 'images/king.jpg', 'As a collection of historys worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.', 'Matthew Vaughn', 'Matthew Vaughn (screenplay by), Karl Gajdusek', 'Gemma Arterton, Aaron Taylor-Johnson, Matthew Goode ', 'https://www.youtube.com/embed/5zdBG-iGfes', 120, 2020, 5.2, 1),
(8, 'Force of Nature', 'images/force.jpg', 'A gang of thieves plan a heist during a hurricane and encounter trouble when a cop tries to force everyone in the building to evacuate.', 'Michael Polish', 'Cory M. Miller (as Cory Miller)', 'Emile Hirsch, Mel Gibson, David Zayas |', 'https://www.youtube.com/embed/d61GX5VoEJc', 91, 2020, 4.4, 1),
(10, 'You Should Have Left', 'images/left.jpg', 'A mythic and emotionally charged heros journey, \"Dune\" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planets exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanitys greatest potential-only those who can conquer their fear will survive.', ' David Koepp', ' David Koepp (screenplay), Daniel Kehlmann (novel)', 'Kevin Bacon, Amanda Seyfried, Avery Tiiu Essex', 'Kevin Bacon, Amanda Seyfried, Avery Tiiu Essex', 93, 2020, 5.3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`id`, `naziv`) VALUES
(1, 'Beograd'),
(2, 'Novi Sad'),
(3, 'Cacak');

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `naziv`) VALUES
(0, 'Nema'),
(1, 'Deca'),
(2, 'Stariji');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `korisnicko` varchar(50) NOT NULL,
  `sifra` varchar(50) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `telefon` varchar(10) NOT NULL,
  `poeni` int(11) NOT NULL,
  `klub` int(11) DEFAULT NULL,
  `nivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `korisnicko`, `sifra`, `ime`, `prezime`, `telefon`, `poeni`, `klub`, `nivo`) VALUES
(1, 'admin', 'admin', 'Milan ', 'Eic', '0649709390', 10100, 1, 1),
(2, 'menadzer', 'menadzer', 'Milan', 'Eic', '06413245', 1000, 0, 2),
(3, 'milan', 'milan', 'Milan', 'Eic', '1234567', 10000, 2, 3),
(4, 'ana', 'ana', 'Ana', 'Petrovic', '123456', 10000, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nivo`
--

CREATE TABLE `nivo` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nivo`
--

INSERT INTO `nivo` (`id`, `naziv`) VALUES
(1, 'admin'),
(2, 'menadzer'),
(3, 'korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `posluzenje`
--

CREATE TABLE `posluzenje` (
  `id` int(11) NOT NULL,
  `slika` varchar(50) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posluzenje`
--

INSERT INTO `posluzenje` (`id`, `slika`, `naziv`, `cena`) VALUES
(1, 'images/burger.jpg', 'Hamburger', 200),
(2, 'images/cheeseburger.jpg', 'Cheeseburger', 200),
(3, 'images/chese2.jpg', 'Dupli Cheeseburger', 300),
(4, 'images/filet.jpg', 'Filetburger', 200),
(5, 'images/cola05.jpg', 'Coca Cola 0.5l ', 100),
(6, 'images/fanta05.jpg', 'Fanta 0.5l', 100);

-- --------------------------------------------------------

--
-- Table structure for table `posluzenje_naruceno`
--

CREATE TABLE `posluzenje_naruceno` (
  `idRezervacije` int(11) NOT NULL,
  `IDPosluzenja` int(11) NOT NULL,
  `kolicina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posluzenje_naruceno`
--

INSERT INTO `posluzenje_naruceno` (`idRezervacije`, `IDPosluzenja`, `kolicina`) VALUES
(20, 1, 0),
(20, 2, 0),
(20, 3, 0),
(20, 4, 1),
(20, 5, 0),
(20, 6, 0),
(25, 1, 1),
(25, 2, 0),
(25, 3, 0),
(25, 4, 0),
(25, 5, 2),
(25, 6, 0),
(26, 1, 0),
(26, 2, 2),
(26, 3, 3),
(26, 4, 2),
(26, 5, 0),
(26, 6, 0),
(27, 1, 1),
(27, 2, 0),
(27, 3, 0),
(27, 4, 0),
(27, 5, 0),
(27, 6, 0),
(28, 1, 2),
(28, 2, 0),
(28, 3, 0),
(28, 4, 0),
(28, 5, 3),
(28, 6, 0),
(30, 1, 0),
(30, 2, 1),
(30, 3, 2),
(30, 4, 0),
(30, 5, 2),
(30, 6, 0),
(31, 1, 0),
(31, 2, 0),
(31, 3, 2),
(31, 4, 0),
(31, 5, 2),
(31, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projekcija`
--

CREATE TABLE `projekcija` (
  `id` int(11) NOT NULL,
  `film` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `tehnologija` int(11) NOT NULL,
  `premijera` smallint(6) NOT NULL,
  `cena` double NOT NULL,
  `datum` date NOT NULL,
  `vreme` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projekcija`
--

INSERT INTO `projekcija` (`id`, `film`, `sala`, `tehnologija`, `premijera`, `cena`, `datum`, `vreme`) VALUES
(1, 1, 1, 1, 1, 1000, '2020-06-22', '19:00:00'),
(2, 2, 6, 1, 0, 500, '2020-07-10', '21:00:00'),
(5, 4, 1, 2, 1, 1000, '2020-07-06', '23:00:00'),
(8, 5, 4, 1, 0, 500, '2020-07-05', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `id` int(11) NOT NULL,
  `projekcija` int(11) NOT NULL,
  `korisnik` int(11) NOT NULL,
  `ukupno` double NOT NULL,
  `kreiran` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `potvrdjeno` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`id`, `projekcija`, `korisnik`, `ukupno`, `kreiran`, `potvrdjeno`) VALUES
(19, 1, 1, 2000, '2020-06-29 08:05:21', 1),
(20, 1, 1, 2200, '2020-06-29 08:10:54', 1),
(21, 1, 1, 2000, '2020-06-27 16:47:01', 0),
(22, 1, 2, 2000, '2020-06-28 10:57:46', 1),
(23, 2, 2, 1500, '2020-06-28 10:57:54', 1),
(24, 1, 1, 2000, '2020-06-28 10:44:43', 0),
(25, 2, 2, 1800, '2020-06-28 11:02:39', 1),
(26, 2, 2, 2700, '2020-06-28 10:59:15', 1),
(27, 1, 2, 2200, '2020-06-28 11:03:03', 1),
(28, 2, 1, 1200, '2020-06-28 14:20:11', 1),
(29, 1, 4, 2000, '2020-06-28 19:39:49', 1),
(30, 5, 2, 3000, '2020-06-28 21:46:51', 1),
(31, 8, 4, 1800, '2020-06-29 05:41:44', 1),
(32, 2, 1, 0, '2020-06-29 06:14:18', 0),
(33, 1, 1, 0, '2020-06-29 06:15:05', 0),
(34, 2, 1, 0, '2020-06-29 06:17:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rezervisana_sedista`
--

CREATE TABLE `rezervisana_sedista` (
  `idRezervacije` int(11) NOT NULL,
  `idSediste` int(11) NOT NULL,
  `potvrdjeno` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervisana_sedista`
--

INSERT INTO `rezervisana_sedista` (`idRezervacije`, `idSediste`, `potvrdjeno`) VALUES
(19, 1, 0),
(19, 2, 0),
(20, 3, 0),
(20, 4, 0),
(21, 21, 0),
(21, 22, 0),
(22, 32, 0),
(22, 33, 0),
(23, 521, 0),
(23, 522, 0),
(23, 523, 0),
(24, 23, 0),
(24, 24, 0),
(25, 524, 0),
(25, 525, 0),
(26, 526, 0),
(26, 527, 0),
(27, 52, 0),
(27, 53, 0),
(28, 545, 0),
(28, 546, 0),
(29, 99, 0),
(29, 100, 0),
(30, 21, 0),
(30, 22, 0),
(31, 301, 0),
(31, 302, 0),
(32, 531, 0),
(32, 532, 0),
(33, 34, 0),
(33, 35, 0),
(34, 599, 0),
(34, 600, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `id` int(11) NOT NULL,
  `bioskop` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `kapacitet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`id`, `bioskop`, `naziv`, `kapacitet`) VALUES
(1, 1, 'Sala 1', 100),
(2, 1, 'Sala 2', 100),
(3, 2, 'Sala 1', 100),
(4, 3, 'Sala 1', 100),
(5, 4, 'Sala 1', 100),
(6, 5, 'Sala 1', 100);

-- --------------------------------------------------------

--
-- Table structure for table `sediste`
--

CREATE TABLE `sediste` (
  `id` int(11) NOT NULL,
  `broj_sedista` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `kategorija` int(11) NOT NULL,
  `red` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sediste`
--

INSERT INTO `sediste` (`id`, `broj_sedista`, `sala`, `kategorija`, `red`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 1, 1, 1),
(3, 3, 1, 1, 1),
(4, 4, 1, 1, 1),
(5, 5, 1, 1, 1),
(6, 6, 1, 1, 1),
(7, 7, 1, 1, 1),
(8, 8, 1, 1, 1),
(9, 9, 1, 1, 1),
(10, 10, 1, 1, 1),
(11, 11, 1, 1, 2),
(12, 12, 1, 1, 2),
(13, 13, 1, 1, 2),
(14, 14, 1, 1, 2),
(15, 15, 1, 1, 2),
(16, 16, 1, 1, 2),
(17, 17, 1, 1, 2),
(18, 18, 1, 1, 2),
(19, 19, 1, 1, 2),
(20, 20, 1, 1, 2),
(21, 21, 1, 2, 3),
(22, 22, 1, 2, 3),
(23, 23, 1, 2, 3),
(24, 24, 1, 2, 3),
(25, 25, 1, 2, 3),
(26, 26, 1, 2, 3),
(27, 27, 1, 2, 3),
(28, 28, 1, 2, 3),
(29, 29, 1, 2, 3),
(30, 30, 1, 2, 3),
(31, 31, 1, 2, 4),
(32, 32, 1, 2, 4),
(33, 33, 1, 2, 4),
(34, 34, 1, 2, 4),
(35, 35, 1, 2, 4),
(36, 36, 1, 2, 4),
(37, 37, 1, 2, 4),
(38, 38, 1, 2, 4),
(39, 39, 1, 2, 4),
(40, 40, 1, 2, 4),
(41, 41, 1, 2, 5),
(42, 42, 1, 2, 5),
(43, 43, 1, 2, 5),
(44, 44, 1, 2, 5),
(45, 45, 1, 2, 5),
(46, 46, 1, 2, 5),
(47, 47, 1, 2, 5),
(48, 48, 1, 2, 5),
(49, 49, 1, 2, 5),
(50, 50, 1, 2, 5),
(51, 51, 1, 2, 6),
(52, 52, 1, 2, 6),
(53, 53, 1, 2, 6),
(54, 54, 1, 2, 6),
(55, 55, 1, 2, 6),
(56, 56, 1, 2, 6),
(57, 57, 1, 2, 6),
(58, 58, 1, 2, 6),
(59, 59, 1, 2, 6),
(60, 60, 1, 2, 6),
(61, 61, 1, 2, 7),
(62, 62, 1, 2, 7),
(63, 63, 1, 2, 7),
(64, 64, 1, 2, 7),
(65, 65, 1, 2, 7),
(66, 66, 1, 2, 7),
(67, 67, 1, 2, 7),
(68, 68, 1, 2, 7),
(69, 69, 1, 2, 7),
(70, 70, 1, 2, 7),
(71, 71, 1, 2, 8),
(72, 72, 1, 2, 8),
(73, 73, 1, 2, 8),
(74, 74, 1, 2, 8),
(75, 75, 1, 2, 8),
(76, 76, 1, 2, 8),
(77, 77, 1, 2, 8),
(78, 78, 1, 2, 8),
(79, 79, 1, 2, 8),
(80, 80, 1, 2, 8),
(81, 81, 1, 2, 9),
(82, 82, 1, 2, 9),
(83, 83, 1, 2, 9),
(84, 84, 1, 2, 9),
(85, 85, 1, 2, 9),
(86, 86, 1, 2, 9),
(87, 87, 1, 2, 9),
(88, 88, 1, 2, 9),
(89, 89, 1, 2, 9),
(90, 90, 1, 2, 9),
(91, 91, 1, 2, 10),
(92, 92, 1, 2, 10),
(93, 93, 1, 2, 10),
(94, 94, 1, 2, 10),
(95, 95, 1, 2, 10),
(96, 96, 1, 2, 10),
(97, 97, 1, 2, 10),
(98, 98, 1, 2, 10),
(99, 99, 1, 2, 10),
(100, 100, 1, 2, 10),
(101, 1, 2, 1, 1),
(102, 2, 2, 1, 1),
(103, 3, 2, 1, 1),
(104, 4, 2, 1, 1),
(105, 5, 2, 1, 1),
(106, 6, 2, 1, 1),
(107, 7, 2, 1, 1),
(108, 8, 2, 1, 1),
(109, 9, 2, 1, 1),
(110, 10, 2, 1, 1),
(111, 11, 2, 1, 2),
(112, 12, 2, 1, 2),
(113, 13, 2, 1, 2),
(114, 14, 2, 1, 2),
(115, 15, 2, 1, 2),
(116, 16, 2, 1, 2),
(117, 17, 2, 1, 2),
(118, 18, 2, 1, 2),
(119, 19, 2, 1, 2),
(120, 20, 2, 1, 2),
(121, 21, 2, 2, 3),
(122, 22, 2, 2, 3),
(123, 23, 2, 2, 3),
(124, 24, 2, 2, 3),
(125, 25, 2, 2, 3),
(126, 26, 2, 2, 3),
(127, 27, 2, 2, 3),
(128, 28, 2, 2, 3),
(129, 29, 2, 2, 3),
(130, 30, 2, 2, 3),
(131, 31, 2, 2, 4),
(132, 32, 2, 2, 4),
(133, 33, 2, 2, 4),
(134, 34, 2, 2, 4),
(135, 35, 2, 2, 4),
(136, 36, 2, 2, 4),
(137, 37, 2, 2, 4),
(138, 38, 2, 2, 4),
(139, 39, 2, 2, 4),
(140, 40, 2, 2, 4),
(141, 41, 2, 2, 5),
(142, 42, 2, 2, 5),
(143, 43, 2, 2, 5),
(144, 44, 2, 2, 5),
(145, 45, 2, 2, 5),
(146, 46, 2, 2, 5),
(147, 47, 2, 2, 5),
(148, 48, 2, 2, 5),
(149, 49, 2, 2, 5),
(150, 50, 2, 2, 5),
(151, 51, 2, 2, 6),
(152, 52, 2, 2, 6),
(153, 53, 2, 2, 6),
(154, 54, 2, 2, 6),
(155, 55, 2, 2, 6),
(156, 56, 2, 2, 6),
(157, 57, 2, 2, 6),
(158, 58, 2, 2, 6),
(159, 59, 2, 2, 6),
(160, 60, 2, 2, 6),
(161, 61, 2, 2, 7),
(162, 62, 2, 2, 7),
(163, 63, 2, 2, 7),
(164, 64, 2, 2, 7),
(165, 65, 2, 2, 7),
(166, 66, 2, 2, 7),
(167, 67, 2, 2, 7),
(168, 68, 2, 2, 7),
(169, 69, 2, 2, 7),
(170, 70, 2, 2, 7),
(171, 71, 2, 2, 8),
(172, 72, 2, 2, 8),
(173, 73, 2, 2, 8),
(174, 74, 2, 2, 8),
(175, 75, 2, 2, 8),
(176, 76, 2, 2, 8),
(177, 77, 2, 2, 8),
(178, 78, 2, 2, 8),
(179, 79, 2, 2, 8),
(180, 80, 2, 2, 8),
(181, 81, 2, 2, 9),
(182, 82, 2, 2, 9),
(183, 83, 2, 2, 9),
(184, 84, 2, 2, 9),
(185, 85, 2, 2, 9),
(186, 86, 2, 2, 9),
(187, 87, 2, 2, 9),
(188, 88, 2, 2, 9),
(189, 89, 2, 2, 9),
(190, 90, 2, 2, 9),
(191, 91, 2, 2, 10),
(192, 92, 2, 2, 10),
(193, 93, 2, 2, 10),
(194, 94, 2, 2, 10),
(195, 95, 2, 2, 10),
(196, 96, 2, 2, 10),
(197, 97, 2, 2, 10),
(198, 98, 2, 2, 10),
(199, 99, 2, 2, 10),
(200, 100, 2, 2, 10),
(201, 1, 3, 1, 1),
(202, 2, 3, 1, 1),
(203, 3, 3, 1, 1),
(204, 4, 3, 1, 1),
(205, 5, 3, 1, 1),
(206, 6, 3, 1, 1),
(207, 7, 3, 1, 1),
(208, 8, 3, 1, 1),
(209, 9, 3, 1, 1),
(210, 10, 3, 1, 1),
(211, 11, 3, 1, 2),
(212, 12, 3, 1, 2),
(213, 13, 3, 1, 2),
(214, 14, 3, 1, 2),
(215, 15, 3, 1, 2),
(216, 16, 3, 1, 2),
(217, 17, 3, 1, 2),
(218, 18, 3, 1, 2),
(219, 19, 3, 1, 2),
(220, 20, 3, 1, 2),
(221, 21, 3, 2, 3),
(222, 22, 3, 2, 3),
(223, 23, 3, 2, 3),
(224, 24, 3, 2, 3),
(225, 25, 3, 2, 3),
(226, 26, 3, 2, 3),
(227, 27, 3, 2, 3),
(228, 28, 3, 2, 3),
(229, 29, 3, 2, 3),
(230, 30, 3, 2, 3),
(231, 31, 3, 2, 4),
(232, 32, 3, 2, 4),
(233, 33, 3, 2, 4),
(234, 34, 3, 2, 4),
(235, 35, 3, 2, 4),
(236, 36, 3, 2, 4),
(237, 37, 3, 2, 4),
(238, 38, 3, 2, 4),
(239, 39, 3, 2, 4),
(240, 40, 3, 2, 4),
(241, 41, 3, 2, 5),
(242, 42, 3, 2, 5),
(243, 43, 3, 2, 5),
(244, 44, 3, 2, 5),
(245, 45, 3, 2, 5),
(246, 46, 3, 2, 5),
(247, 47, 3, 2, 5),
(248, 48, 3, 2, 5),
(249, 49, 3, 2, 5),
(250, 50, 3, 2, 5),
(251, 51, 3, 2, 6),
(252, 52, 3, 2, 6),
(253, 53, 3, 2, 6),
(254, 54, 3, 2, 6),
(255, 55, 3, 2, 6),
(256, 56, 3, 2, 6),
(257, 57, 3, 2, 6),
(258, 58, 3, 2, 6),
(259, 59, 3, 2, 6),
(260, 60, 3, 2, 6),
(261, 61, 3, 2, 7),
(262, 62, 3, 2, 7),
(263, 63, 3, 2, 7),
(264, 64, 3, 2, 7),
(265, 65, 3, 2, 7),
(266, 66, 3, 2, 7),
(267, 67, 3, 2, 7),
(268, 68, 3, 2, 7),
(269, 69, 3, 2, 7),
(270, 70, 3, 2, 7),
(271, 71, 3, 2, 8),
(272, 72, 3, 2, 8),
(273, 73, 3, 2, 8),
(274, 74, 3, 2, 8),
(275, 75, 3, 2, 8),
(276, 76, 3, 2, 8),
(277, 77, 3, 2, 8),
(278, 78, 3, 2, 8),
(279, 79, 3, 2, 8),
(280, 80, 3, 2, 8),
(281, 81, 3, 2, 9),
(282, 82, 3, 2, 9),
(283, 83, 3, 2, 9),
(284, 84, 3, 2, 9),
(285, 85, 3, 2, 9),
(286, 86, 3, 2, 9),
(287, 87, 3, 2, 9),
(288, 88, 3, 2, 9),
(289, 89, 3, 2, 9),
(290, 90, 3, 2, 9),
(291, 91, 3, 2, 10),
(292, 92, 3, 2, 10),
(293, 93, 3, 2, 10),
(294, 94, 3, 2, 10),
(295, 95, 3, 2, 10),
(296, 96, 3, 2, 10),
(297, 97, 3, 2, 10),
(298, 98, 3, 2, 10),
(299, 99, 3, 2, 10),
(300, 100, 3, 2, 10),
(301, 1, 4, 1, 1),
(302, 2, 4, 1, 1),
(303, 3, 4, 1, 1),
(304, 4, 4, 1, 1),
(305, 5, 4, 1, 1),
(306, 6, 4, 1, 1),
(307, 7, 4, 1, 1),
(308, 8, 4, 1, 1),
(309, 9, 4, 1, 1),
(310, 10, 4, 1, 1),
(311, 11, 4, 1, 2),
(312, 12, 4, 1, 2),
(313, 13, 4, 1, 2),
(314, 14, 4, 1, 2),
(315, 15, 4, 1, 2),
(316, 16, 4, 1, 2),
(317, 17, 4, 1, 2),
(318, 18, 4, 1, 2),
(319, 19, 4, 1, 2),
(320, 20, 4, 1, 2),
(321, 21, 4, 2, 3),
(322, 22, 4, 2, 3),
(323, 23, 4, 2, 3),
(324, 24, 4, 2, 3),
(325, 25, 4, 2, 3),
(326, 26, 4, 2, 3),
(327, 27, 4, 2, 3),
(328, 28, 4, 2, 3),
(329, 29, 4, 2, 3),
(330, 30, 4, 2, 3),
(331, 31, 4, 2, 4),
(332, 32, 4, 2, 4),
(333, 33, 4, 2, 4),
(334, 34, 4, 2, 4),
(335, 35, 4, 2, 4),
(336, 36, 4, 2, 4),
(337, 37, 4, 2, 4),
(338, 38, 4, 2, 4),
(339, 39, 4, 2, 4),
(340, 40, 4, 2, 4),
(341, 41, 4, 2, 5),
(342, 42, 4, 2, 5),
(343, 43, 4, 2, 5),
(344, 44, 4, 2, 5),
(345, 45, 4, 2, 5),
(346, 46, 4, 2, 5),
(347, 47, 4, 2, 5),
(348, 48, 4, 2, 5),
(349, 49, 4, 2, 5),
(350, 50, 4, 2, 5),
(351, 51, 4, 2, 6),
(352, 52, 4, 2, 6),
(353, 53, 4, 2, 6),
(354, 54, 4, 2, 6),
(355, 55, 4, 2, 6),
(356, 56, 4, 2, 6),
(357, 57, 4, 2, 6),
(358, 58, 4, 2, 6),
(359, 59, 4, 2, 6),
(360, 60, 4, 2, 6),
(361, 61, 4, 2, 7),
(362, 62, 4, 2, 7),
(363, 63, 4, 2, 7),
(364, 64, 4, 2, 7),
(365, 65, 4, 2, 7),
(366, 66, 4, 2, 7),
(367, 67, 4, 2, 7),
(368, 68, 4, 2, 7),
(369, 69, 4, 2, 7),
(370, 70, 4, 2, 7),
(371, 71, 4, 2, 8),
(372, 72, 4, 2, 8),
(373, 73, 4, 2, 8),
(374, 74, 4, 2, 8),
(375, 75, 4, 2, 8),
(376, 76, 4, 2, 8),
(377, 77, 4, 2, 8),
(378, 78, 4, 2, 8),
(379, 79, 4, 2, 8),
(380, 80, 4, 2, 8),
(381, 81, 4, 2, 9),
(382, 82, 4, 2, 9),
(383, 83, 4, 2, 9),
(384, 84, 4, 2, 9),
(385, 85, 4, 2, 9),
(386, 86, 4, 2, 9),
(387, 87, 4, 2, 9),
(388, 88, 4, 2, 9),
(389, 89, 4, 2, 9),
(390, 90, 4, 2, 9),
(391, 91, 4, 2, 10),
(392, 92, 4, 2, 10),
(393, 93, 4, 2, 10),
(394, 94, 4, 2, 10),
(395, 95, 4, 2, 10),
(396, 96, 4, 2, 10),
(397, 97, 4, 2, 10),
(398, 98, 4, 2, 10),
(399, 99, 4, 2, 10),
(400, 100, 4, 2, 10),
(401, 1, 5, 1, 1),
(402, 2, 5, 1, 1),
(403, 3, 5, 1, 1),
(404, 4, 5, 1, 1),
(405, 5, 5, 1, 1),
(406, 6, 5, 1, 1),
(407, 7, 5, 1, 1),
(408, 8, 5, 1, 1),
(409, 9, 5, 1, 1),
(410, 10, 5, 1, 1),
(411, 11, 5, 1, 2),
(412, 12, 5, 1, 2),
(413, 13, 5, 1, 2),
(414, 14, 5, 1, 2),
(415, 15, 5, 1, 2),
(416, 16, 5, 1, 2),
(417, 17, 5, 1, 2),
(418, 18, 5, 1, 2),
(419, 19, 5, 1, 2),
(420, 20, 5, 1, 2),
(421, 21, 5, 2, 3),
(422, 22, 5, 2, 3),
(423, 23, 5, 2, 3),
(424, 24, 5, 2, 3),
(425, 25, 5, 2, 3),
(426, 26, 5, 2, 3),
(427, 27, 5, 2, 3),
(428, 28, 5, 2, 3),
(429, 29, 5, 2, 3),
(430, 30, 5, 2, 3),
(431, 31, 5, 2, 4),
(432, 32, 5, 2, 4),
(433, 33, 5, 2, 4),
(434, 34, 5, 2, 4),
(435, 35, 5, 2, 4),
(436, 36, 5, 2, 4),
(437, 37, 5, 2, 4),
(438, 38, 5, 2, 4),
(439, 39, 5, 2, 4),
(440, 40, 5, 2, 4),
(441, 41, 5, 2, 5),
(442, 42, 5, 2, 5),
(443, 43, 5, 2, 5),
(444, 44, 5, 2, 5),
(445, 45, 5, 2, 5),
(446, 46, 5, 2, 5),
(447, 47, 5, 2, 5),
(448, 48, 5, 2, 5),
(449, 49, 5, 2, 5),
(450, 50, 5, 2, 5),
(451, 51, 5, 2, 6),
(452, 52, 5, 2, 6),
(453, 53, 5, 2, 6),
(454, 54, 5, 2, 6),
(455, 55, 5, 2, 6),
(456, 56, 5, 2, 6),
(457, 57, 5, 2, 6),
(458, 58, 5, 2, 6),
(459, 59, 5, 2, 6),
(460, 60, 5, 2, 6),
(461, 61, 5, 2, 7),
(462, 62, 5, 2, 7),
(463, 63, 5, 2, 7),
(464, 64, 5, 2, 7),
(465, 65, 5, 2, 7),
(466, 66, 5, 2, 7),
(467, 67, 5, 2, 7),
(468, 68, 5, 2, 7),
(469, 69, 5, 2, 7),
(470, 70, 5, 2, 7),
(471, 71, 5, 2, 8),
(472, 72, 5, 2, 8),
(473, 73, 5, 2, 8),
(474, 74, 5, 2, 8),
(475, 75, 5, 2, 8),
(476, 76, 5, 2, 8),
(477, 77, 5, 2, 8),
(478, 78, 5, 2, 8),
(479, 79, 5, 2, 8),
(480, 80, 5, 2, 8),
(481, 81, 5, 2, 9),
(482, 82, 5, 2, 9),
(483, 83, 5, 2, 9),
(484, 84, 5, 2, 9),
(485, 85, 5, 2, 9),
(486, 86, 5, 2, 9),
(487, 87, 5, 2, 9),
(488, 88, 5, 2, 9),
(489, 89, 5, 2, 9),
(490, 90, 5, 2, 9),
(491, 91, 5, 2, 10),
(492, 92, 5, 2, 10),
(493, 93, 5, 2, 10),
(494, 94, 5, 2, 10),
(495, 95, 5, 2, 10),
(496, 96, 5, 2, 10),
(497, 97, 5, 2, 10),
(498, 98, 5, 2, 10),
(499, 99, 5, 2, 10),
(500, 100, 5, 2, 10),
(501, 1, 6, 1, 1),
(502, 2, 6, 1, 1),
(503, 3, 6, 1, 1),
(504, 4, 6, 1, 1),
(505, 5, 6, 1, 1),
(506, 6, 6, 1, 1),
(507, 7, 6, 1, 1),
(508, 8, 6, 1, 1),
(509, 9, 6, 1, 1),
(510, 10, 6, 1, 1),
(511, 11, 6, 1, 2),
(512, 12, 6, 1, 2),
(513, 13, 6, 1, 2),
(514, 14, 6, 1, 2),
(515, 15, 6, 1, 2),
(516, 16, 6, 1, 2),
(517, 17, 6, 1, 2),
(518, 18, 6, 1, 2),
(519, 19, 6, 1, 2),
(520, 20, 6, 1, 2),
(521, 21, 6, 2, 3),
(522, 22, 6, 2, 3),
(523, 23, 6, 2, 3),
(524, 24, 6, 2, 3),
(525, 25, 6, 2, 3),
(526, 26, 6, 2, 3),
(527, 27, 6, 2, 3),
(528, 28, 6, 2, 3),
(529, 29, 6, 2, 3),
(530, 30, 6, 2, 3),
(531, 31, 6, 2, 4),
(532, 32, 6, 2, 4),
(533, 33, 6, 2, 4),
(534, 34, 6, 2, 4),
(535, 35, 6, 2, 4),
(536, 36, 6, 2, 4),
(537, 37, 6, 2, 4),
(538, 38, 6, 2, 4),
(539, 39, 6, 2, 4),
(540, 40, 6, 2, 4),
(541, 41, 6, 2, 5),
(542, 42, 6, 2, 5),
(543, 43, 6, 2, 5),
(544, 44, 6, 2, 5),
(545, 45, 6, 2, 5),
(546, 46, 6, 2, 5),
(547, 47, 6, 2, 5),
(548, 48, 6, 2, 5),
(549, 49, 6, 2, 5),
(550, 50, 6, 2, 5),
(551, 51, 6, 2, 6),
(552, 52, 6, 2, 6),
(553, 53, 6, 2, 6),
(554, 54, 6, 2, 6),
(555, 55, 6, 2, 6),
(556, 56, 6, 2, 6),
(557, 57, 6, 2, 6),
(558, 58, 6, 2, 6),
(559, 59, 6, 2, 6),
(560, 60, 6, 2, 6),
(561, 61, 6, 2, 7),
(562, 62, 6, 2, 7),
(563, 63, 6, 2, 7),
(564, 64, 6, 2, 7),
(565, 65, 6, 2, 7),
(566, 66, 6, 2, 7),
(567, 67, 6, 2, 7),
(568, 68, 6, 2, 7),
(569, 69, 6, 2, 7),
(570, 70, 6, 2, 7),
(571, 71, 6, 2, 8),
(572, 72, 6, 2, 8),
(573, 73, 6, 2, 8),
(574, 74, 6, 2, 8),
(575, 75, 6, 2, 8),
(576, 76, 6, 2, 8),
(577, 77, 6, 2, 8),
(578, 78, 6, 2, 8),
(579, 79, 6, 2, 8),
(580, 80, 6, 2, 8),
(581, 81, 6, 2, 9),
(582, 82, 6, 2, 9),
(583, 83, 6, 2, 9),
(584, 84, 6, 2, 9),
(585, 85, 6, 2, 9),
(586, 86, 6, 2, 9),
(587, 87, 6, 2, 9),
(588, 88, 6, 2, 9),
(589, 89, 6, 2, 9),
(590, 90, 6, 2, 9),
(591, 91, 6, 2, 10),
(592, 92, 6, 2, 10),
(593, 93, 6, 2, 10),
(594, 94, 6, 2, 10),
(595, 95, 6, 2, 10),
(596, 96, 6, 2, 10),
(597, 97, 6, 2, 10),
(598, 98, 6, 2, 10),
(599, 99, 6, 2, 10),
(600, 100, 6, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sediste_kategorija`
--

CREATE TABLE `sediste_kategorija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sediste_kategorija`
--

INSERT INTO `sediste_kategorija` (`id`, `naziv`) VALUES
(1, 'VIP'),
(2, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `tehnologija`
--

CREATE TABLE `tehnologija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tehnologija`
--

INSERT INTO `tehnologija` (`id`, `naziv`) VALUES
(1, '2D'),
(2, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`id`, `naziv`) VALUES
(1, 'Akcija'),
(2, 'Avantura'),
(3, 'Komedija'),
(4, 'Drama'),
(5, 'Fantazija'),
(6, 'Horor'),
(7, 'Misterija'),
(8, 'Romantika'),
(9, 'Triler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bioskop_grad` (`grad`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zanr` (`zanr`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klub` (`klub`,`nivo`),
  ADD KEY `nivo` (`nivo`);

--
-- Indexes for table `nivo`
--
ALTER TABLE `nivo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posluzenje`
--
ALTER TABLE `posluzenje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posluzenje_naruceno`
--
ALTER TABLE `posluzenje_naruceno`
  ADD PRIMARY KEY (`idRezervacije`,`IDPosluzenja`),
  ADD KEY `IDPosluzenja` (`IDPosluzenja`);

--
-- Indexes for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film` (`film`,`sala`),
  ADD KEY `sala` (`sala`),
  ADD KEY `tehnologija` (`tehnologija`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projekcija` (`projekcija`),
  ADD KEY `korisnik` (`korisnik`);

--
-- Indexes for table `rezervisana_sedista`
--
ALTER TABLE `rezervisana_sedista`
  ADD PRIMARY KEY (`idRezervacije`,`idSediste`),
  ADD KEY `idSediste` (`idSediste`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bioskop` (`bioskop`);

--
-- Indexes for table `sediste`
--
ALTER TABLE `sediste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sala` (`sala`,`kategorija`),
  ADD KEY `kategorija` (`kategorija`);

--
-- Indexes for table `sediste_kategorija`
--
ALTER TABLE `sediste_kategorija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tehnologija`
--
ALTER TABLE `tehnologija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bioskop`
--
ALTER TABLE `bioskop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nivo`
--
ALTER TABLE `nivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posluzenje`
--
ALTER TABLE `posluzenje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projekcija`
--
ALTER TABLE `projekcija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sediste`
--
ALTER TABLE `sediste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `sediste_kategorija`
--
ALTER TABLE `sediste_kategorija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tehnologija`
--
ALTER TABLE `tehnologija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zanr`
--
ALTER TABLE `zanr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD CONSTRAINT `bioskop_ibfk_1` FOREIGN KEY (`grad`) REFERENCES `grad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`zanr`) REFERENCES `zanr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `korisnik_ibfk_1` FOREIGN KEY (`nivo`) REFERENCES `nivo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `korisnik_ibfk_2` FOREIGN KEY (`klub`) REFERENCES `klub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posluzenje_naruceno`
--
ALTER TABLE `posluzenje_naruceno`
  ADD CONSTRAINT `posluzenje_naruceno_ibfk_1` FOREIGN KEY (`idRezervacije`) REFERENCES `rezervacija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posluzenje_naruceno_ibfk_2` FOREIGN KEY (`IDPosluzenja`) REFERENCES `posluzenje` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD CONSTRAINT `projekcija_ibfk_1` FOREIGN KEY (`sala`) REFERENCES `sala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projekcija_ibfk_2` FOREIGN KEY (`film`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projekcija_ibfk_3` FOREIGN KEY (`tehnologija`) REFERENCES `tehnologija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`projekcija`) REFERENCES `projekcija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezervacija_ibfk_2` FOREIGN KEY (`korisnik`) REFERENCES `korisnik` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rezervisana_sedista`
--
ALTER TABLE `rezervisana_sedista`
  ADD CONSTRAINT `rezervisana_sedista_ibfk_1` FOREIGN KEY (`idRezervacije`) REFERENCES `rezervacija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezervisana_sedista_ibfk_2` FOREIGN KEY (`idSediste`) REFERENCES `sediste` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`bioskop`) REFERENCES `bioskop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sediste`
--
ALTER TABLE `sediste`
  ADD CONSTRAINT `sediste_ibfk_1` FOREIGN KEY (`sala`) REFERENCES `sala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sediste_ibfk_2` FOREIGN KEY (`kategorija`) REFERENCES `sediste_kategorija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
