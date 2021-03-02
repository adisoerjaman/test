-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 11:49 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_filmprojectblok5`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`name`, `email`, `password_hash`, `id`) VALUES
('niels', 'niels@hotmail.nl', '$2y$10$czcjZetu2RM3LFzAnROCDeFDIgX0NN/gI0rObkaL.wibm18ECOAqe', 5),
('niels', 'niels2@hotmail.nl', '$2y$10$u2kNeP4E40KZtfGfnS/ayuv.Qgop8jo.eR2jst2wCDyMOdH3ZFoU2', 6),
('niels-niels7', 'niels1@hotmail.nl', '$2y$10$nWkdklRIKryTS1V6x/7EiOrVGY36h2tJO1BY5lxvsi/oTSOL4hiF6', 7),
('niels', 'niels4@hotmail.nl', '$2y$10$Wv.9LgBiqto6wPJW6fqj9e94BIcLtn8wRcafL4PcUZDfNRY4i6f6W', 8),
('niels', 'niels5@hotmail.nl', '$2y$10$FQxS5tROMhTxss3F2uBlbu1I/OTKMFeFu5P206gwDSCethtUHW.mG', 9),
('niels', 'niels6@hotmail.nl', '$2y$10$KgJIyQ7GMEE480TxTATvme1KLbgW3HkmW8qb9q6FTBuQCkGSfwo9G', 10),
('niels', 'niels7@hotmail.nl', '$2y$10$/5CdKggfBBZYYfLtABctge5tSlJ9dQLMYOSPnBIq7UFyeqMP4v5De', 11),
('niels', 'niels9@hotmail.nl', '$2y$10$oxDbj.AEYEB1scqhpoI8IeG8Gijvt/.N03VhtYGzrrbeaYxYmbZCG', 12),
('niels', 'niels10@hotmail.nl', '$2y$10$mGuxwHc7lvQajpFgOo6B8ua3rC9u5aeTyBCOFT1wKHwn0g2/BfT8i', 13),
('niels', 'niels11@hotmail.nl', '$2y$10$YYmsIGYCOkLEZjVpBv6E8ue290dDMxfqTz/gJgpPEJZw4A4UYzxRe', 14);

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `title` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `description` text DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`title`, `year`, `description`, `id`) VALUES
('Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'In the year 1720, while sailing to Port Royal, Jamaica aboard the HMS Dauntless, Governor Weatherby Swann, his daughter Elizabeth, Joshamee Gibbs, and Lieutenant James Norrington encounter a shipwreck and recover a boy, Will Turner. Elizabeth discovers a golden pirate medallion around his neck, and takes it for herself.', 3),
('Pirates of the Caribbean: Dead Man\'s Chest', 2006, 'The wedding of Will Turner and Elizabeth Swann is halted when Lord Cutler Beckett, chairman of the East India Trading Company, arrives with arrest warrants for them, and also for Commodore James Norrington, who allowed Captain Jack Sparrow to escape. Norrington has resigned and disappeared after losing the Navy\'s flagship, HMS Dauntless, in a hurricane while pursuing Jack. Meanwhile, Jack is visited by Will\'s father, Bootstrap Bill Turner, aboard the Black Pearl. Bootstrap is now a crewman on the Flying Dutchman, captained by Davy Jones. Jack previously bartered a deal with Jones to raise the Pearl from the depths; now Jack must join Jones\' crew or be dragged to Davy Jones\' Locker by the Kraken. Meanwhile, Beckett promises to free Elizabeth if Will brings him Jack\'s magic compass which points to whatever the holder wants most.', 4),
('Pirates of the Caribbean: At World\'s End ', 2007, 'To control the oceans, Lord Cutler Beckett executes anyone associated with piracy in Port Royal and orders Davy Jones to destroy all pirate ships. Condemned prisoners sing \"Hoist the Colours\" to compel the nine Pirate Lords to convene at Shipwreck Cove to hold the Brethren Court. Because Captain Jack Sparrow, Pirate Lord of the Caribbean Sea, never named a successor before being dragged to Davy Jones\' Locker, Captain Barbossa, Will Turner, Elizabeth Swann, Tia Dalma, and the crew of the Black Pearl plot to rescue Jack. Traveling to Singapore, the crew meet Captain Sao Feng, Pirate Lord of the South China Sea, who owns navigational charts to the Locker. Will secretly promises to give Jack to Feng in return for the Pearl, intending to use it to rescue his father Bootstrap Bill Turner from the Flying Dutchman.', 5),
('Pirates of the Caribbean: On Stranger Tides', 2011, 'After a failed attempt to rescue his first mate, Joshamee Gibbs, from execution in London, Captain Jack Sparrow is brought before King George II. The king asks Jack to guide an expedition to locate the Fountain of Youth, before King Ferdinand and the Spanish Navy locate it. Captain Hector Barbossa, now working as a privateer, and sporting a peg leg, is captaining the expedition, though only requires Sao Feng’s navigational charts, rather than Jack.', 6),
('Pirates of the Caribbean: Dead Men Tell No Tales', 2017, 'Thirteen years after the battle of Calypso\'s maelstrom, a twelve-year-old Henry Turner boards the Flying Dutchman and informs his father, Will, that the curse which binds Will to the Dutchman and only permits him to step on land once a decade can be broken by the Trident of Poseidon. Henry intends to recruit Captain Jack Sparrow to help find it, but Will believes this is impossible and orders Henry to leave. Will and the Dutchman then disappear into the sea, but Henry vows to find Jack and the Trident.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `film_actor`
--

CREATE TABLE `film_actor` (
  `id_film` int(11) UNSIGNED NOT NULL,
  `id_person` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film_actor`
