-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 30 nov 2020 om 13:21
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `	db_filmprojectblok5`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(15) NOT NULL,
  `password` int(11) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `films`
--

CREATE TABLE `films` (
  `title` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `description` text DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `films`
--

INSERT INTO `films` (`title`, `year`, `description`, `id`) VALUES
('Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'In the year 1720, while sailing to Port Royal, Jamaica aboard the HMS Dauntless, Governor Weatherby Swann, his daughter Elizabeth, Joshamee Gibbs, and Lieutenant James Norrington encounter a shipwreck and recover a boy, Will Turner. Elizabeth discovers a golden pirate medallion around his neck, and takes it for herself.', 3),
('Pirates of the Caribbean: Dead Man\'s Chest', 2006, 'The wedding of Will Turner and Elizabeth Swann is halted when Lord Cutler Beckett, chairman of the East India Trading Company, arrives with arrest warrants for them, and also for Commodore James Norrington, who allowed Captain Jack Sparrow to escape. Norrington has resigned and disappeared after losing the Navy\'s flagship, HMS Dauntless, in a hurricane while pursuing Jack. Meanwhile, Jack is visited by Will\'s father, Bootstrap Bill Turner, aboard the Black Pearl. Bootstrap is now a crewman on the Flying Dutchman, captained by Davy Jones. Jack previously bartered a deal with Jones to raise the Pearl from the depths; now Jack must join Jones\' crew or be dragged to Davy Jones\' Locker by the Kraken. Meanwhile, Beckett promises to free Elizabeth if Will brings him Jack\'s magic compass which points to whatever the holder wants most.', 4),
('Pirates of the Caribbean: At World\'s End ', 2007, 'To control the oceans, Lord Cutler Beckett executes anyone associated with piracy in Port Royal and orders Davy Jones to destroy all pirate ships. Condemned prisoners sing \"Hoist the Colours\" to compel the nine Pirate Lords to convene at Shipwreck Cove to hold the Brethren Court. Because Captain Jack Sparrow, Pirate Lord of the Caribbean Sea, never named a successor before being dragged to Davy Jones\' Locker, Captain Barbossa, Will Turner, Elizabeth Swann, Tia Dalma, and the crew of the Black Pearl plot to rescue Jack. Traveling to Singapore, the crew meet Captain Sao Feng, Pirate Lord of the South China Sea, who owns navigational charts to the Locker. Will secretly promises to give Jack to Feng in return for the Pearl, intending to use it to rescue his father Bootstrap Bill Turner from the Flying Dutchman.', 5),
('Pirates of the Caribbean: On Stranger Tides', 2011, 'After a failed attempt to rescue his first mate, Joshamee Gibbs, from execution in London, Captain Jack Sparrow is brought before King George II. The king asks Jack to guide an expedition to locate the Fountain of Youth, before King Ferdinand and the Spanish Navy locate it. Captain Hector Barbossa, now working as a privateer, and sporting a peg leg, is captaining the expedition, though only requires Sao Feng’s navigational charts, rather than Jack.', 6),
('Pirates of the Caribbean: Dead Men Tell No Tales', 2017, 'Thirteen years after the battle of Calypso\'s maelstrom, a twelve-year-old Henry Turner boards the Flying Dutchman and informs his father, Will, that the curse which binds Will to the Dutchman and only permits him to step on land once a decade can be broken by the Trident of Poseidon. Henry intends to recruit Captain Jack Sparrow to help find it, but Will believes this is impossible and orders Henry to leave. Will and the Dutchman then disappear into the sea, but Henry vows to find Jack and the Trident.', 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `film_actor`
--

CREATE TABLE `film_actor` (
  `id_film` int(11) UNSIGNED NOT NULL,
  `id_person` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `film_ director`
--

CREATE TABLE `film_ director` (
  `id_film` int(11) UNSIGNED NOT NULL,
  `id_person` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `people`
--

CREATE TABLE `people` (
  `name` varchar(20) NOT NULL,
  `year` int(4) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ratings`
--

CREATE TABLE `ratings` (
  `id_account` int(11) UNSIGNED NOT NULL,
  `id_film` int(11) UNSIGNED NOT NULL,
  `rating` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `film_actor`
--
ALTER TABLE `film_actor`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexen voor tabel `film_ director`
--
ALTER TABLE `film_ director`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexen voor tabel `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `index` (`id_account`),
  ADD KEY `id_film` (`id_film`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `account_rating` FOREIGN KEY (`id`) REFERENCES `ratings` (`id_account`);

--
-- Beperkingen voor tabel `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `film_actor_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `film_actor_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`);

--
-- Beperkingen voor tabel `film_ director`
--
ALTER TABLE `film_ director`
  ADD CONSTRAINT `film_ director_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`);

--
-- Beperkingen voor tabel `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `actor_film` FOREIGN KEY (`id`) REFERENCES `film_actor` (`id_person`),
  ADD CONSTRAINT `director_film` FOREIGN KEY (`id`) REFERENCES `film_ director` (`id_person`);

--
-- Beperkingen voor tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `films` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
