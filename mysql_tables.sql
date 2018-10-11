SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chrismedina_livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `assn_pokemon_pokemon_types`
--

CREATE TABLE `assn_pokemon_pokemon_types` (
  `pokemon_id` smallint(4) NOT NULL,
  `pokemon_type_id` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assn_pokemon_pokemon_types`
--

INSERT INTO `assn_pokemon_pokemon_types` (`pokemon_id`, `pokemon_type_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 3),
(6, 4),
(7, 5),
(8, 5),
(9, 5),
(10, 6),
(11, 6),
(12, 4),
(12, 6),
(13, 1),
(13, 6),
(14, 1),
(14, 6),
(15, 1),
(15, 6),
(16, 4),
(16, 7),
(17, 4),
(17, 7),
(18, 4),
(18, 7),
(19, 7),
(20, 7),
(21, 4),
(21, 7),
(22, 4),
(22, 7),
(23, 1),
(24, 1),
(25, 8),
(26, 8),
(27, 9),
(28, 9),
(29, 1),
(30, 1),
(31, 1),
(31, 9),
(32, 1),
(33, 1),
(34, 1),
(34, 9),
(35, 10),
(36, 10),
(37, 3),
(38, 3),
(39, 7),
(39, 10),
(40, 7),
(40, 10),
(41, 1),
(41, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 2),
(46, 6),
(47, 2),
(47, 6),
(48, 1),
(48, 6),
(49, 1),
(49, 6),
(50, 9),
(51, 9),
(52, 7),
(53, 7),
(54, 5),
(55, 5),
(56, 11),
(57, 11),
(58, 3),
(59, 3),
(60, 5),
(61, 5),
(62, 5),
(62, 11),
(63, 12),
(64, 12),
(65, 12),
(66, 11),
(67, 11),
(68, 11),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 9),
(74, 13),
(75, 9),
(75, 13),
(76, 9),
(76, 13),
(77, 3),
(78, 3),
(79, 5),
(79, 12),
(80, 5),
(80, 12),
(81, 8),
(81, 14),
(82, 8),
(82, 14),
(83, 4),
(83, 7),
(84, 4),
(84, 7),
(85, 4),
(85, 7),
(86, 5),
(87, 5),
(87, 15),
(88, 1),
(89, 1),
(90, 5),
(91, 5),
(91, 15),
(92, 1),
(92, 16),
(93, 1),
(93, 16),
(94, 1),
(94, 16),
(95, 9),
(95, 13),
(96, 12),
(97, 12),
(98, 5),
(99, 5),
(100, 8),
(101, 8),
(102, 2),
(102, 12),
(103, 2),
(103, 12),
(104, 9),
(105, 9),
(106, 11),
(107, 11),
(108, 7),
(109, 1),
(110, 1),
(111, 9),
(111, 13),
(112, 9),
(112, 13),
(113, 7),
(114, 2),
(115, 7),
(116, 5),
(117, 5),
(118, 5),
(119, 5),
(120, 5),
(121, 5),
(121, 12),
(122, 10),
(122, 12),
(123, 4),
(123, 6),
(124, 12),
(124, 15),
(125, 8),
(126, 3),
(127, 6),
(128, 7),
(129, 5),
(130, 4),
(130, 5),
(131, 5),
(131, 15),
(132, 7),
(133, 7),
(134, 5),
(135, 8),
(136, 3),
(137, 7),
(138, 5),
(138, 13),
(139, 5),
(139, 13),
(140, 5),
(140, 13),
(141, 5),
(141, 13),
(142, 4),
(142, 13),
(143, 7),
(144, 4),
(144, 15),
(145, 4),
(145, 8),
(146, 3),
(146, 4),
(147, 17),
(148, 17),
(149, 4),
(149, 17),
(150, 12),
(151, 12);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
`pokemon_id` smallint(4) NOT NULL,
  `pokemon_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`pokemon_id`, `pokemon_name`) VALUES
(63, 'Abra'),
(142, 'Aerodactyl'),
(65, 'Alakazam'),
(24, 'Arbok'),
(59, 'Arcanine'),
(144, 'Articuno'),
(15, 'Beedrill'),
(69, 'Bellsprout'),
(9, 'Blastoise'),
(1, 'Bulbasaur'),
(12, 'Butterfree'),
(10, 'Caterpie'),
(113, 'Chansey'),
(6, 'Charizard'),
(4, 'Charmander'),
(5, 'Charmeleon'),
(36, 'Clefable'),
(35, 'Clefairy'),
(91, 'Cloyster'),
(104, 'Cubone'),
(87, 'Dewgong'),
(50, 'Diglett'),
(132, 'Ditto'),
(85, 'Dodrio'),
(84, 'Doduo'),
(148, 'Dragonair'),
(149, 'Dragonite'),
(147, 'Dratini'),
(96, 'Drowzee'),
(51, 'Dugtrio'),
(133, 'Eevee'),
(23, 'Ekans'),
(125, 'Electabuzz'),
(101, 'Electrode'),
(102, 'Exeggcute'),
(103, 'Exeggutor'),
(83, 'Farfetchd'),
(22, 'Fearow'),
(136, 'Flareon'),
(92, 'Gastly'),
(94, 'Gengar'),
(74, 'Geodude'),
(44, 'Gloom'),
(42, 'Golbat'),
(118, 'Goldeen'),
(55, 'Golduck'),
(76, 'Golem'),
(75, 'Graveler'),
(88, 'Grimer'),
(58, 'Growlithe'),
(130, 'Gyarados'),
(93, 'Haunter'),
(107, 'Hitmonchan'),
(106, 'Hitmonlee'),
(116, 'Horsea'),
(97, 'Hypno'),
(2, 'Ivysaur'),
(39, 'Jigglypuff'),
(135, 'Jolteon'),
(124, 'Jynx'),
(140, 'Kabuto'),
(141, 'Kabutops'),
(64, 'Kadabra'),
(14, 'Kakuna'),
(115, 'Kangaskhan'),
(99, 'Kingler'),
(109, 'Koffing'),
(98, 'Krabby'),
(131, 'Lapras'),
(108, 'Lickitung'),
(68, 'Machamp'),
(67, 'Machoke'),
(66, 'Machop'),
(129, 'Magikarp'),
(126, 'Magmar'),
(81, 'Magnemite'),
(82, 'Magneton'),
(56, 'Mankey'),
(105, 'Marowak'),
(52, 'Meowth'),
(11, 'Metapod'),
(151, 'Mew'),
(150, 'Mewtwo'),
(146, 'Moltres'),
(122, 'Mr-mime'),
(89, 'Muk'),
(34, 'Nidoking'),
(31, 'Nidoqueen'),
(29, 'Nidoran-f'),
(32, 'Nidoran-m'),
(30, 'Nidorina'),
(33, 'Nidorino'),
(38, 'Ninetales'),
(43, 'Oddish'),
(138, 'Omanyte'),
(139, 'Omastar'),
(95, 'Onix'),
(46, 'Paras'),
(47, 'Parasect'),
(53, 'Persian'),
(18, 'Pidgeot'),
(17, 'Pidgeotto'),
(16, 'Pidgey'),
(25, 'Pikachu'),
(127, 'Pinsir'),
(60, 'Poliwag'),
(61, 'Poliwhirl'),
(62, 'Poliwrath'),
(77, 'Ponyta'),
(137, 'Porygon'),
(57, 'Primeape'),
(54, 'Psyduck'),
(26, 'Raichu'),
(78, 'Rapidash'),
(20, 'Raticate'),
(19, 'Rattata'),
(112, 'Rhydon'),
(111, 'Rhyhorn'),
(27, 'Sandshrew'),
(28, 'Sandslash'),
(123, 'Scyther'),
(117, 'Seadra'),
(119, 'Seaking'),
(86, 'Seel'),
(90, 'Shellder'),
(80, 'Slowbro'),
(79, 'Slowpoke'),
(143, 'Snorlax'),
(21, 'Spearow'),
(7, 'Squirtle'),
(121, 'Starmie'),
(120, 'Staryu'),
(114, 'Tangela'),
(128, 'Tauros'),
(72, 'Tentacool'),
(73, 'Tentacruel'),
(134, 'Vaporeon'),
(49, 'Venomoth'),
(48, 'Venonat'),
(3, 'Venusaur'),
(71, 'Victreebel'),
(45, 'Vileplume'),
(100, 'Voltorb'),
(37, 'Vulpix'),
(8, 'Wartortle'),
(13, 'Weedle'),
(70, 'Weepinbell'),
(110, 'Weezing'),
(40, 'Wigglytuff'),
(145, 'Zapdos'),
(41, 'Zubat');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_types`
--