--

INSERT INTO `film_actor` (`id_film`, `id_person`) VALUES
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `film_director`
--

CREATE TABLE `film_director` (
  `id_film` int(11) UNSIGNED NOT NULL,
  `id_person` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film_director`
--

INSERT INTO `film_director` (`id_film`, `id_person`) VALUES
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `name` varchar(20) NOT NULL,
  `year` int(4) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`name`, `year`, `id`) VALUES
('Gore Verbinski', 1964, 3),
('Keira Knightley', 1985, 4),
('Orlando Bloom', 1977, 5),
('Johnny Depp', 1963, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id_account` int(11) UNSIGNED NOT NULL,
  `id_film` int(11) UNSIGNED NOT NULL,
  `rating` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id_account` int(11) DEFAULT NULL,
  `value` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id_account`, `value`) VALUES
(1, '6006a3ab7adc8'),
(2, '6006a4a66fa7c'),
(1, '6006a4faef82a'),
(2, '6006a58264bbd'),
(3, '6006a63662454'),
(4, '6006a74ab12a6'),
(6, '6006ab0f19047'),
(6, '600983778b8ba'),
(7, '6009837b72af2'),
(5, '600aa53e082c3'),
(8, '600ac613354eb'),
(9, '600ac61adf4bb'),
(10, '600ac620ee740'),
(10, '600ac6210f74c'),
(11, '600ac97b685a4'),
(11, '600ac97b7dbdb'),
(12, '600ad64836fc5'),
(13, '600ad7e1aca65'),
(14, '600ad89b43a30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_actor`
--
ALTER TABLE `film_actor`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexes for table `film_director`
--
ALTER TABLE `film_director`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `index` (`id_account`),
  ADD KEY `id_film` (`id_film`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD UNIQUE KEY `value` (`value`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `film_actor_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `film_actor_ibfk_2` FOREIGN KEY (`id_person`) REFERENCES `people` (`id`);

--
-- Constraints for table `film_director`
--
ALTER TABLE `film_director`
  ADD CONSTRAINT `film_director_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `film_director_ibfk_2` FOREIGN KEY (`id_person`) REFERENCES `people` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
