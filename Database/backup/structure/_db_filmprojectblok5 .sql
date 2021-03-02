-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 nov 2020 om 10:33
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
  `title` int(20) NOT NULL,
  `year` int(4) NOT NULL,
  `description` int(255) DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Beperkingen voor tabel `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `film_actor` FOREIGN KEY (`id`) REFERENCES `film_actor` (`id_film`),
  ADD CONSTRAINT `film_director` FOREIGN KEY (`id`) REFERENCES `film_ director` (`id_film`),
  ADD CONSTRAINT `film_rating` FOREIGN KEY (`id`) REFERENCES `ratings` (`id_film`);

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