CREATE TABLE `pokemon_types` (
`pokemon_type_id` tinyint(2) NOT NULL,
  `pokemon_type_name` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon_types`
--

INSERT INTO `pokemon_types` (`pokemon_type_id`, `pokemon_type_name`) VALUES
(6, 'bug'),
(17, 'dragon'),
(8, 'electric'),
(10, 'fairy'),
(11, 'fighting'),
(3, 'fire'),
(4, 'flying'),
(16, 'ghost'),
(2, 'grass'),
(9, 'ground'),
(15, 'ice'),
(7, 'normal'),
(1, 'poison'),
(12, 'psychic'),
(13, 'rock'),
(14, 'steel'),
(5, 'water');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assn_pokemon_pokemon_types`
--
ALTER TABLE `assn_pokemon_pokemon_types`
 ADD PRIMARY KEY (`pokemon_id`,`pokemon_type_id`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
 ADD PRIMARY KEY (`pokemon_id`), ADD UNIQUE KEY `pokemon_name` (`pokemon_name`);

--
-- Indexes for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
 ADD PRIMARY KEY (`pokemon_type_id`), ADD UNIQUE KEY `pokemon_type_name` (`pokemon_type_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
MODIFY `pokemon_id` smallint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
MODIFY `pokemon_type_id` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
