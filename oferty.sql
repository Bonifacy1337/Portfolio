-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Lut 2020, 21:41
-- Wersja serwera: 10.4.10-MariaDB
-- Wersja PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `komis`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty`
--

CREATE TABLE `oferty` (
  `ids` int(11) NOT NULL,
  `marka` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `drzwi` smallint(6) NOT NULL DEFAULT 0,
  `silnik` varchar(4) COLLATE utf8_polish_ci NOT NULL DEFAULT 'brak',
  `pojemnosc` float NOT NULL DEFAULT 0,
  `kolor` varchar(20) COLLATE utf8_polish_ci NOT NULL DEFAULT 'brak',
  `przebieg` int(11) DEFAULT 0,
  `rocznik` smallint(6) NOT NULL DEFAULT 0,
  `cena` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `oferty`
--

INSERT INTO `oferty` (`ids`, `marka`, `model`, `drzwi`, `silnik`, `pojemnosc`, `kolor`, `przebieg`, `rocznik`, `cena`) VALUES
(1, 'Suzuki', 'Lapin', 5, 'B', 1, 'różowy', 30000, 2018, 32000),
(2, 'Suzuki', 'Lapin', 5, 'B', 1, 'morska zieleń', 30000, 2018, 40000),
(3, 'Daihatsu', 'Mira', 5, 'B', 1, 'żółty', 30000, 2018, 38000),
(4, 'Nissan', 'ROOX', 5, 'B', 1.4, 'biały', 40000, 2017, 45000),
(5, 'Nissan', 'Clipper', 2, 'B', 1.6, 'Biały', 2000, 2019, 52000),
(6, 'Nissan', 'Clipper', 5, 'B', 1.5, 'srebrny', 1000, 2017, 32000),
(7, 'Toyota', 'Land Cruiser Prado', 5, 'D', 1, 'Biały', 1000, 2019, 54000),
(8, 'Honda', 'Acty Truck', 2, 'B', 1.4, 'biały', 30000, 2019, 40000),
(9, 'Mitsubishi', 'Canter', 2, 'B', 1.4, 'czarny', 20000, 2017, 20000),
(10, 'Nissan', 'Note', 5, 'D', 1, 'biały', 20000, 2018, 36000),
(11, 'Toyota', 'Voxy', 5, 'B', 2, 'czarny', 20000, 2018, 45000),
(12, 'Toyota', 'Sienta', 5, 'B', 1, 'czarny', 20000, 20000, 20000),
(13, 'Isuzu', 'Elf truck', 2, 'B', 2, 'B', 20000, 2018, 34000),
(14, 'Toyota', 'Premio', 5, 'B', 1.2, 'czerwony', 20000, 2018, 20000),
(15, 'Toyota', 'FJ Cruiser', 3, 'B', 1.5, 'biały', 20000, 2017, 30000),
(16, 'Suzuki', 'Swift', 5, 'B', 1.2, 'Szary', 33500, 2017, 45600),
(17, 'Opel', 'Astra', 4, 'B', 1.3, 'biała', 0, 2019, 75000),
(18, 'Volkwagen', 'Touareg', 5, 'D', 2, 'biały', 0, 2019, 390950),
(19, 'Kia', 'Ceed', 5, 'B', 1.4, 'niebieski', 10, 2019, 93790),
(20, 'Opel', 'Adam', 3, 'B', 1.4, 'niebieski', 5, 2019, 57500),
(21, 'Volkswagen', 'Arteon', 5, 'D', 2, 'czarny', 1, 2019, 184900),
(22, 'Audi', 'A7', 5, 'D', 2.9, 'niebieski', 4133, 2018, 349900),
(23, 'Kia', 'Sorento', 5, 'D', 1.9, 'biały', 9, 2019, 179800),
(24, 'Opel', 'Insignia', 5, 'B', 2, 'szary', 5, 2018, 139900),
(25, 'Volkswagen', 'Golf', 5, 'B', 1.5, 'szary', 1, 2019, 93900),
(26, 'Volkswagen', 'T-Roc', 5, 'B', 1.5, 'biały', 5, 2019, 117900),
(27, 'Volkswagen', 'T-Roc', 5, 'B', 1.5, 'biały', 5, 2019, 117900),
(28, 'Seat', 'Ateca', 5, 'B', 2, 'brązowy', 5, 2019, 143350),
(29, 'Volkswagen', 'Tiguan Allspacce', 5, 'D', 2, 'szary', 5, 2019, 2019),
(30, 'Opel', 'Grandland X', 5, 'D', 1.5, 'fioletowy', 14900, 2017, 92900),
(31, 'Seat', 'Tarraco', 5, 'D', 2, 'biały', 1, 2019, 188000),
(32, 'Skoda', 'Octavia', 5, 'D', 2, 'czarny', 15000, 2017, 67000),
(33, 'Seat', 'Szary', 5, 'B', 0.9, 'szary', 1, 2019, 73528),
(34, 'Ford', 'Mustang', 3, 'B', 5, 'biały', 1, 2019, 226000),
(35, 'Seat', 'Leon', 5, 'B', 1.4, 'fioletowy', 10, 2018, 73600),
(36, 'Opel', 'Combo', 5, 'D', 1.4, 'szary', 6, 2018, 72900),
(37, 'Opel', 'Insignia', 4, 'D', 2, 'Czarny', 235000, 2010, 29990),
(38, 'Volvo', 'S60', 5, 'D', 1.6, 'Grantowy', 168600, 2013, 44900),
(39, 'Ford', 'Galaxy', 5, 'D', 2, 'Biały', 153800, 2014, 54900),
(40, 'Volkswagen', 'Passat', 4, 'D', 1.9, 'Srebrny', 151000, 2015, 54900),
(41, 'BMW', 'X2', 4, 'B', 2, 'Srebrny', 19580, 2018, 129500),
(42, 'Land Rover', 'Range Rover Evoque', 5, 'B', 2, 'Czarny', 101000, 2013, 79000),
(43, 'Volkswagen', 'Touareg', 5, 'B', 2, 'Brązowy', 126000, 2013, 79000),
(44, 'Kia', 'Pro_cee\'d', 3, 'D', 1.5, 'Czarny', 86000, 2008, 19900),
(45, 'Mercedes-Benz', 'Klasa G', 5, 'B', 3.9, 'Zielony', 15391, 2018, 762700),
(46, 'Volkswagen', 'Golf', 4, 'D', 1.9, 'Biały', 20000, 2017, 107000),
(47, 'Honda', 'CR-V', 5, 'B', 2, 'Srebrny', 267970, 2002, 14900),
(48, 'Ford', 'Kuga', 5, 'D', 1.9, 'Czarny', 112000, 2014, 58000),
(49, 'Skoda', 'Octavia', 5, 'B', 1.4, 'Niebieski', 10, 2018, 112700),
(50, 'BMW', 'X2', 5, 'B', 2, 'Czarny', 3300, 2018, 136900),
(51, 'Land Rover', 'Range Rover Velar', 5, 'D', 2, 'Szary', 20000, 2018, 63335),
(52, 'Peugeot', '308', 5, 'D', 1.6, 'Srebrny', 80000, 2017, 32500),
(53, 'Opel', 'Corsa', 5, 'B', 1.3, 'Czarny', 1, 2018, 46900),
(54, 'Mercedes-Benz', 'Klasa B', 5, 'B', 1.3, 'Biały', 1000, 2018, 129900),
(55, 'Alfa Romeo', 'Stelvio', 5, 'B', 1.9, 'Szary', 5000, 2018, 189500),
(56, 'Porsche', 'Macan', 5, 'B', 1.9, 'Niebieski', 5, 2019, 311000),
(57, 'Mercedes-Benz', 'Klasa E', 5, 'D', 1.9, 'Biały', 12500, 2018, 229900),
(58, 'Jeep', 'Renegade', 5, 'B', 0.9, 'Biały', 1, 2018, 81792),
(59, 'Nissan', 'Micra', 5, 'B', 0.9, 'Czerwony', 10, 2019, 59990),
(60, 'Skoda', 'Octavia', 5, 'B', 1.4, 'Niebieski', 10, 2018, 112700),
(61, 'Peugeot', '308', 5, 'B', 1.2, 'Fioletowy', 17300, 2017, 21900),
(62, 'Jeep', 'Grand Cherokee', 5, 'B', 5.7, 'Czarny', 36000, 2018, 187000),
(63, 'Renault', 'Clio', 5, 'B', 1.1, 'Czarny', 9600, 2018, 39800),
(64, 'Nissan', 'X-Trail', 5, 'B', 1.6, 'Biały', 15000, 2018, 110000),
(65, 'Volvo', 'XC 90', 5, 'H', 1.9, 'Szary', 5, 2019, 267750),
(66, 'Seat', 'Leon', 5, 'B', 1.7, 'Czerwony', 49000, 2017, 79900),
(67, 'Mitsubishi', 'Outlander', 5, 'B', 2.3, 'Szary', 22000, 2018, 79999),
(68, 'Volkswagen', 'Caddy', 5, 'D', 1.9, 'Biały', 5, 2019, 82287),
(69, 'Mazda', '3', 5, 'D', 1.5, 'Czerwony', 16000, 2017, 56500),
(70, 'Audi', 'A5', 2, 'B', 1.9, 'Biały', 20300, 2018, 150000),
(71, 'Volkswagen', 'Golf', 5, 'D', 1.6, 'Złoty', 39850, 2018, 72500),
(72, 'Seat', 'Leon', 5, 'B', 1.4, 'Czarny', 28845, 2017, 84999),
(73, 'Ford', 'Escape', 5, 'B', 2, 'Czerwony', 10500, 2017, 72200),
(74, 'Audi', 'A6', 5, 'D', 1.9, 'Czarny', 5, 2019, 236500),
(75, 'Kia', 'Niro', 5, 'H', 1.6, 'Srebrny', 10, 2019, 113450),
(76, 'Honda', 'Civic', 5, 'B', 1, 'Szary', 24000, 2018, 73800),
(77, 'Hyundai', 'i10', 5, 'B', 0.9, 'Czarny', 2285, 2018, 34999),
(78, 'Mitsubishi', 'Outlander', 5, 'B', 2, 'Srebrny', 8800, 2017, 63900),
(79, 'Hyundai', 'I30', 5, 'B', 1.3, 'Srebrny', 17932, 2018, 49899),
(80, 'Mercedes-Benz', 'Klasa E', 4, 'D', 1.9, 'Srebrny', 93000, 2018, 112900),
(81, 'Dacia', 'Duster', 5, 'D', 1.5, 'Biały', 55000, 2017, 43900),
(82, 'Audi', 'A5', 2, 'B', 1.9, 'Szary', 0, 2019, 252600),
(83, 'Honda', 'HR-V', 5, 'B', 1.5, 'Srebrny', 15, 2019, 104000),
(84, 'Mercedes-Benz', 'Klasa C', 5, 'D', 1.9, 'Czarny', 3000, 2018, 186900),
(85, 'Isuzu', 'D-Max', 4, 'D', 1.8, 'Biały', 14600, 2019, 112999),
(86, 'Mercedes-Benz', 'GLC', 4, 'B', 2, 'Biały', 13900, 2017, 188067),
(87, 'Volkswagen', 'Arteon', 5, 'D', 2, 'Czarny', 40000, 2017, 86900),
(88, 'Alfa Romeo', 'Giulietta', 5, 'D', 1.5, 'Czarny', 55000, 2017, 58900),
(89, 'Mercedes-Benz', 'Klasa A', 5, 'B', 1.5, 'Biały', 21000, 2017, 84900),
(90, 'Nissan', 'Qashqai', 5, 'B', 1.3, 'Czarny', 1, 2019, 86900),
(91, 'BMW', 'M2', 2, 'B', 2.9, 'Srebrny', 2, 2019, 299500),
(92, 'Volkswagen', 'Transporter', 4, 'D', 1.9, 'Biały', 5, 2019, 105165),
(93, 'Volkswagen', 'Golf', 5, 'B', 1.4, 'Biały', 1, 2019, 107500),
(94, 'Opel', 'Insignia', 5, 'D', 1.9, 'Niebieski', 29800, 2017, 73700),
(95, 'Peugeot', 'Expert', 5, 'D', 1.5, 'Srebrny', 24000, 2017, 79950),
(96, 'Ford', 'Focus', 5, 'D', 1.5, 'Beżowy', 10, 2018, 106900),
(97, 'BMW', 'Seria 1', 5, 'B', 1.4, 'Biały', 32100, 1018, 94900),
(98, 'Nissan', 'Juke', 5, 'B', 1.6, 'Szary', 4999, 2018, 51900),
(99, 'BMW', 'Seria 5', 4, 'D', 2.9, 'Czarny', 28000, 2018, 289900),
(100, 'Audi', 'A5', 3, 'B', 2, 'Niebieski', 27500, 2017, 199000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `oferty`
--
ALTER TABLE `oferty`
  ADD PRIMARY KEY (`ids`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `oferty`
--
ALTER TABLE `oferty`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
