-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Lut 2022, 23:00
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sylius_dev`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `app_supplier`
--

CREATE TABLE `app_supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `app_supplier`
--

INSERT INTO `app_supplier` (`id`, `name`, `email`, `state`) VALUES
(3, 'Apples Supplier', 'apples@supplaier.com', 'trusted'),
(4, 'BIOFARM', 'biofarm@gmail.com', 'trusted'),
(5, 'Elephant Supplier', 'elephant@example.com', 'trusted'),
(7, 'Piotr Falkowski', 'falus94@gmail.com', 'trusted'),
(8, 'Lynch Ltd', 'herminia.hahn@hamill.com', 'new'),
(9, 'Littel-Kiehn', 'mwolf@harris.org', 'new'),
(10, 'Wisoky, Dooley and Parker', 'trinity79@fadel.com', 'new'),
(11, 'VonRueden, Cummings and Wisoky', 'pouros.serena@streich.net', 'new'),
(12, 'McCullough-Harris', 'armand.carter@osinski.org', 'new'),
(13, 'Parker Inc', 'mmedhurst@schinner.com', 'new'),
(14, 'Muller Ltd', 'cleve.jenkins@wolff.com', 'new'),
(15, 'Tremblay Inc', 'mathilde.reilly@kilback.info', 'new'),
(16, 'Carter, Christiansen and Ledner', 'annabell89@greenfelder.com', 'new'),
(17, 'Predovic LLC', 'boehm.theo@effertz.org', 'new');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `product_color`
--

INSERT INTO `product_color` (`id`, `name`) VALUES
(1, 'Czerwony'),
(2, 'Niebieski'),
(3, 'Zielony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_address`
--

CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_address`
--

INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(1, 17, 'Gene', 'Conn', NULL, '645 Okuneva Way Apt. 328', NULL, 'Port Margretstad', '85718-8715', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'ES', NULL, NULL),
(2, NULL, 'Gene', 'Conn', NULL, '645 Okuneva Way Apt. 328', NULL, 'Port Margretstad', '85718-8715', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'ES', NULL, NULL),
(3, NULL, 'Gene', 'Conn', NULL, '645 Okuneva Way Apt. 328', NULL, 'Port Margretstad', '85718-8715', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'ES', NULL, NULL),
(4, 21, 'Shaniya', 'Barton', NULL, '9109 Patience Crescent', NULL, 'Daphneeside', '71282-1032', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(5, NULL, 'Shaniya', 'Barton', NULL, '9109 Patience Crescent', NULL, 'Daphneeside', '71282-1032', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(6, NULL, 'Shaniya', 'Barton', NULL, '9109 Patience Crescent', NULL, 'Daphneeside', '71282-1032', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(7, 20, 'Felton', 'Barton', NULL, '51312 Lisa Islands', NULL, 'West Zacharyview', '35364', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'GB', NULL, NULL),
(8, NULL, 'Felton', 'Barton', NULL, '51312 Lisa Islands', NULL, 'West Zacharyview', '35364', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'GB', NULL, NULL),
(9, NULL, 'Felton', 'Barton', NULL, '51312 Lisa Islands', NULL, 'West Zacharyview', '35364', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'GB', NULL, NULL),
(10, 20, 'Horace', 'Hyatt', NULL, '29777 Jakubowski Motorway', NULL, 'Nehaview', '19776-8284', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'AU', NULL, NULL),
(11, NULL, 'Horace', 'Hyatt', NULL, '29777 Jakubowski Motorway', NULL, 'Nehaview', '19776-8284', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'AU', NULL, NULL),
(12, NULL, 'Horace', 'Hyatt', NULL, '29777 Jakubowski Motorway', NULL, 'Nehaview', '19776-8284', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'AU', NULL, NULL),
(13, 6, 'Al', 'Lehner', NULL, '69529 Torp Curve Suite 895', NULL, 'South Jaylonberg', '83916', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'DE', NULL, NULL),
(14, NULL, 'Al', 'Lehner', NULL, '69529 Torp Curve Suite 895', NULL, 'South Jaylonberg', '83916', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'DE', NULL, NULL),
(15, NULL, 'Al', 'Lehner', NULL, '69529 Torp Curve Suite 895', NULL, 'South Jaylonberg', '83916', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'DE', NULL, NULL),
(16, 15, 'Uriel', 'Kessler', NULL, '81596 Wunsch Course Suite 920', NULL, 'Abernathychester', '42259-1149', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(17, NULL, 'Uriel', 'Kessler', NULL, '81596 Wunsch Course Suite 920', NULL, 'Abernathychester', '42259-1149', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(18, NULL, 'Uriel', 'Kessler', NULL, '81596 Wunsch Course Suite 920', NULL, 'Abernathychester', '42259-1149', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(19, 21, 'Kacey', 'Wiegand', NULL, '92934 Padberg Loop Apt. 254', NULL, 'East Stanhaven', '98111', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(20, NULL, 'Kacey', 'Wiegand', NULL, '92934 Padberg Loop Apt. 254', NULL, 'East Stanhaven', '98111', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(21, NULL, 'Kacey', 'Wiegand', NULL, '92934 Padberg Loop Apt. 254', NULL, 'East Stanhaven', '98111', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'FR', NULL, NULL),
(22, 9, 'Mckenna', 'Corkery', NULL, '184 Estrella Pass Apt. 038', NULL, 'New Trisha', '50212', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'CA', NULL, NULL),
(23, NULL, 'Mckenna', 'Corkery', NULL, '184 Estrella Pass Apt. 038', NULL, 'New Trisha', '50212', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'CA', NULL, NULL),
(24, NULL, 'Mckenna', 'Corkery', NULL, '184 Estrella Pass Apt. 038', NULL, 'New Trisha', '50212', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'CA', NULL, NULL),
(25, 16, 'Albertha', 'Larson', NULL, '78143 Rogahn Viaduct', NULL, 'Bartholometon', '34989-2209', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(26, NULL, 'Albertha', 'Larson', NULL, '78143 Rogahn Viaduct', NULL, 'Bartholometon', '34989-2209', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(27, NULL, 'Albertha', 'Larson', NULL, '78143 Rogahn Viaduct', NULL, 'Bartholometon', '34989-2209', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'PT', NULL, NULL),
(28, 21, 'Iva', 'Tromp', NULL, '21716 Schuppe Ways', NULL, 'Port Juana', '85539-7299', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(29, NULL, 'Iva', 'Tromp', NULL, '21716 Schuppe Ways', NULL, 'Port Juana', '85539-7299', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(30, NULL, 'Iva', 'Tromp', NULL, '21716 Schuppe Ways', NULL, 'Port Juana', '85539-7299', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(31, 4, 'Ford', 'Lubowitz', NULL, '7688 Sanford Fields', NULL, 'Murraybury', '76342', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(32, NULL, 'Ford', 'Lubowitz', NULL, '7688 Sanford Fields', NULL, 'Murraybury', '76342', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(33, NULL, 'Ford', 'Lubowitz', NULL, '7688 Sanford Fields', NULL, 'Murraybury', '76342', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(34, 19, 'Alexandre', 'Langworth', NULL, '4017 Howell Alley Apt. 365', NULL, 'West Newell', '72739', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'FR', NULL, NULL),
(35, NULL, 'Alexandre', 'Langworth', NULL, '4017 Howell Alley Apt. 365', NULL, 'West Newell', '72739', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'FR', NULL, NULL),
(36, NULL, 'Alexandre', 'Langworth', NULL, '4017 Howell Alley Apt. 365', NULL, 'West Newell', '72739', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'FR', NULL, NULL),
(37, 1, 'Ada', 'Leuschke', NULL, '8580 Haylie Turnpike', NULL, 'Breitenbergville', '62261', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'NZ', NULL, NULL),
(38, NULL, 'Ada', 'Leuschke', NULL, '8580 Haylie Turnpike', NULL, 'Breitenbergville', '62261', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'NZ', NULL, NULL),
(39, NULL, 'Ada', 'Leuschke', NULL, '8580 Haylie Turnpike', NULL, 'Breitenbergville', '62261', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'NZ', NULL, NULL),
(40, 7, 'Caterina', 'Ebert', NULL, '8970 Bruen Turnpike', NULL, 'Laurencehaven', '57602-6911', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(41, NULL, 'Caterina', 'Ebert', NULL, '8970 Bruen Turnpike', NULL, 'Laurencehaven', '57602-6911', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(42, NULL, 'Caterina', 'Ebert', NULL, '8970 Bruen Turnpike', NULL, 'Laurencehaven', '57602-6911', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(43, 13, 'Berry', 'Gaylord', NULL, '12668 Oleta Shores Suite 897', NULL, 'Jamelland', '16529', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(44, NULL, 'Berry', 'Gaylord', NULL, '12668 Oleta Shores Suite 897', NULL, 'Jamelland', '16529', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(45, NULL, 'Berry', 'Gaylord', NULL, '12668 Oleta Shores Suite 897', NULL, 'Jamelland', '16529', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'PL', NULL, NULL),
(46, 18, 'Karlie', 'Stoltenberg', NULL, '538 Christiansen Roads Suite 260', NULL, 'Langville', '57320', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(47, NULL, 'Karlie', 'Stoltenberg', NULL, '538 Christiansen Roads Suite 260', NULL, 'Langville', '57320', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(48, NULL, 'Karlie', 'Stoltenberg', NULL, '538 Christiansen Roads Suite 260', NULL, 'Langville', '57320', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(49, 2, 'Kenya', 'Marquardt', NULL, '764 Lind Views Apt. 945', NULL, 'Karabury', '50087-8571', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(50, NULL, 'Kenya', 'Marquardt', NULL, '764 Lind Views Apt. 945', NULL, 'Karabury', '50087-8571', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(51, NULL, 'Kenya', 'Marquardt', NULL, '764 Lind Views Apt. 945', NULL, 'Karabury', '50087-8571', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(52, 16, 'Eloy', 'Legros', NULL, '186 Willms Lodge Apt. 994', NULL, 'Lake Maggie', '63993', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(53, NULL, 'Eloy', 'Legros', NULL, '186 Willms Lodge Apt. 994', NULL, 'Lake Maggie', '63993', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(54, NULL, 'Eloy', 'Legros', NULL, '186 Willms Lodge Apt. 994', NULL, 'Lake Maggie', '63993', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'ES', NULL, NULL),
(55, 1, 'Darrion', 'Cole', NULL, '5701 Fermin Route Apt. 469', NULL, 'Schadenburgh', '79690-9614', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(56, NULL, 'Darrion', 'Cole', NULL, '5701 Fermin Route Apt. 469', NULL, 'Schadenburgh', '79690-9614', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(57, NULL, 'Darrion', 'Cole', NULL, '5701 Fermin Route Apt. 469', NULL, 'Schadenburgh', '79690-9614', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'GB', NULL, NULL),
(58, 21, 'Merl', 'Kemmer', NULL, '701 Caitlyn Circle Suite 617', NULL, 'Schinnerbury', '63444', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'MX', NULL, NULL),
(59, NULL, 'Merl', 'Kemmer', NULL, '701 Caitlyn Circle Suite 617', NULL, 'Schinnerbury', '63444', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'MX', NULL, NULL),
(60, NULL, 'Merl', 'Kemmer', NULL, '701 Caitlyn Circle Suite 617', NULL, 'Schinnerbury', '63444', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'MX', NULL, NULL),
(61, 20, 'Justen', 'Feest', '740-380-7792', '47314 Sauer Center', 'Hartmann Inc', 'South Chelsey', '41229', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(62, 11, 'Kristian', 'Farrell', '830.849.9431', '1312 Barry Mountain Apt. 067', NULL, 'North Audreanne', '54077-6674', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(63, 17, 'Gerda', 'Lang', NULL, '3075 Favian Mount Apt. 396', 'Gerhold, Larson and Considine', 'Walterton', '20237', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(64, 7, 'Alexie', 'Hauck', '1-978-248-0378', '8526 Amina Wall', NULL, 'Howellfurt', '70789-7224', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(65, 12, 'Winston', 'Moen', '+1-603-682-1095', '9107 O\'Keefe Garden', NULL, 'Port Lorenafurt', '69054', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(66, 12, 'Gilberto', 'Aufderhar', NULL, '30100 Shayne Drives Apt. 672', NULL, 'Monicaborough', '89229', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(67, 18, 'Delores', 'Lebsack', NULL, '3339 Peggie Highway', NULL, 'Lake Ashtonborough', '73424', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(68, 1, 'Bella', 'Upton', NULL, '89496 McClure Meadow Suite 316', NULL, 'East Jena', '41460', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(69, 11, 'Jerrod', 'Monahan', '443-390-8019', '6456 Bailey Valleys Suite 688', 'Ratke, Kub and Gislason', 'Lake Adrielview', '01284', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL),
(70, 9, 'Santina', 'Shields', '331-858-1404', '9853 Cielo Fort Suite 799', NULL, 'New Crawford', '67085', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'US', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_address_log_entries`
--

CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_address_log_entries`
--

INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(1, 'create', '2022-01-08 15:30:46', '1', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Gene\";s:8:\"lastName\";s:4:\"Conn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"645 Okuneva Way Apt. 328\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Margretstad\";s:8:\"postcode\";s:10:\"85718-8715\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(2, 'create', '2022-01-08 15:30:46', '2', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Gene\";s:8:\"lastName\";s:4:\"Conn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"645 Okuneva Way Apt. 328\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Margretstad\";s:8:\"postcode\";s:10:\"85718-8715\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(3, 'create', '2022-01-08 15:30:46', '3', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Gene\";s:8:\"lastName\";s:4:\"Conn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"645 Okuneva Way Apt. 328\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Margretstad\";s:8:\"postcode\";s:10:\"85718-8715\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2022-01-08 15:30:47', '4', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaniya\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"9109 Patience Crescent\";s:7:\"company\";N;s:4:\"city\";s:11:\"Daphneeside\";s:8:\"postcode\";s:10:\"71282-1032\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2022-01-08 15:30:47', '5', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaniya\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"9109 Patience Crescent\";s:7:\"company\";N;s:4:\"city\";s:11:\"Daphneeside\";s:8:\"postcode\";s:10:\"71282-1032\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2022-01-08 15:30:47', '6', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaniya\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"9109 Patience Crescent\";s:7:\"company\";N;s:4:\"city\";s:11:\"Daphneeside\";s:8:\"postcode\";s:10:\"71282-1032\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2022-01-08 15:30:47', '7', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Felton\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"51312 Lisa Islands\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Zacharyview\";s:8:\"postcode\";s:5:\"35364\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2022-01-08 15:30:47', '8', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Felton\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"51312 Lisa Islands\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Zacharyview\";s:8:\"postcode\";s:5:\"35364\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2022-01-08 15:30:47', '9', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Felton\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"51312 Lisa Islands\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Zacharyview\";s:8:\"postcode\";s:5:\"35364\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2022-01-08 15:30:47', '10', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Horace\";s:8:\"lastName\";s:5:\"Hyatt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"29777 Jakubowski Motorway\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nehaview\";s:8:\"postcode\";s:10:\"19776-8284\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2022-01-08 15:30:47', '11', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Horace\";s:8:\"lastName\";s:5:\"Hyatt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"29777 Jakubowski Motorway\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nehaview\";s:8:\"postcode\";s:10:\"19776-8284\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2022-01-08 15:30:47', '12', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Horace\";s:8:\"lastName\";s:5:\"Hyatt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"29777 Jakubowski Motorway\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nehaview\";s:8:\"postcode\";s:10:\"19776-8284\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2022-01-08 15:30:47', '13', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:2:\"Al\";s:8:\"lastName\";s:6:\"Lehner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"69529 Torp Curve Suite 895\";s:7:\"company\";N;s:4:\"city\";s:16:\"South Jaylonberg\";s:8:\"postcode\";s:5:\"83916\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2022-01-08 15:30:47', '14', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:2:\"Al\";s:8:\"lastName\";s:6:\"Lehner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"69529 Torp Curve Suite 895\";s:7:\"company\";N;s:4:\"city\";s:16:\"South Jaylonberg\";s:8:\"postcode\";s:5:\"83916\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2022-01-08 15:30:47', '15', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:2:\"Al\";s:8:\"lastName\";s:6:\"Lehner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"69529 Torp Curve Suite 895\";s:7:\"company\";N;s:4:\"city\";s:16:\"South Jaylonberg\";s:8:\"postcode\";s:5:\"83916\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2022-01-08 15:30:47', '16', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Uriel\";s:8:\"lastName\";s:7:\"Kessler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"81596 Wunsch Course Suite 920\";s:7:\"company\";N;s:4:\"city\";s:16:\"Abernathychester\";s:8:\"postcode\";s:10:\"42259-1149\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2022-01-08 15:30:47', '17', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Uriel\";s:8:\"lastName\";s:7:\"Kessler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"81596 Wunsch Course Suite 920\";s:7:\"company\";N;s:4:\"city\";s:16:\"Abernathychester\";s:8:\"postcode\";s:10:\"42259-1149\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2022-01-08 15:30:47', '18', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Uriel\";s:8:\"lastName\";s:7:\"Kessler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"81596 Wunsch Course Suite 920\";s:7:\"company\";N;s:4:\"city\";s:16:\"Abernathychester\";s:8:\"postcode\";s:10:\"42259-1149\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2022-01-08 15:30:47', '19', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kacey\";s:8:\"lastName\";s:7:\"Wiegand\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"92934 Padberg Loop Apt. 254\";s:7:\"company\";N;s:4:\"city\";s:14:\"East Stanhaven\";s:8:\"postcode\";s:5:\"98111\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2022-01-08 15:30:47', '20', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kacey\";s:8:\"lastName\";s:7:\"Wiegand\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"92934 Padberg Loop Apt. 254\";s:7:\"company\";N;s:4:\"city\";s:14:\"East Stanhaven\";s:8:\"postcode\";s:5:\"98111\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2022-01-08 15:30:47', '21', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kacey\";s:8:\"lastName\";s:7:\"Wiegand\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"92934 Padberg Loop Apt. 254\";s:7:\"company\";N;s:4:\"city\";s:14:\"East Stanhaven\";s:8:\"postcode\";s:5:\"98111\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2022-01-08 15:30:47', '22', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Mckenna\";s:8:\"lastName\";s:7:\"Corkery\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"184 Estrella Pass Apt. 038\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Trisha\";s:8:\"postcode\";s:5:\"50212\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2022-01-08 15:30:47', '23', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Mckenna\";s:8:\"lastName\";s:7:\"Corkery\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"184 Estrella Pass Apt. 038\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Trisha\";s:8:\"postcode\";s:5:\"50212\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2022-01-08 15:30:47', '24', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Mckenna\";s:8:\"lastName\";s:7:\"Corkery\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"184 Estrella Pass Apt. 038\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Trisha\";s:8:\"postcode\";s:5:\"50212\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2022-01-08 15:30:47', '25', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Albertha\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"78143 Rogahn Viaduct\";s:7:\"company\";N;s:4:\"city\";s:13:\"Bartholometon\";s:8:\"postcode\";s:10:\"34989-2209\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2022-01-08 15:30:47', '26', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Albertha\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"78143 Rogahn Viaduct\";s:7:\"company\";N;s:4:\"city\";s:13:\"Bartholometon\";s:8:\"postcode\";s:10:\"34989-2209\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2022-01-08 15:30:47', '27', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Albertha\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"78143 Rogahn Viaduct\";s:7:\"company\";N;s:4:\"city\";s:13:\"Bartholometon\";s:8:\"postcode\";s:10:\"34989-2209\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2022-01-08 15:30:47', '28', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Iva\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"21716 Schuppe Ways\";s:7:\"company\";N;s:4:\"city\";s:10:\"Port Juana\";s:8:\"postcode\";s:10:\"85539-7299\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2022-01-08 15:30:47', '29', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Iva\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"21716 Schuppe Ways\";s:7:\"company\";N;s:4:\"city\";s:10:\"Port Juana\";s:8:\"postcode\";s:10:\"85539-7299\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2022-01-08 15:30:47', '30', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Iva\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"21716 Schuppe Ways\";s:7:\"company\";N;s:4:\"city\";s:10:\"Port Juana\";s:8:\"postcode\";s:10:\"85539-7299\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2022-01-08 15:30:47', '31', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Ford\";s:8:\"lastName\";s:8:\"Lubowitz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7688 Sanford Fields\";s:7:\"company\";N;s:4:\"city\";s:10:\"Murraybury\";s:8:\"postcode\";s:5:\"76342\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2022-01-08 15:30:47', '32', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Ford\";s:8:\"lastName\";s:8:\"Lubowitz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7688 Sanford Fields\";s:7:\"company\";N;s:4:\"city\";s:10:\"Murraybury\";s:8:\"postcode\";s:5:\"76342\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2022-01-08 15:30:47', '33', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Ford\";s:8:\"lastName\";s:8:\"Lubowitz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7688 Sanford Fields\";s:7:\"company\";N;s:4:\"city\";s:10:\"Murraybury\";s:8:\"postcode\";s:5:\"76342\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2022-01-08 15:30:47', '34', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandre\";s:8:\"lastName\";s:9:\"Langworth\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"4017 Howell Alley Apt. 365\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Newell\";s:8:\"postcode\";s:5:\"72739\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2022-01-08 15:30:47', '35', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandre\";s:8:\"lastName\";s:9:\"Langworth\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"4017 Howell Alley Apt. 365\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Newell\";s:8:\"postcode\";s:5:\"72739\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2022-01-08 15:30:47', '36', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandre\";s:8:\"lastName\";s:9:\"Langworth\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"4017 Howell Alley Apt. 365\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Newell\";s:8:\"postcode\";s:5:\"72739\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2022-01-08 15:30:47', '37', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Ada\";s:8:\"lastName\";s:8:\"Leuschke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"8580 Haylie Turnpike\";s:7:\"company\";N;s:4:\"city\";s:16:\"Breitenbergville\";s:8:\"postcode\";s:5:\"62261\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2022-01-08 15:30:47', '38', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Ada\";s:8:\"lastName\";s:8:\"Leuschke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"8580 Haylie Turnpike\";s:7:\"company\";N;s:4:\"city\";s:16:\"Breitenbergville\";s:8:\"postcode\";s:5:\"62261\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2022-01-08 15:30:47', '39', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Ada\";s:8:\"lastName\";s:8:\"Leuschke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"8580 Haylie Turnpike\";s:7:\"company\";N;s:4:\"city\";s:16:\"Breitenbergville\";s:8:\"postcode\";s:5:\"62261\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2022-01-08 15:30:47', '40', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Caterina\";s:8:\"lastName\";s:5:\"Ebert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8970 Bruen Turnpike\";s:7:\"company\";N;s:4:\"city\";s:13:\"Laurencehaven\";s:8:\"postcode\";s:10:\"57602-6911\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2022-01-08 15:30:47', '41', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Caterina\";s:8:\"lastName\";s:5:\"Ebert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8970 Bruen Turnpike\";s:7:\"company\";N;s:4:\"city\";s:13:\"Laurencehaven\";s:8:\"postcode\";s:10:\"57602-6911\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2022-01-08 15:30:47', '42', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Caterina\";s:8:\"lastName\";s:5:\"Ebert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8970 Bruen Turnpike\";s:7:\"company\";N;s:4:\"city\";s:13:\"Laurencehaven\";s:8:\"postcode\";s:10:\"57602-6911\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2022-01-08 15:30:47', '43', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Berry\";s:8:\"lastName\";s:7:\"Gaylord\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"12668 Oleta Shores Suite 897\";s:7:\"company\";N;s:4:\"city\";s:9:\"Jamelland\";s:8:\"postcode\";s:5:\"16529\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2022-01-08 15:30:47', '44', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Berry\";s:8:\"lastName\";s:7:\"Gaylord\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"12668 Oleta Shores Suite 897\";s:7:\"company\";N;s:4:\"city\";s:9:\"Jamelland\";s:8:\"postcode\";s:5:\"16529\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2022-01-08 15:30:47', '45', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Berry\";s:8:\"lastName\";s:7:\"Gaylord\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"12668 Oleta Shores Suite 897\";s:7:\"company\";N;s:4:\"city\";s:9:\"Jamelland\";s:8:\"postcode\";s:5:\"16529\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2022-01-08 15:30:47', '46', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karlie\";s:8:\"lastName\";s:11:\"Stoltenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:32:\"538 Christiansen Roads Suite 260\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langville\";s:8:\"postcode\";s:5:\"57320\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2022-01-08 15:30:47', '47', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karlie\";s:8:\"lastName\";s:11:\"Stoltenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:32:\"538 Christiansen Roads Suite 260\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langville\";s:8:\"postcode\";s:5:\"57320\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2022-01-08 15:30:47', '48', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karlie\";s:8:\"lastName\";s:11:\"Stoltenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:32:\"538 Christiansen Roads Suite 260\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langville\";s:8:\"postcode\";s:5:\"57320\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2022-01-08 15:30:47', '49', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kenya\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"764 Lind Views Apt. 945\";s:7:\"company\";N;s:4:\"city\";s:8:\"Karabury\";s:8:\"postcode\";s:10:\"50087-8571\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2022-01-08 15:30:47', '50', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kenya\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"764 Lind Views Apt. 945\";s:7:\"company\";N;s:4:\"city\";s:8:\"Karabury\";s:8:\"postcode\";s:10:\"50087-8571\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2022-01-08 15:30:47', '51', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Kenya\";s:8:\"lastName\";s:9:\"Marquardt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"764 Lind Views Apt. 945\";s:7:\"company\";N;s:4:\"city\";s:8:\"Karabury\";s:8:\"postcode\";s:10:\"50087-8571\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2022-01-08 15:30:47', '52', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eloy\";s:8:\"lastName\";s:6:\"Legros\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"186 Willms Lodge Apt. 994\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Maggie\";s:8:\"postcode\";s:5:\"63993\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2022-01-08 15:30:47', '53', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eloy\";s:8:\"lastName\";s:6:\"Legros\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"186 Willms Lodge Apt. 994\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Maggie\";s:8:\"postcode\";s:5:\"63993\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2022-01-08 15:30:47', '54', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eloy\";s:8:\"lastName\";s:6:\"Legros\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"186 Willms Lodge Apt. 994\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lake Maggie\";s:8:\"postcode\";s:5:\"63993\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2022-01-08 15:30:47', '55', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Darrion\";s:8:\"lastName\";s:4:\"Cole\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"5701 Fermin Route Apt. 469\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schadenburgh\";s:8:\"postcode\";s:10:\"79690-9614\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2022-01-08 15:30:47', '56', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Darrion\";s:8:\"lastName\";s:4:\"Cole\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"5701 Fermin Route Apt. 469\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schadenburgh\";s:8:\"postcode\";s:10:\"79690-9614\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2022-01-08 15:30:47', '57', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Darrion\";s:8:\"lastName\";s:4:\"Cole\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"5701 Fermin Route Apt. 469\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schadenburgh\";s:8:\"postcode\";s:10:\"79690-9614\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2022-01-08 15:30:47', '58', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Merl\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"701 Caitlyn Circle Suite 617\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schinnerbury\";s:8:\"postcode\";s:5:\"63444\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2022-01-08 15:30:47', '59', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Merl\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"701 Caitlyn Circle Suite 617\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schinnerbury\";s:8:\"postcode\";s:5:\"63444\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2022-01-08 15:30:47', '60', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Merl\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"701 Caitlyn Circle Suite 617\";s:7:\"company\";N;s:4:\"city\";s:12:\"Schinnerbury\";s:8:\"postcode\";s:5:\"63444\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2022-01-08 15:30:47', '61', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Justen\";s:8:\"lastName\";s:5:\"Feest\";s:11:\"phoneNumber\";s:12:\"740-380-7792\";s:6:\"street\";s:18:\"47314 Sauer Center\";s:7:\"company\";s:12:\"Hartmann Inc\";s:4:\"city\";s:13:\"South Chelsey\";s:8:\"postcode\";s:5:\"41229\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2022-01-08 15:30:47', '62', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Kristian\";s:8:\"lastName\";s:7:\"Farrell\";s:11:\"phoneNumber\";s:12:\"830.849.9431\";s:6:\"street\";s:28:\"1312 Barry Mountain Apt. 067\";s:7:\"company\";N;s:4:\"city\";s:15:\"North Audreanne\";s:8:\"postcode\";s:10:\"54077-6674\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2022-01-08 15:30:47', '63', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Gerda\";s:8:\"lastName\";s:4:\"Lang\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"3075 Favian Mount Apt. 396\";s:7:\"company\";s:29:\"Gerhold, Larson and Considine\";s:4:\"city\";s:9:\"Walterton\";s:8:\"postcode\";s:5:\"20237\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2022-01-08 15:30:47', '64', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Alexie\";s:8:\"lastName\";s:5:\"Hauck\";s:11:\"phoneNumber\";s:14:\"1-978-248-0378\";s:6:\"street\";s:15:\"8526 Amina Wall\";s:7:\"company\";N;s:4:\"city\";s:10:\"Howellfurt\";s:8:\"postcode\";s:10:\"70789-7224\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2022-01-08 15:30:47', '65', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Winston\";s:8:\"lastName\";s:4:\"Moen\";s:11:\"phoneNumber\";s:15:\"+1-603-682-1095\";s:6:\"street\";s:19:\"9107 O\'Keefe Garden\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Lorenafurt\";s:8:\"postcode\";s:5:\"69054\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2022-01-08 15:30:47', '66', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Gilberto\";s:8:\"lastName\";s:9:\"Aufderhar\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"30100 Shayne Drives Apt. 672\";s:7:\"company\";N;s:4:\"city\";s:13:\"Monicaborough\";s:8:\"postcode\";s:5:\"89229\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2022-01-08 15:30:47', '67', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Delores\";s:8:\"lastName\";s:7:\"Lebsack\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"3339 Peggie Highway\";s:7:\"company\";N;s:4:\"city\";s:18:\"Lake Ashtonborough\";s:8:\"postcode\";s:5:\"73424\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2022-01-08 15:30:47', '68', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Bella\";s:8:\"lastName\";s:5:\"Upton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"89496 McClure Meadow Suite 316\";s:7:\"company\";N;s:4:\"city\";s:9:\"East Jena\";s:8:\"postcode\";s:5:\"41460\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2022-01-08 15:30:47', '69', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Jerrod\";s:8:\"lastName\";s:7:\"Monahan\";s:11:\"phoneNumber\";s:12:\"443-390-8019\";s:6:\"street\";s:29:\"6456 Bailey Valleys Suite 688\";s:7:\"company\";s:23:\"Ratke, Kub and Gislason\";s:4:\"city\";s:15:\"Lake Adrielview\";s:8:\"postcode\";s:5:\"01284\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2022-01-08 15:30:47', '70', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Santina\";s:8:\"lastName\";s:7:\"Shields\";s:11:\"phoneNumber\";s:12:\"331-858-1404\";s:6:\"street\";s:25:\"9853 Cielo Fort Suite 799\";s:7:\"company\";N;s:4:\"city\";s:12:\"New Crawford\";s:8:\"postcode\";s:5:\"67085\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_adjustment`
--

CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`, `shipment_id`, `details`) VALUES
(1, 1, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 1, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(2, NULL, NULL, 1, 'order_promotion', 'New Year', -500, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(3, NULL, NULL, 2, 'order_promotion', 'New Year', -500, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(4, 2, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 2, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(5, NULL, NULL, 3, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(6, NULL, NULL, 4, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(7, NULL, NULL, 5, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(8, NULL, NULL, 6, 'order_promotion', 'New Year', -106, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(9, NULL, NULL, 7, 'order_promotion', 'New Year', -106, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(10, NULL, NULL, 8, 'order_promotion', 'New Year', -193, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(11, NULL, NULL, 9, 'order_promotion', 'New Year', -193, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(12, NULL, NULL, 10, 'order_promotion', 'New Year', -21, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(13, NULL, NULL, 11, 'order_promotion', 'New Year', -20, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(14, NULL, NULL, 12, 'order_promotion', 'New Year', -20, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(15, NULL, NULL, 13, 'order_promotion', 'New Year', -20, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(16, 3, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 3, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(17, NULL, NULL, 14, 'order_promotion', 'New Year', -57, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(18, NULL, NULL, 15, 'order_promotion', 'New Year', -57, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(19, NULL, NULL, 16, 'order_promotion', 'New Year', -57, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(20, NULL, NULL, 17, 'order_promotion', 'New Year', -56, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(21, NULL, NULL, 18, 'order_promotion', 'New Year', -56, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(22, NULL, NULL, 19, 'order_promotion', 'New Year', -103, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(23, NULL, NULL, 20, 'order_promotion', 'New Year', -103, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(24, NULL, NULL, 21, 'order_promotion', 'New Year', -28, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(25, NULL, NULL, 22, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(26, NULL, NULL, 23, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(27, NULL, NULL, 24, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(28, NULL, NULL, 25, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(29, NULL, NULL, 26, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(30, NULL, NULL, 27, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(31, NULL, NULL, 28, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(32, NULL, NULL, 29, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(33, NULL, NULL, 30, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(34, NULL, NULL, 31, 'order_promotion', 'New Year', -78, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(35, NULL, NULL, 32, 'order_promotion', 'New Year', -78, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(36, 4, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 4, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(37, NULL, NULL, 33, 'order_promotion', 'New Year', -108, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(38, NULL, NULL, 34, 'order_promotion', 'New Year', -108, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(39, NULL, NULL, 35, 'order_promotion', 'New Year', -108, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(40, NULL, NULL, 36, 'order_promotion', 'New Year', -108, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(41, NULL, NULL, 37, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(42, NULL, NULL, 38, 'order_promotion', 'New Year', -177, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(43, NULL, NULL, 39, 'order_promotion', 'New Year', -176, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(44, NULL, NULL, 40, 'order_promotion', 'New Year', -36, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(45, NULL, NULL, 41, 'order_promotion', 'New Year', -36, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(46, NULL, NULL, 42, 'order_promotion', 'New Year', -36, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(47, 5, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 5, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(48, 6, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 6, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(49, NULL, NULL, 47, 'order_promotion', 'New Year', -97, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(50, NULL, NULL, 48, 'order_promotion', 'New Year', -97, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(51, NULL, NULL, 49, 'order_promotion', 'New Year', -96, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(52, NULL, NULL, 50, 'order_promotion', 'New Year', -155, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(53, NULL, NULL, 51, 'order_promotion', 'New Year', -154, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(54, NULL, NULL, 52, 'order_promotion', 'New Year', -154, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(55, NULL, NULL, 53, 'order_promotion', 'New Year', -154, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(56, NULL, NULL, 54, 'order_promotion', 'New Year', -47, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(57, NULL, NULL, 55, 'order_promotion', 'New Year', -46, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(58, 7, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 7, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(59, 8, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 8, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(60, NULL, NULL, 58, 'order_promotion', 'New Year', -24, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(61, NULL, NULL, 59, 'order_promotion', 'New Year', -50, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(62, NULL, NULL, 60, 'order_promotion', 'New Year', -50, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(63, NULL, NULL, 61, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(64, NULL, NULL, 62, 'order_promotion', 'New Year', -128, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(65, NULL, NULL, 63, 'order_promotion', 'New Year', -102, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(66, NULL, NULL, 64, 'order_promotion', 'New Year', -102, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(67, NULL, NULL, 65, 'order_promotion', 'New Year', -102, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(68, NULL, NULL, 66, 'order_promotion', 'New Year', -101, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(69, NULL, NULL, 67, 'order_promotion', 'New Year', -101, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(70, NULL, NULL, 68, 'order_promotion', 'New Year', -39, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(71, NULL, NULL, 69, 'order_promotion', 'New Year', -38, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(72, NULL, NULL, 70, 'order_promotion', 'New Year', -38, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(73, NULL, NULL, 71, 'order_promotion', 'New Year', -38, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(74, NULL, NULL, 72, 'order_promotion', 'New Year', -38, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(75, 9, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 9, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(76, NULL, NULL, 73, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(77, NULL, NULL, 74, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(78, NULL, NULL, 75, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(79, NULL, NULL, 76, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(80, NULL, NULL, 77, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(81, NULL, NULL, 78, 'order_promotion', 'New Year', -41, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(82, NULL, NULL, 79, 'order_promotion', 'New Year', -41, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(83, NULL, NULL, 80, 'order_promotion', 'New Year', -40, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(84, NULL, NULL, 81, 'order_promotion', 'New Year', -4, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(85, NULL, NULL, 82, 'order_promotion', 'New Year', -4, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(86, NULL, NULL, 83, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(87, NULL, NULL, 84, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(88, NULL, NULL, 85, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(89, NULL, NULL, 86, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(90, NULL, NULL, 87, 'order_promotion', 'New Year', -75, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(91, NULL, NULL, 88, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(92, NULL, NULL, 89, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(93, NULL, NULL, 90, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2022-01-08 15:30:46', '2022-01-08 15:30:46', NULL, '[]'),
(94, 10, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 10, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(95, NULL, NULL, 91, 'order_promotion', 'New Year', -16, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(96, NULL, NULL, 92, 'order_promotion', 'New Year', -15, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(97, NULL, NULL, 93, 'order_promotion', 'New Year', -44, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(98, NULL, NULL, 94, 'order_promotion', 'New Year', -44, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(99, NULL, NULL, 95, 'order_promotion', 'New Year', -43, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(100, NULL, NULL, 96, 'order_promotion', 'New Year', -43, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(101, NULL, NULL, 97, 'order_promotion', 'New Year', -43, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(102, NULL, NULL, 98, 'order_promotion', 'New Year', -95, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(103, NULL, NULL, 99, 'order_promotion', 'New Year', -95, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(104, NULL, NULL, 100, 'order_promotion', 'New Year', -95, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(105, NULL, NULL, 101, 'order_promotion', 'New Year', -95, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(106, NULL, NULL, 102, 'order_promotion', 'New Year', -95, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(107, NULL, NULL, 103, 'order_promotion', 'New Year', -29, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(108, NULL, NULL, 104, 'order_promotion', 'New Year', -29, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(109, NULL, NULL, 105, 'order_promotion', 'New Year', -29, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(110, NULL, NULL, 106, 'order_promotion', 'New Year', -28, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(111, NULL, NULL, 107, 'order_promotion', 'New Year', -81, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(112, NULL, NULL, 108, 'order_promotion', 'New Year', -81, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(113, 11, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 11, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(114, NULL, NULL, 109, 'order_promotion', 'New Year', -262, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(115, NULL, NULL, 110, 'order_promotion', 'New Year', -262, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(116, NULL, NULL, 111, 'order_promotion', 'New Year', -238, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(117, NULL, NULL, 112, 'order_promotion', 'New Year', -238, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(118, 12, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 12, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(119, NULL, NULL, 113, 'order_promotion', 'New Year', -113, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(120, NULL, NULL, 114, 'order_promotion', 'New Year', -113, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(121, NULL, NULL, 115, 'order_promotion', 'New Year', -112, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(122, NULL, NULL, 116, 'order_promotion', 'New Year', -112, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(123, NULL, NULL, 117, 'order_promotion', 'New Year', -25, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(124, NULL, NULL, 118, 'order_promotion', 'New Year', -24, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(125, NULL, NULL, 119, 'order_promotion', 'New Year', -24, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(126, NULL, NULL, 120, 'order_promotion', 'New Year', -120, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(127, NULL, NULL, 121, 'order_promotion', 'New Year', -119, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(128, NULL, NULL, 122, 'order_promotion', 'New Year', -119, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(129, NULL, NULL, 123, 'order_promotion', 'New Year', -119, 0, 0, 'new_year', '2022-01-08 15:30:47', '2022-01-08 15:30:47', NULL, '[]'),
(130, 13, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 13, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(131, 14, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 14, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(132, 15, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 15, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(133, 16, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 16, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(134, 17, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 17, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(135, 18, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 18, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(136, 19, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 19, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(137, 20, NULL, NULL, 'shipping', 'FedEx', 364, 0, 0, NULL, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 20, '{\"shippingMethodCode\":\"fedex\",\"shippingMethodName\":\"FedEx\"}'),
(138, 21, NULL, NULL, 'shipping', 'UPS', 500, 0, 0, NULL, '2022-01-22 22:50:52', '2022-01-22 22:50:53', 21, '{\"shippingMethodCode\":\"ups\",\"shippingMethodName\":\"UPS\"}'),
(139, 22, NULL, NULL, 'shipping', 'UPS', 500, 0, 0, NULL, '2022-01-23 22:59:05', '2022-01-23 22:59:06', 22, '{\"shippingMethodCode\":\"ups\",\"shippingMethodName\":\"UPS\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_admin_user`
--

CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_admin_user`
--

INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES
(1, 'sylius', 'sylius', 1, '9gta3g6r2cso00ck88ogk8wc4skowoo', '$argon2i$v=19$m=65536,t=4,p=1$MzdVUFdiNzFEQkhzN013Nw$6DenMi7cL8uVxQFwk8MbnSBH5gGQA2zbIaq58MbEzOo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 'John', 'Doe', 'en_US', 'argon2i'),
(2, 'api', 'api', 1, 'oeh260l1c9cc0coogcwcg0gggks4wkg', '$argon2i$v=19$m=65536,t=4,p=1$d1JCTHNoMEZMeXRmUE1YQg$pZ3bU8Tx1Z22dk5yJXO+zEFQIgzc+cQlshfLsw60mvY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 'Luke', 'Brushwood', 'en_US', 'argon2i'),
(3, 'pfalko19@gmail.com', 'pfalko19@gmail.com', 1, 'rtgcx612biocokcc480ks44ksosgwk', '$argon2i$v=19$m=65536,t=4,p=1$Z1h1WlpXSm1xSFdjSG91Rw$Ye3zMBeHolmJz5T51o0opT0DRWIb3lhNtU9TPJRx8us', '2022-02-04 14:46:14', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'pfalko19@gmail.com', 'pfalko19@gmail.com', '2022-01-08 15:31:36', '2022-02-04 14:46:14', NULL, NULL, 'en_US', 'argon2i');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_avatar_image`
--

CREATE TABLE `sylius_avatar_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_avatar_image`
--

INSERT INTO `sylius_avatar_image` (`id`, `owner_id`, `type`, `path`) VALUES
(1, 1, NULL, '65/2a/eb266432f9539338953f37b4a8f9.jpg'),
(2, 2, NULL, '62/b6/273ac3f55043fbff772c3acf7a0c.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_channel`
--

CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  `menu_taxon_id` int(11) DEFAULT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `account_verification_required`, `skipping_payment_step_allowed`, `shop_billing_data_id`, `menu_taxon_id`, `contact_phone_number`) VALUES
(1, 1, 2, 2, 'FASHION_WEB', 'Fashion Web Store', '#000000', NULL, 1, 'localhost', '2022-01-08 15:30:38', '2022-01-22 21:08:42', 'sylius/online-course-theme', 'order_items_based', 'contact@example.com', 0, 1, 0, 1, 1, '+41 123 456 789'),
(2, 1, 2, NULL, 'NIGHT', 'Night', '#000000', NULL, 1, NULL, '2022-01-10 15:47:54', '2022-01-10 15:47:56', NULL, 'order_items_based', NULL, 0, 1, 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_channel_countries`
--

CREATE TABLE `sylius_channel_countries` (
  `channel_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_channel_currencies`
--

CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_channel_currencies`
--

INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_channel_locales`
--

CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_channel_locales`
--

INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_channel_pricing`
--

CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `channel_code`, `original_price`) VALUES
(1, 1, 1911, 'FASHION_WEB', NULL),
(2, 2, 3390, 'FASHION_WEB', NULL),
(3, 3, 3855, 'FASHION_WEB', NULL),
(4, 4, 9962, 'FASHION_WEB', NULL),
(5, 5, 6314, 'FASHION_WEB', NULL),
(6, 6, 1866, 'FASHION_WEB', NULL),
(7, 7, 633, 'FASHION_WEB', NULL),
(8, 8, 686, 'FASHION_WEB', NULL),
(9, 9, 6653, 'FASHION_WEB', NULL),
(10, 10, 7512, 'FASHION_WEB', NULL),
(11, 11, 3326, 'FASHION_WEB', NULL),
(12, 12, 1180, 'FASHION_WEB', NULL),
(13, 13, 6184, 'FASHION_WEB', NULL),
(14, 14, 4813, 'FASHION_WEB', NULL),
(15, 15, 5335, 'FASHION_WEB', NULL),
(16, 16, 9435, 'FASHION_WEB', NULL),
(17, 17, 4668, 'FASHION_WEB', NULL),
(18, 18, 8920, 'FASHION_WEB', NULL),
(19, 19, 1672, 'FASHION_WEB', NULL),
(20, 20, 6669, 'FASHION_WEB', NULL),
(21, 21, 3837, 'FASHION_WEB', NULL),
(22, 22, 519, 'FASHION_WEB', NULL),
(23, 23, 5950, 'FASHION_WEB', NULL),
(24, 24, 7993, 'FASHION_WEB', NULL),
(25, 25, 4914, 'FASHION_WEB', NULL),
(26, 26, 8027, 'FASHION_WEB', NULL),
(27, 27, 317, 'FASHION_WEB', NULL),
(28, 28, 937, 'FASHION_WEB', NULL),
(29, 29, 4181, 'FASHION_WEB', NULL),
(30, 30, 7264, 'FASHION_WEB', NULL),
(31, 31, 6511, 'FASHION_WEB', NULL),
(32, 32, 503, 'FASHION_WEB', NULL),
(33, 33, 7311, 'FASHION_WEB', NULL),
(34, 34, 1437, 'FASHION_WEB', NULL),
(35, 35, 9776, 'FASHION_WEB', NULL),
(36, 36, 5148, 'FASHION_WEB', NULL),
(37, 37, 7219, 'FASHION_WEB', NULL),
(38, 38, 6940, 'FASHION_WEB', NULL),
(39, 39, 2894, 'FASHION_WEB', NULL),
(40, 40, 8869, 'FASHION_WEB', NULL),
(41, 41, 2381, 'FASHION_WEB', NULL),
(42, 42, 4422, 'FASHION_WEB', NULL),
(43, 43, 8236, 'FASHION_WEB', NULL),
(44, 44, 9006, 'FASHION_WEB', NULL),
(45, 45, 4330, 'FASHION_WEB', NULL),
(46, 46, 4143, 'FASHION_WEB', NULL),
(47, 47, 963, 'FASHION_WEB', NULL),
(48, 48, 2150, 'FASHION_WEB', NULL),
(49, 49, 2448, 'FASHION_WEB', NULL),
(50, 50, 6983, 'FASHION_WEB', NULL),
(51, 51, 6216, 'FASHION_WEB', NULL),
(52, 52, 3016, 'FASHION_WEB', NULL),
(53, 53, 8641, 'FASHION_WEB', NULL),
(54, 54, 806, 'FASHION_WEB', NULL),
(55, 55, 1593, 'FASHION_WEB', NULL),
(56, 56, 1266, 'FASHION_WEB', NULL),
(57, 57, 652, 'FASHION_WEB', NULL),
(58, 58, 3541, 'FASHION_WEB', NULL),
(59, 59, 4709, 'FASHION_WEB', NULL),
(60, 60, 8212, 'FASHION_WEB', NULL),
(61, 61, 9767, 'FASHION_WEB', NULL),
(62, 62, 3479, 'FASHION_WEB', NULL),
(63, 63, 3365, 'FASHION_WEB', NULL),
(64, 64, 6167, 'FASHION_WEB', NULL),
(65, 65, 339, 'FASHION_WEB', NULL),
(66, 66, 2998, 'FASHION_WEB', NULL),
(67, 67, 690, 'FASHION_WEB', NULL),
(68, 68, 3010, 'FASHION_WEB', NULL),
(69, 69, 6329, 'FASHION_WEB', NULL),
(70, 70, 2434, 'FASHION_WEB', NULL),
(71, 71, 1217, 'FASHION_WEB', NULL),
(72, 72, 4656, 'FASHION_WEB', NULL),
(73, 73, 7470, 'FASHION_WEB', NULL),
(74, 74, 9866, 'FASHION_WEB', NULL),
(75, 75, 2206, 'FASHION_WEB', NULL),
(76, 76, 9284, 'FASHION_WEB', NULL),
(77, 77, 5092, 'FASHION_WEB', NULL),
(78, 78, 4229, 'FASHION_WEB', NULL),
(79, 79, 8366, 'FASHION_WEB', NULL),
(80, 80, 2484, 'FASHION_WEB', NULL),
(81, 81, 7281, 'FASHION_WEB', NULL),
(82, 82, 3031, 'FASHION_WEB', NULL),
(83, 83, 4927, 'FASHION_WEB', NULL),
(84, 84, 4471, 'FASHION_WEB', NULL),
(85, 85, 6918, 'FASHION_WEB', NULL),
(86, 86, 5770, 'FASHION_WEB', NULL),
(87, 87, 4142, 'FASHION_WEB', NULL),
(88, 88, 4736, 'FASHION_WEB', NULL),
(89, 89, 595, 'FASHION_WEB', NULL),
(90, 90, 1205, 'FASHION_WEB', NULL),
(91, 91, 7216, 'FASHION_WEB', NULL),
(92, 92, 1496, 'FASHION_WEB', NULL),
(93, 93, 6999, 'FASHION_WEB', NULL),
(94, 94, 1843, 'FASHION_WEB', NULL),
(95, 95, 4211, 'FASHION_WEB', NULL),
(96, 96, 139, 'FASHION_WEB', NULL),
(97, 97, 7327, 'FASHION_WEB', NULL),
(98, 98, 8979, 'FASHION_WEB', NULL),
(99, 99, 6219, 'FASHION_WEB', NULL),
(100, 100, 4863, 'FASHION_WEB', NULL),
(101, 101, 1973, 'FASHION_WEB', NULL),
(102, 102, 874, 'FASHION_WEB', NULL),
(103, 103, 4948, 'FASHION_WEB', NULL),
(104, 104, 7120, 'FASHION_WEB', NULL),
(105, 105, 6328, 'FASHION_WEB', NULL),
(106, 106, 5596, 'FASHION_WEB', NULL),
(107, 107, 2570, 'FASHION_WEB', NULL),
(108, 108, 1200, 'FASHION_WEB', NULL),
(109, 109, 3180, 'FASHION_WEB', NULL),
(110, 110, 4573, 'FASHION_WEB', NULL),
(111, 111, 3456, 'FASHION_WEB', NULL),
(112, 112, 8038, 'FASHION_WEB', NULL),
(113, 113, 7748, 'FASHION_WEB', NULL),
(114, 114, 4427, 'FASHION_WEB', NULL),
(115, 115, 2005, 'FASHION_WEB', NULL),
(116, 116, 5353, 'FASHION_WEB', NULL),
(117, 117, 8859, 'FASHION_WEB', NULL),
(118, 118, 3827, 'FASHION_WEB', NULL),
(119, 119, 6192, 'FASHION_WEB', NULL),
(120, 120, 10000, 'FASHION_WEB', 12000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_country`
--

CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(1, 'US', 1),
(2, 'FR', 1),
(3, 'DE', 1),
(4, 'AU', 1),
(5, 'CA', 1),
(6, 'MX', 1),
(7, 'NZ', 1),
(8, 'PT', 1),
(9, 'ES', 1),
(10, 'CN', 1),
(11, 'GB', 1),
(12, 'PL', 1),
(13, 'MT', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_currency`
--

CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_currency`
--

INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'EUR', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(2, 'USD', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(3, 'PLN', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(4, 'CAD', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(5, 'CNY', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(6, 'NZD', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(7, 'GBP', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(8, 'AUD', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(9, 'MXN', '2022-01-08 15:30:38', '2022-01-08 15:30:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_customer`
--

CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_customer`
--

INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
(1, 3, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', '1924-02-02 00:00:00', 'u', '2022-01-08 15:30:38', '2022-01-15 16:43:56', '331-495-5543', 0),
(2, 1, NULL, 'paige72@gmail.com', 'paige72@gmail.com', 'Ned', 'McClure', '1928-02-01 11:14:27', 'u', '2022-01-08 15:30:39', '2022-01-08 15:30:39', '+1 (540) 217-1955', 0),
(3, 2, NULL, 'dlubowitz@gmail.com', 'dlubowitz@gmail.com', 'Ali', 'Klein', '2010-04-09 22:31:08', 'u', '2022-01-08 15:30:39', '2022-01-08 15:30:39', '(951) 782-0244', 0),
(4, 1, NULL, 'ebeahan@satterfield.com', 'ebeahan@satterfield.com', 'Kristy', 'Schinner', '1956-03-18 11:51:54', 'u', '2022-01-08 15:30:39', '2022-01-08 15:30:40', '(662) 628-8743', 0),
(5, 1, NULL, 'tbarton@yahoo.com', 'tbarton@yahoo.com', 'Aglae', 'Hammes', '1966-04-12 23:49:55', 'u', '2022-01-08 15:30:40', '2022-01-08 15:30:40', '+1-567-307-7017', 0),
(6, 1, NULL, 'leannon.andrew@hotmail.com', 'leannon.andrew@hotmail.com', 'Dylan', 'McGlynn', '1954-03-09 02:14:47', 'u', '2022-01-08 15:30:40', '2022-01-08 15:30:40', '+1 (978) 714-2702', 0),
(7, 1, NULL, 'romaine.heidenreich@yahoo.com', 'romaine.heidenreich@yahoo.com', 'Reba', 'Prosacco', '1999-05-03 10:12:19', 'u', '2022-01-08 15:30:40', '2022-01-08 15:30:40', '540-573-5935', 0),
(8, 2, NULL, 'mckenna21@grimes.com', 'mckenna21@grimes.com', 'Caroline', 'Kuhlman', '1939-01-01 10:46:59', 'u', '2022-01-08 15:30:40', '2022-01-08 15:30:40', '(305) 760-1144', 0),
(9, 1, NULL, 'lucienne.kunze@yahoo.com', 'lucienne.kunze@yahoo.com', 'Keyshawn', 'Boehm', '1925-11-25 23:58:54', 'u', '2022-01-08 15:30:40', '2022-01-08 15:30:41', '(478) 242-6559', 0),
(10, 1, NULL, 'gprice@yahoo.com', 'gprice@yahoo.com', 'Davin', 'Harvey', '1981-06-25 06:02:08', 'u', '2022-01-08 15:30:41', '2022-01-08 15:30:41', '+1 (909) 504-2604', 0),
(11, 2, NULL, 'anne93@yahoo.com', 'anne93@yahoo.com', 'Julie', 'Blick', '1986-11-05 11:49:18', 'u', '2022-01-08 15:30:41', '2022-01-08 15:30:41', '+14693948007', 0),
(12, 2, NULL, 'hackett.eve@lakin.info', 'hackett.eve@lakin.info', 'Tyrese', 'Streich', '2015-01-22 18:12:07', 'u', '2022-01-08 15:30:41', '2022-01-08 15:30:41', '407.853.4546', 0),
(13, 1, NULL, 'braeden97@hotmail.com', 'braeden97@hotmail.com', 'Alayna', 'Osinski', '1984-11-24 03:39:24', 'u', '2022-01-08 15:30:41', '2022-01-08 15:30:42', '1-320-929-4165', 0),
(14, 1, NULL, 'kay97@yahoo.com', 'kay97@yahoo.com', 'Mckayla', 'Daniel', '1971-03-01 17:53:09', 'u', '2022-01-08 15:30:42', '2022-01-08 15:30:42', '+1-253-280-6898', 0),
(15, 1, NULL, 'meagan02@leuschke.com', 'meagan02@leuschke.com', 'Alexa', 'Turner', '1993-02-07 21:54:46', 'u', '2022-01-08 15:30:42', '2022-01-08 15:30:42', '1-270-991-3216', 0),
(16, 2, NULL, 'hgrimes@hotmail.com', 'hgrimes@hotmail.com', 'Asha', 'Sauer', '2009-02-02 23:43:14', 'u', '2022-01-08 15:30:42', '2022-01-08 15:30:42', '(234) 346-6332', 0),
(17, 1, NULL, 'beau75@bednar.com', 'beau75@bednar.com', 'Schuyler', 'Tremblay', '1996-10-24 23:56:38', 'u', '2022-01-08 15:30:42', '2022-01-08 15:30:43', '1-870-395-1435', 0),
(18, 1, NULL, 'kovacek.nova@yahoo.com', 'kovacek.nova@yahoo.com', 'Arthur', 'Ernser', '2010-04-25 10:46:28', 'u', '2022-01-08 15:30:43', '2022-01-08 15:30:43', '+17329257742', 0),
(19, 1, NULL, 'sheridan68@gmail.com', 'sheridan68@gmail.com', 'Braeden', 'Gorczany', '1983-11-21 08:21:40', 'u', '2022-01-08 15:30:43', '2022-01-08 15:30:43', '(530) 929-1890', 0),
(20, 2, NULL, 'reynold02@hotmail.com', 'reynold02@hotmail.com', 'Meggie', 'Cremin', '2015-01-31 10:49:26', 'u', '2022-01-08 15:30:43', '2022-01-08 15:30:43', '+1.202.994.0583', 0),
(21, 2, NULL, 'qziemann@ankunding.info', 'qziemann@ankunding.info', 'Lonie', 'Hane', '2002-06-26 16:02:23', 'u', '2022-01-08 15:30:43', '2022-01-08 15:30:44', '(530) 890-2701', 0),
(22, NULL, NULL, 'falus94@gmail.com', 'falus94@gmail.com', NULL, NULL, NULL, 'u', '2022-01-08 16:12:35', '2022-01-08 16:12:35', NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_customer_group`
--

CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_customer_group`
--

INSERT INTO `sylius_customer_group` (`id`, `code`, `name`) VALUES
(1, 'retail', 'Retail'),
(2, 'wholesale', 'Wholesale'),
(3, 'TRUSTED', 'Trusted');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_exchange_rate`
--

CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_exchange_rate`
--

INSERT INTO `sylius_exchange_rate` (`id`, `source_currency`, `target_currency`, `ratio`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '0.88000', '2022-01-08 17:06:02', '2022-01-08 17:06:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_gateway_config`
--

CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_gateway_config`
--

INSERT INTO `sylius_gateway_config` (`id`, `config`, `gateway_name`, `factory_name`) VALUES
(1, '[]', 'Offline', 'offline'),
(2, '[]', 'Offline', 'offline');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_locale`
--

CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en_US', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(2, 'de_DE', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(3, 'fr_FR', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(4, 'pl_PL', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(5, 'es_ES', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(6, 'es_MX', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(7, 'pt_PT', '2022-01-08 15:30:38', '2022-01-08 15:30:38'),
(8, 'zh_CN', '2022-01-08 15:30:38', '2022-01-08 15:30:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_migrations`
--

CREATE TABLE `sylius_migrations` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_migrations`
--

INSERT INTO `sylius_migrations` (`version`, `executed_at`, `execution_time`) VALUES
('App\\Migrations\\Version20220111164149', '2022-01-11 17:50:11', 96),
('App\\Migrations\\Version20220112121041', '2022-01-12 13:11:40', 172),
('App\\Migrations\\Version20220114184755', '2022-01-14 19:49:02', 203),
('App\\Migrations\\Version20220124152037', '2022-01-24 16:28:49', 169),
('App\\Migrations\\Version20220125134218', '2022-01-25 15:10:43', 99),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555', '2022-01-08 15:28:39', 5303),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131', '2022-01-08 15:28:45', 16),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137', '2022-01-08 15:28:45', 66),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325', '2022-01-08 15:28:45', 9),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441', '2022-01-08 15:28:45', 58),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422', '2022-01-08 15:28:45', 17),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514', '2022-01-08 15:28:45', 9),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334', '2022-01-08 15:28:45', 12),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125', '2022-01-08 15:28:45', 45),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417', '2022-01-08 15:28:45', 59),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436', '2022-01-08 15:28:45', 7),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250', '2022-01-08 15:28:45', 28),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955', '2022-01-08 15:28:45', 30),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058', '2022-01-08 15:28:45', 73),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345', '2022-01-08 15:28:45', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250', '2022-01-08 15:28:45', 19),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710', '2022-01-08 15:28:45', 68),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908', '2022-01-08 15:28:45', 17),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031', '2022-01-08 15:28:45', 34),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621', '2022-01-08 15:28:45', 78),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813', '2022-01-08 15:28:46', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604', '2022-01-08 15:28:46', 44),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010', '2022-01-08 15:28:46', 103),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201', '2022-01-08 15:28:46', 7),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352', '2022-01-08 15:28:46', 9),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945', '2022-01-08 15:28:46', 38),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415', '2022-01-08 15:28:46', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056', '2022-01-08 15:28:46', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122', '2022-01-08 15:28:46', 41),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128', '2022-01-08 15:28:46', 19),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916', '2022-01-08 15:28:46', 15),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039', '2022-01-08 15:28:46', 10),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349', '2022-01-08 15:28:46', 28),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211', '2022-01-08 15:28:46', 72),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409', '2022-01-08 15:28:46', 16),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544', '2022-01-08 15:28:46', 11),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011', '2022-01-08 15:28:46', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638', '2022-01-08 15:28:46', 47),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651', '2022-01-08 15:28:46', 46),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702', '2022-01-08 15:28:46', 57),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429', '2022-01-08 15:28:46', 104),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152', '2022-01-08 15:28:46', 8),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908', '2022-01-08 15:28:46', 7),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815', '2022-01-08 15:28:46', 10),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101', '2022-01-08 15:28:46', 29),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201017150005', '2022-01-08 15:28:46', 7),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201104085538', '2022-01-08 15:28:46', 37),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201130071338', '2022-01-08 15:28:46', 917),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201204071301', '2022-01-08 15:28:47', 839),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201208105207', '2022-01-08 15:28:48', 1),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210311142134', '2022-01-08 15:28:48', 56),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210408131321', '2022-01-08 15:28:48', 9),
('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210422105530', '2022-01-08 15:28:48', 7),
('Sylius\\PayPalPlugin\\Migrations\\Version20200907102535', '2022-01-08 15:28:48', 59);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_order`
--

CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
(1, 2, 3, 1, NULL, 17, '000000001', NULL, 'fulfilled', '2021-04-05 20:52:42', 13240, 364, 13604, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'f8JrA20YCZ', NULL),
(2, 5, 6, 1, NULL, 21, '000000002', NULL, 'fulfilled', '2021-05-07 09:54:44', 45158, 364, 45522, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'nl~jlJWeLg', NULL),
(3, 8, 9, 1, NULL, 20, '000000003', NULL, 'fulfilled', '2021-05-14 01:40:09', 60335, 364, 60699, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', '3GWVbUv_zY', NULL),
(4, 11, 12, 1, NULL, 20, '000000004', NULL, 'fulfilled', '2021-05-30 22:00:31', 40465, 364, 40829, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'z6fo4tiH1C', NULL),
(5, 14, 15, 1, NULL, 6, '000000005', 'Quia reiciendis tempore ea voluptatem sequi ipsam fugiat.', 'fulfilled', '2021-06-24 00:39:20', 5748, 364, 6112, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', '2RfemipQQg', NULL),
(6, 17, 18, 1, NULL, 15, '000000006', 'Cumque sed aut dicta placeat nulla cumque sit.', 'fulfilled', '2021-07-26 09:53:48', 42165, 364, 42529, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'TyG9elOSAm', NULL),
(7, 20, 21, 1, NULL, 21, '000000007', NULL, 'fulfilled', '2021-08-15 07:26:54', 5417, 364, 5781, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'R8jxOhK-mE', NULL),
(8, 23, 24, 1, NULL, 9, '000000008', 'Numquam praesentium ullam voluptates et esse et.', 'fulfilled', '2021-09-14 16:21:46', 36668, 364, 37032, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'nsvsjIhFCw', NULL),
(9, 26, 27, 1, NULL, 16, '000000009', NULL, 'fulfilled', '2021-10-14 15:46:40', 118938, 364, 119302, '2022-01-08 15:30:46', '2022-01-08 15:30:46', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'CjPb1YM8NI', NULL),
(10, 29, 30, 1, NULL, 21, '000000010', NULL, 'fulfilled', '2021-10-15 09:54:21', 75701, 364, 76065, '2022-01-08 15:30:46', '2022-01-08 16:15:22', 'USD', 'en_US', 'completed', 'refunded', 'shipped', 'cPE~M53nut', NULL),
(11, 32, 33, 1, NULL, 4, '000000011', 'Iste quia tenetur quasi repellendus.', 'fulfilled', '2021-12-01 23:36:15', 18632, 364, 18996, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'bM14S~45QU', NULL),
(12, 35, 36, 1, NULL, 19, '000000012', NULL, 'fulfilled', '2021-12-17 17:50:27', 60468, 364, 60832, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'k4czXLzpuA', NULL),
(13, 38, 39, 1, NULL, 1, '000000013', 'Aut velit rerum quam ab atque ut ab alias.', 'new', '2021-03-23 03:26:08', 13322, 364, 13686, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'oTSQ0-eTI-', NULL),
(14, 41, 42, 1, NULL, 7, '000000014', NULL, 'new', '2021-03-30 17:25:58', 26582, 364, 26946, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4cI~qkJsEs', NULL),
(15, 44, 45, 1, NULL, 13, '000000015', NULL, 'new', '2021-04-07 04:59:38', 77312, 364, 77676, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'qT1NO16ih3', NULL),
(16, 47, 48, 1, NULL, 18, '000000016', NULL, 'new', '2021-05-11 02:27:03', 76822, 364, 77186, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'depWbPQqA2', NULL),
(17, 50, 51, 1, NULL, 2, '000000017', 'Deserunt consequatur alias incidunt et.', 'new', '2021-05-20 08:14:12', 58062, 364, 58426, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'ZyVmFSElXX', NULL),
(18, 53, 54, 1, NULL, 16, '000000018', 'Molestias quod quae blanditiis voluptas.', 'new', '2021-06-16 07:21:52', 24708, 364, 25072, '2022-01-08 15:30:47', '2022-01-08 15:30:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'qEylP2Ycnw', NULL),
(19, 56, 57, 1, NULL, 1, '000000019', NULL, 'fulfilled', '2021-09-13 13:57:06', 105018, 364, 105382, '2022-01-08 15:30:47', '2022-01-19 12:30:18', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'KaFK7mlQv~', NULL),
(20, 59, 60, 1, NULL, 21, '000000020', NULL, 'new', '2021-10-04 10:43:19', 67832, 364, 68196, '2022-01-08 15:30:47', '2022-01-17 17:19:34', 'USD', 'en_US', 'completed', 'awaiting_payment', 'shipped', '9A5r-li2ms', NULL),
(21, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 10000, 500, 10500, '2022-01-22 22:50:51', '2022-01-22 22:50:53', 'USD', 'en_US', 'cart', 'cart', 'cart', NULL, NULL),
(22, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 7281, 500, 7781, '2022-01-23 22:58:58', '2022-01-23 22:59:05', 'USD', 'en_US', 'cart', 'cart', 'cart', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_order_item`
--

CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`, `version`) VALUES
(1, 1, 104, 2, 7120, 13240, 0, 13240, 0, '727F patched cropped jeans', 'XXL', 1),
(2, 2, 25, 5, 4914, 24037, 0, 24037, 0, 'Raglan grey & black Tee', 'XXL', 1),
(3, 2, 18, 2, 8920, 17454, 0, 17454, 0, 'Sport basic white T-Shirt', 'L', 1),
(4, 2, 28, 4, 937, 3667, 0, 3667, 0, 'Oversize white cotton T-Shirt', 'L', 1),
(5, 3, 111, 5, 3456, 16997, 0, 16997, 0, '000F office grey jeans', 'M', 1),
(6, 3, 105, 2, 6328, 12450, 0, 12450, 0, '111F patched jeans with fancy badges', 'S', 1),
(7, 3, 19, 5, 1672, 8224, 0, 8224, 0, 'Sport basic white T-Shirt', 'XL', 1),
(8, 3, 48, 4, 2150, 8460, 0, 8460, 0, 'Beige strappy summer dress', 'XXL Regular', 1),
(9, 3, 14, 3, 4813, 14204, 0, 14204, 0, 'Ribbed copper slim fit Tee', 'XL', 1),
(10, 4, 84, 5, 4471, 21816, 0, 21816, 0, '911M regular fit jeans', 'XXL', 1),
(11, 4, 33, 2, 7311, 14269, 0, 14269, 0, 'Knitted white pompom cap', '', 1),
(12, 4, 92, 3, 1496, 4380, 0, 4380, 0, '990M regular fit jeans', 'L', 1),
(13, 5, 34, 4, 1437, 5748, 0, 5748, 0, 'Cashmere-blend violet beanie', '', 1),
(14, 6, 29, 3, 4181, 12253, 0, 12253, 0, 'Oversize white cotton T-Shirt', 'XL', 1),
(15, 6, 9, 4, 6653, 25995, 0, 25995, 0, 'Loose white designer T-Shirt', 'XL', 1),
(16, 6, 115, 2, 2005, 3917, 0, 3917, 0, '666F boyfriend jeans with rips', 'S', 1),
(17, 7, 32, 1, 503, 503, 0, 503, 0, 'Knitted wool-blend green cap', '', 1),
(18, 7, 25, 1, 4914, 4914, 0, 4914, 0, 'Raglan grey & black Tee', 'XXL', 1),
(19, 8, 28, 1, 937, 913, 0, 913, 0, 'Oversize white cotton T-Shirt', 'L', 1),
(20, 8, 6, 3, 1866, 5449, 0, 5449, 0, 'Loose white designer T-Shirt', 'S', 1),
(21, 8, 14, 1, 4813, 4685, 0, 4685, 0, 'Ribbed copper slim fit Tee', 'XL', 1),
(22, 8, 118, 5, 3827, 18627, 0, 18627, 0, '666F boyfriend jeans with rips', 'XL', 1),
(23, 8, 34, 5, 1437, 6994, 0, 6994, 0, 'Cashmere-blend violet beanie', '', 1),
(24, 9, 33, 5, 7311, 36250, 0, 36250, 0, 'Knitted white pompom cap', '', 1),
(25, 9, 100, 3, 4863, 14467, 0, 14467, 0, '727F patched cropped jeans', 'S', 1),
(26, 9, 32, 2, 503, 998, 0, 998, 0, 'Knitted wool-blend green cap', '', 1),
(27, 9, 26, 4, 8027, 31840, 0, 31840, 0, 'Oversize white cotton T-Shirt', 'S', 1),
(28, 9, 18, 4, 8920, 35383, 0, 35383, 0, 'Sport basic white T-Shirt', 'L', 1),
(29, 10, 90, 2, 1205, 2379, 0, 2379, 0, '990M regular fit jeans', 'S', 1),
(30, 10, 11, 5, 3326, 16413, 0, 16413, 0, 'Ribbed copper slim fit Tee', 'S', 1),
(31, 10, 81, 5, 7281, 35930, 0, 35930, 0, '911M regular fit jeans', 'M', 1),
(32, 10, 75, 4, 2206, 8709, 0, 8709, 0, 'Ruffle wrap festival dress', 'XL Regular', 1),
(33, 10, 51, 2, 6216, 12270, 0, 12270, 0, 'Off shoulder boho dress', 'S Regular', 1),
(34, 11, 36, 2, 5148, 9772, 0, 9772, 0, 'Beige strappy summer dress', 'S Regular', 1),
(35, 11, 17, 2, 4668, 8860, 0, 8860, 0, 'Sport basic white T-Shirt', 'M', 1),
(36, 12, 85, 4, 6918, 27222, 0, 27222, 0, '330M slim fit jeans', 'S', 1),
(37, 12, 92, 3, 1496, 4415, 0, 4415, 0, '990M regular fit jeans', 'L', 1),
(38, 12, 97, 4, 7327, 28831, 0, 28831, 0, '007M black elegance jeans', 'L', 1),
(39, 13, 74, 1, 9866, 9866, 0, 9866, 0, 'Ruffle wrap festival dress', 'XL Petite', 1),
(40, 13, 111, 1, 3456, 3456, 0, 3456, 0, '000F office grey jeans', 'M', 1),
(41, 14, 32, 4, 503, 2012, 0, 2012, 0, 'Knitted wool-blend green cap', '', 1),
(42, 14, 25, 5, 4914, 24570, 0, 24570, 0, 'Raglan grey & black Tee', 'XXL', 1),
(43, 15, 31, 7, 6511, 45577, 0, 45577, 0, 'Knitted burgundy winter cap', '', 1),
(44, 15, 103, 1, 4948, 4948, 0, 4948, 0, '727F patched cropped jeans', 'XL', 1),
(45, 15, 2, 2, 3390, 6780, 0, 6780, 0, 'Everyday white basic T-Shirt', 'M', 1),
(46, 15, 20, 3, 6669, 20007, 0, 20007, 0, 'Sport basic white T-Shirt', 'XXL', 1),
(47, 16, 9, 4, 6653, 26612, 0, 26612, 0, 'Loose white designer T-Shirt', 'XL', 1),
(48, 16, 94, 2, 1843, 3686, 0, 3686, 0, '990M regular fit jeans', 'XXL', 1),
(49, 16, 76, 3, 9284, 27852, 0, 27852, 0, 'Ruffle wrap festival dress', 'XL Tall', 1),
(50, 16, 17, 4, 4668, 18672, 0, 18672, 0, 'Sport basic white T-Shirt', 'M', 1),
(51, 17, 101, 5, 1973, 9865, 0, 9865, 0, '727F patched cropped jeans', 'M', 1),
(52, 17, 116, 1, 5353, 5353, 0, 5353, 0, '666F boyfriend jeans with rips', 'M', 1),
(53, 17, 33, 4, 7311, 29244, 0, 29244, 0, 'Knitted white pompom cap', '', 1),
(54, 17, 12, 1, 1180, 1180, 0, 1180, 0, 'Ribbed copper slim fit Tee', 'M', 1),
(55, 17, 80, 5, 2484, 12420, 0, 12420, 0, '911M regular fit jeans', 'S', 1),
(56, 18, 43, 3, 8236, 24708, 0, 24708, 0, 'Beige strappy summer dress', 'L Tall', 1),
(57, 19, 2, 3, 3390, 10170, 0, 10170, 0, 'Everyday white basic T-Shirt', 'M', 1),
(58, 19, 33, 10, 7311, 73110, 0, 73110, 0, 'Knitted white pompom cap', '', 1),
(59, 19, 87, 3, 4142, 12426, 0, 12426, 0, '330M slim fit jeans', 'L', 1),
(60, 19, 72, 2, 4656, 9312, 0, 9312, 0, 'Ruffle wrap festival dress', 'L Regular', 1),
(61, 20, 112, 4, 8038, 32152, 0, 32152, 0, '000F office grey jeans', 'L', 1),
(62, 20, 18, 4, 8920, 35680, 0, 35680, 0, 'Sport basic white T-Shirt', 'L', 1),
(63, 21, 120, 1, 10000, 10000, 0, 10000, 0, NULL, NULL, 1),
(64, 22, 81, 1, 7281, 7281, 0, 7281, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_order_item_unit`
--

CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_order_item_unit`
--

INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, -500, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(2, 1, 1, -500, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(3, 2, 2, -107, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(4, 2, 2, -107, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(5, 2, 2, -107, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(6, 2, 2, -106, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(7, 2, 2, -106, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(8, 3, 2, -193, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(9, 3, 2, -193, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(10, 4, 2, -21, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(11, 4, 2, -20, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(12, 4, 2, -20, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(13, 4, 2, -20, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(14, 5, 3, -57, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(15, 5, 3, -57, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(16, 5, 3, -57, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(17, 5, 3, -56, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(18, 5, 3, -56, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(19, 6, 3, -103, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(20, 6, 3, -103, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(21, 7, 3, -28, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(22, 7, 3, -27, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(23, 7, 3, -27, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(24, 7, 3, -27, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(25, 7, 3, -27, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(26, 8, 3, -35, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(27, 8, 3, -35, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(28, 8, 3, -35, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(29, 8, 3, -35, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(30, 9, 3, -79, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(31, 9, 3, -78, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(32, 9, 3, -78, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(33, 10, 4, -108, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(34, 10, 4, -108, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(35, 10, 4, -108, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(36, 10, 4, -108, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(37, 10, 4, -107, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(38, 11, 4, -177, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(39, 11, 4, -176, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(40, 12, 4, -36, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(41, 12, 4, -36, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(42, 12, 4, -36, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(43, 13, 5, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(44, 13, 5, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(45, 13, 5, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(46, 13, 5, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(47, 14, 6, -97, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(48, 14, 6, -97, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(49, 14, 6, -96, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(50, 15, 6, -155, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(51, 15, 6, -154, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(52, 15, 6, -154, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(53, 15, 6, -154, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(54, 16, 6, -47, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(55, 16, 6, -46, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(56, 17, 7, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(57, 18, 7, 0, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(58, 19, 8, -24, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(59, 20, 8, -50, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(60, 20, 8, -50, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(61, 20, 8, -49, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(62, 21, 8, -128, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(63, 22, 8, -102, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(64, 22, 8, -102, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(65, 22, 8, -102, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(66, 22, 8, -101, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(67, 22, 8, -101, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(68, 23, 8, -39, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(69, 23, 8, -38, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(70, 23, 8, -38, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(71, 23, 8, -38, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(72, 23, 8, -38, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(73, 24, 9, -61, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(74, 24, 9, -61, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(75, 24, 9, -61, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(76, 24, 9, -61, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(77, 24, 9, -61, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(78, 25, 9, -41, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(79, 25, 9, -41, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(80, 25, 9, -40, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(81, 26, 9, -4, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(82, 26, 9, -4, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(83, 27, 9, -67, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(84, 27, 9, -67, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(85, 27, 9, -67, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(86, 27, 9, -67, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(87, 28, 9, -75, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(88, 28, 9, -74, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(89, 28, 9, -74, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(90, 28, 9, -74, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(91, 29, 10, -16, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(92, 29, 10, -15, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(93, 30, 10, -44, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(94, 30, 10, -44, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(95, 30, 10, -43, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(96, 30, 10, -43, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(97, 30, 10, -43, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(98, 31, 10, -95, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(99, 31, 10, -95, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(100, 31, 10, -95, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(101, 31, 10, -95, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(102, 31, 10, -95, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(103, 32, 10, -29, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(104, 32, 10, -29, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(105, 32, 10, -29, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(106, 32, 10, -28, '2022-01-08 15:30:46', '2022-01-08 15:30:47'),
(107, 33, 10, -81, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(108, 33, 10, -81, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(109, 34, 11, -262, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(110, 34, 11, -262, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(111, 35, 11, -238, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(112, 35, 11, -238, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(113, 36, 12, -113, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(114, 36, 12, -113, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(115, 36, 12, -112, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(116, 36, 12, -112, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(117, 37, 12, -25, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(118, 37, 12, -24, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(119, 37, 12, -24, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(120, 38, 12, -120, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(121, 38, 12, -119, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(122, 38, 12, -119, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(123, 38, 12, -119, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(124, 39, 13, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(125, 40, 13, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(126, 41, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(127, 41, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(128, 41, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(129, 41, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(130, 42, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(131, 42, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(132, 42, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(133, 42, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(134, 42, 14, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(135, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(136, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(137, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(138, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(139, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(140, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(141, 43, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(142, 44, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(143, 45, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(144, 45, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(145, 46, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(146, 46, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(147, 46, 15, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(148, 47, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(149, 47, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(150, 47, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(151, 47, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(152, 48, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(153, 48, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(154, 49, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(155, 49, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(156, 49, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(157, 50, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(158, 50, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(159, 50, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(160, 50, 16, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(161, 51, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(162, 51, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(163, 51, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(164, 51, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(165, 51, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(166, 52, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(167, 53, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(168, 53, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(169, 53, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(170, 53, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(171, 54, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(172, 55, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(173, 55, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(174, 55, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(175, 55, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(176, 55, 17, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(177, 56, 18, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(178, 56, 18, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(179, 56, 18, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(180, 57, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(181, 57, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(182, 57, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(183, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(184, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(185, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(186, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(187, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(188, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(189, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(190, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(191, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(192, 58, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(193, 59, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(194, 59, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(195, 59, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(196, 60, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(197, 60, 19, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(198, 61, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(199, 61, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(200, 61, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(201, 61, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(202, 62, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(203, 62, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(204, 62, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(205, 62, 20, 0, '2022-01-08 15:30:47', '2022-01-08 15:30:47'),
(206, 63, 21, 0, '2022-01-22 22:50:52', '2022-01-22 22:50:53'),
(207, 64, 22, 0, '2022-01-23 22:58:59', '2022-01-23 22:59:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_order_sequence`
--

CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_order_sequence`
--

INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
(1, 20, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_payment`
--

CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_payment`
--

INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'USD', 13604, 'completed', '[]', '2021-04-05 20:52:42', '2022-01-08 15:30:46'),
(2, 1, 2, 'USD', 45522, 'completed', '[]', '2021-05-07 09:54:44', '2022-01-08 15:30:46'),
(3, 2, 3, 'USD', 60699, 'completed', '[]', '2021-05-14 01:40:09', '2022-01-08 15:30:46'),
(4, 1, 4, 'USD', 40829, 'completed', '[]', '2021-05-30 22:00:31', '2022-01-08 15:30:46'),
(5, 2, 5, 'USD', 6112, 'completed', '[]', '2021-06-24 00:39:20', '2022-01-08 15:30:46'),
(6, 2, 6, 'USD', 42529, 'completed', '[]', '2021-07-26 09:53:48', '2022-01-08 15:30:46'),
(7, 1, 7, 'USD', 5781, 'completed', '[]', '2021-08-15 07:26:54', '2022-01-08 15:30:46'),
(8, 2, 8, 'USD', 37032, 'completed', '[]', '2021-09-14 16:21:46', '2022-01-08 15:30:46'),
(9, 1, 9, 'USD', 119302, 'completed', '[]', '2021-10-14 15:46:40', '2022-01-08 15:30:46'),
(10, 1, 10, 'USD', 76065, 'refunded', '[]', '2021-10-15 09:54:21', '2022-01-08 16:15:22'),
(11, 2, 11, 'USD', 18996, 'completed', '[]', '2021-12-01 23:36:15', '2022-01-08 15:30:47'),
(12, 1, 12, 'USD', 60832, 'completed', '[]', '2021-12-17 17:50:27', '2022-01-08 15:30:47'),
(13, 1, 13, 'USD', 13686, 'new', '[]', '2021-03-23 03:26:08', '2022-01-08 15:30:47'),
(14, 1, 14, 'USD', 26946, 'new', '[]', '2021-03-30 17:25:58', '2022-01-08 15:30:47'),
(15, 2, 15, 'USD', 77676, 'new', '[]', '2021-04-07 04:59:38', '2022-01-08 15:30:47'),
(16, 1, 16, 'USD', 77186, 'new', '[]', '2021-05-11 02:27:03', '2022-01-08 15:30:47'),
(17, 2, 17, 'USD', 58426, 'new', '[]', '2021-05-20 08:14:12', '2022-01-08 15:30:47'),
(18, 2, 18, 'USD', 25072, 'new', '[]', '2021-06-16 07:21:52', '2022-01-08 15:30:47'),
(19, 1, 19, 'USD', 105382, 'completed', '[]', '2021-09-13 13:57:06', '2022-01-19 12:30:18'),
(20, 1, 20, 'USD', 68196, 'new', '[]', '2021-10-04 10:43:19', '2022-01-08 15:30:47'),
(21, 1, 21, 'USD', 10500, 'cart', '[]', '2022-01-22 22:50:53', '2022-01-22 22:50:53'),
(22, 1, 22, 'USD', 7781, 'cart', '[]', '2022-01-23 22:59:05', '2022-01-23 22:59:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_payment_method`
--

CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_payment_method`
--

INSERT INTO `sylius_payment_method` (`id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`, `gateway_config_id`) VALUES
(1, 'cash_on_delivery', NULL, 1, 0, '2022-01-08 15:30:38', '2022-01-08 15:30:38', 1),
(2, 'bank_transfer', NULL, 1, 1, '2022-01-08 15:30:38', '2022-01-08 15:30:38', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_payment_method_channels`
--

CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_payment_method_channels`
--

INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_payment_method_translation`
--

CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_payment_method_translation`
--

INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
(1, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'en_US'),
(2, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'de_DE'),
(3, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'fr_FR'),
(4, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'pl_PL'),
(5, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'es_ES'),
(6, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'es_MX'),
(7, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'pt_PT'),
(8, 1, 'Cash on delivery', 'Corporis illum beatae possimus quidem vel ipsam.', NULL, 'zh_CN'),
(9, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'en_US'),
(10, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'de_DE'),
(11, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'fr_FR'),
(12, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'pl_PL'),
(13, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'es_ES'),
(14, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'es_MX'),
(15, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'pt_PT'),
(16, 2, 'Bank transfer', 'Sunt sed dolor tempore sed magnam laudantium qui.', NULL, 'zh_CN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_payment_security_token`
--

CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_paypal_plugin_pay_pal_credentials`
--

CREATE TABLE `sylius_paypal_plugin_pay_pal_credentials` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` datetime NOT NULL,
  `expiration_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product`
--

CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT 0,
  `supplier_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product`
--

INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`, `supplier_id`, `color_id`) VALUES
(1, 4, 'Everyday_white_basic_T_Shirt', '2022-01-05 13:03:26', '2022-01-08 15:30:45', 1, 'match', 3.5, NULL, NULL),
(2, 4, 'Loose_white_designer_T_Shirt', '2022-01-04 09:14:48', '2022-01-08 15:30:44', 1, 'match', 0, NULL, NULL),
(3, 4, 'Ribbed_copper_slim_fit_Tee', '2022-01-06 20:42:03', '2022-01-08 15:30:46', 1, 'match', 2.5, NULL, NULL),
(4, 3, 'Sport_basic_white_T_Shirt', '2022-01-04 10:38:39', '2022-01-08 15:30:44', 1, 'match', 0, NULL, NULL),
(5, 3, 'Raglan_grey_&_black_Tee', '2022-01-04 10:43:22', '2022-01-08 15:30:46', 1, 'match', 2, NULL, NULL),
(6, 3, 'Oversize_white_cotton_T_Shirt', '2022-01-05 14:47:38', '2022-01-08 15:30:44', 1, 'match', 0, NULL, NULL),
(7, 7, 'Knitted_burgundy_winter_cap', '2022-01-02 11:12:14', '2022-01-08 15:30:45', 1, 'match', 0, NULL, NULL),
(8, 6, 'Knitted_wool_blend_green_cap', '2022-01-01 19:39:37', '2022-01-08 15:30:46', 1, 'match', 4, NULL, NULL),
(9, 7, 'Knitted_white_pompom_cap', '2022-01-07 02:32:59', '2022-01-25 22:28:05', 1, 'match', 0, NULL, 3),
(10, 6, 'Cashmere_blend_violet_beanie', '2022-01-05 09:52:16', '2022-01-08 15:30:45', 1, 'match', 0, NULL, NULL),
(11, 8, 'Beige_strappy_summer_dress', '2022-01-05 16:44:09', '2022-01-08 15:30:45', 1, 'match', 1, NULL, NULL),
(12, 8, 'Off_shoulder_boho_dress', '2022-01-06 16:23:02', '2022-01-08 15:30:45', 1, 'match', 4, NULL, NULL),
(13, 8, 'Ruffle_wrap_festival_dress', '2022-01-02 03:43:49', '2022-01-08 15:30:45', 1, 'match', 3, NULL, NULL),
(14, 10, '911M_regular_fit_jeans', '2022-01-06 23:00:12', '2022-01-08 15:30:46', 1, 'match', 4, NULL, NULL),
(15, 10, '330M_slim_fit_jeans', '2022-01-01 19:36:29', '2022-01-08 15:30:45', 1, 'match', 0, NULL, NULL),
(16, 10, '990M_regular_fit_jeans', '2022-01-06 03:05:23', '2022-01-08 15:30:45', 1, 'match', 0, NULL, NULL),
(17, 10, '007M_black_elegance_jeans', '2022-01-06 16:11:49', '2022-01-08 15:30:46', 1, 'match', 2.75, NULL, NULL),
(18, 11, '727F_patched_cropped_jeans', '2022-01-05 23:46:47', '2022-01-08 15:30:45', 1, 'match', 0, NULL, NULL),
(19, 11, '111F_patched_jeans_with_fancy_badges', '2022-01-05 20:55:04', '2022-01-08 15:30:45', 1, 'match', 4, NULL, NULL),
(20, 11, '000F_office_grey_jeans', '2022-01-04 23:27:56', '2022-01-25 15:32:11', 1, 'match', 3, NULL, 1),
(21, 11, '666F_boyfriend_jeans_with_rips', '2022-01-06 20:07:07', '2022-01-08 15:30:46', 1, 'match', 4, NULL, NULL),
(22, 3, 'SYLIUS_ONLINE_COURSE_T_SHIRT', '2022-01-15 18:12:40', '2022-02-04 20:18:06', 1, 'choice', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_association`
--

CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_association`
--

INSERT INTO `sylius_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 17, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(2, 1, 18, '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(3, 1, 10, '2022-01-08 15:30:46', '2022-01-08 15:30:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_association_product`
--

CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_association_product`
--

INSERT INTO `sylius_product_association_product` (`association_id`, `product_id`) VALUES
(1, 15),
(1, 16),
(2, 19),
(2, 21),
(3, 8),
(3, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_association_type`
--

CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_association_type`
--

INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'similar_products', '2022-01-08 15:30:46', '2022-01-08 15:30:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_association_type_translation`
--

CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_association_type_translation`
--

INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Similar products', 'en_US'),
(2, 1, 'Similar products', 'de_DE'),
(3, 1, 'Similar products', 'fr_FR'),
(4, 1, 'Similar products', 'pl_PL'),
(5, 1, 'Similar products', 'es_ES'),
(6, 1, 'Similar products', 'es_MX'),
(7, 1, 'Similar products', 'pt_PT'),
(8, 1, 'Similar products', 'zh_CN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_attribute`
--

CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_attribute`
--

INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`, `translatable`) VALUES
(1, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 1),
(2, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 1, 1),
(3, 't_shirt_material', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 2, 1),
(4, 'damage_reduction', 'percent', 'float', 'a:0:{}', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 3, 0),
(5, 'cap_brand', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 4, 1),
(6, 'cap_collection', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 5, 1),
(7, 'cap_material', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 6, 1),
(8, 'dress_brand', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 7, 1),
(9, 'dress_collection', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 8, 1),
(10, 'dress_material', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 9, 1),
(11, 'length', 'integer', 'integer', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 10, 0),
(12, 'jeans_brand', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 11, 1),
(13, 'jeans_collection', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 12, 1),
(14, 'jeans_material', 'text', 'text', 'a:0:{}', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 13, 1),
(15, 'COTTON', 'percent', 'float', 'a:0:{}', '2022-01-15 18:10:12', '2022-01-15 18:10:15', 14, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_attribute_translation`
--

CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_attribute_translation`
--

INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'T-shirt brand', 'en_US'),
(2, 1, 'T-shirt brand', 'de_DE'),
(3, 1, 'T-shirt brand', 'fr_FR'),
(4, 1, 'T-shirt brand', 'pl_PL'),
(5, 1, 'T-shirt brand', 'es_ES'),
(6, 1, 'T-shirt brand', 'es_MX'),
(7, 1, 'T-shirt brand', 'pt_PT'),
(8, 1, 'T-shirt brand', 'zh_CN'),
(9, 2, 'T-shirt collection', 'en_US'),
(10, 2, 'T-shirt collection', 'de_DE'),
(11, 2, 'T-shirt collection', 'fr_FR'),
(12, 2, 'T-shirt collection', 'pl_PL'),
(13, 2, 'T-shirt collection', 'es_ES'),
(14, 2, 'T-shirt collection', 'es_MX'),
(15, 2, 'T-shirt collection', 'pt_PT'),
(16, 2, 'T-shirt collection', 'zh_CN'),
(17, 3, 'T-shirt material', 'en_US'),
(18, 3, 'T-shirt material', 'de_DE'),
(19, 3, 'T-shirt material', 'fr_FR'),
(20, 3, 'T-shirt material', 'pl_PL'),
(21, 3, 'T-shirt material', 'es_ES'),
(22, 3, 'T-shirt material', 'es_MX'),
(23, 3, 'T-shirt material', 'pt_PT'),
(24, 3, 'T-shirt material', 'zh_CN'),
(25, 4, 'Damage reduction', 'en_US'),
(26, 4, 'Damage reduction', 'de_DE'),
(27, 4, 'Damage reduction', 'fr_FR'),
(28, 4, 'Damage reduction', 'pl_PL'),
(29, 4, 'Damage reduction', 'es_ES'),
(30, 4, 'Damage reduction', 'es_MX'),
(31, 4, 'Damage reduction', 'pt_PT'),
(32, 4, 'Damage reduction', 'zh_CN'),
(33, 5, 'Cap brand', 'en_US'),
(34, 5, 'Cap brand', 'de_DE'),
(35, 5, 'Cap brand', 'fr_FR'),
(36, 5, 'Cap brand', 'pl_PL'),
(37, 5, 'Cap brand', 'es_ES'),
(38, 5, 'Cap brand', 'es_MX'),
(39, 5, 'Cap brand', 'pt_PT'),
(40, 5, 'Cap brand', 'zh_CN'),
(41, 6, 'Cap collection', 'en_US'),
(42, 6, 'Cap collection', 'de_DE'),
(43, 6, 'Cap collection', 'fr_FR'),
(44, 6, 'Cap collection', 'pl_PL'),
(45, 6, 'Cap collection', 'es_ES'),
(46, 6, 'Cap collection', 'es_MX'),
(47, 6, 'Cap collection', 'pt_PT'),
(48, 6, 'Cap collection', 'zh_CN'),
(49, 7, 'Cap material', 'en_US'),
(50, 7, 'Cap material', 'de_DE'),
(51, 7, 'Cap material', 'fr_FR'),
(52, 7, 'Cap material', 'pl_PL'),
(53, 7, 'Cap material', 'es_ES'),
(54, 7, 'Cap material', 'es_MX'),
(55, 7, 'Cap material', 'pt_PT'),
(56, 7, 'Cap material', 'zh_CN'),
(57, 8, 'Dress brand', 'en_US'),
(58, 8, 'Dress brand', 'de_DE'),
(59, 8, 'Dress brand', 'fr_FR'),
(60, 8, 'Dress brand', 'pl_PL'),
(61, 8, 'Dress brand', 'es_ES'),
(62, 8, 'Dress brand', 'es_MX'),
(63, 8, 'Dress brand', 'pt_PT'),
(64, 8, 'Dress brand', 'zh_CN'),
(65, 9, 'Dress collection', 'en_US'),
(66, 9, 'Dress collection', 'de_DE'),
(67, 9, 'Dress collection', 'fr_FR'),
(68, 9, 'Dress collection', 'pl_PL'),
(69, 9, 'Dress collection', 'es_ES'),
(70, 9, 'Dress collection', 'es_MX'),
(71, 9, 'Dress collection', 'pt_PT'),
(72, 9, 'Dress collection', 'zh_CN'),
(73, 10, 'Dress material', 'en_US'),
(74, 10, 'Dress material', 'de_DE'),
(75, 10, 'Dress material', 'fr_FR'),
(76, 10, 'Dress material', 'pl_PL'),
(77, 10, 'Dress material', 'es_ES'),
(78, 10, 'Dress material', 'es_MX'),
(79, 10, 'Dress material', 'pt_PT'),
(80, 10, 'Dress material', 'zh_CN'),
(81, 11, 'Length', 'en_US'),
(82, 11, 'Length', 'de_DE'),
(83, 11, 'Length', 'fr_FR'),
(84, 11, 'Length', 'pl_PL'),
(85, 11, 'Length', 'es_ES'),
(86, 11, 'Length', 'es_MX'),
(87, 11, 'Length', 'pt_PT'),
(88, 11, 'Length', 'zh_CN'),
(89, 12, 'Jeans brand', 'en_US'),
(90, 12, 'Jeans brand', 'de_DE'),
(91, 12, 'Jeans brand', 'fr_FR'),
(92, 12, 'Jeans brand', 'pl_PL'),
(93, 12, 'Jeans brand', 'es_ES'),
(94, 12, 'Jeans brand', 'es_MX'),
(95, 12, 'Jeans brand', 'pt_PT'),
(96, 12, 'Jeans brand', 'zh_CN'),
(97, 13, 'Jeans collection', 'en_US'),
(98, 13, 'Jeans collection', 'de_DE'),
(99, 13, 'Jeans collection', 'fr_FR'),
(100, 13, 'Jeans collection', 'pl_PL'),
(101, 13, 'Jeans collection', 'es_ES'),
(102, 13, 'Jeans collection', 'es_MX'),
(103, 13, 'Jeans collection', 'pt_PT'),
(104, 13, 'Jeans collection', 'zh_CN'),
(105, 14, 'Jeans material', 'en_US'),
(106, 14, 'Jeans material', 'de_DE'),
(107, 14, 'Jeans material', 'fr_FR'),
(108, 14, 'Jeans material', 'pl_PL'),
(109, 14, 'Jeans material', 'es_ES'),
(110, 14, 'Jeans material', 'es_MX'),
(111, 14, 'Jeans material', 'pt_PT'),
(112, 14, 'Jeans material', 'zh_CN'),
(113, 15, 'Cotton', 'en_US'),
(114, 15, 'Bawełna', 'pl_PL');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_attribute_value`
--

CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_attribute_value`
--

INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `locale_code`) VALUES
(1, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(2, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(3, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(4, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(5, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(6, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(7, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(8, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(9, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(10, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(11, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(12, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(13, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(14, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(15, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(16, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(17, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(18, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(19, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(20, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(21, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(22, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(23, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(24, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(25, 1, 4, NULL, NULL, NULL, 0.1, NULL, NULL, NULL, NULL),
(26, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(27, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(28, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(29, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(30, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(31, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(32, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(33, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(34, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(35, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(36, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(37, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(38, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(39, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(40, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(41, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(42, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(43, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(44, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(45, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(46, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(47, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(48, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(49, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(50, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(51, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(52, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(53, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(54, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(55, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(56, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(57, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(58, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(59, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(60, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(61, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(62, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(63, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(64, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(65, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(66, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(67, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(68, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(69, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(70, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(71, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(72, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(73, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(74, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(75, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(76, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(77, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(78, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(79, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(80, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(81, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(82, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(83, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(84, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(85, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(86, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(87, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(88, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(89, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(90, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(91, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(92, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(93, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(94, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(95, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(96, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(97, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(98, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(99, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(100, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(101, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(102, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(103, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(104, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(105, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(106, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(107, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(108, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(109, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(110, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(111, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(112, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(113, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(114, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(115, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(116, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(117, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(118, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(119, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(120, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(121, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(122, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(123, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(124, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(125, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(126, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(127, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(128, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(129, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(130, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(131, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(132, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(133, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(134, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(135, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(136, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(137, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(138, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(139, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(140, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(141, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(142, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(143, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(144, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(145, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(146, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(147, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(148, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(149, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(150, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(151, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(152, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(153, 7, 5, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(154, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(155, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(156, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(157, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(158, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(159, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(160, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(161, 7, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(162, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(163, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(164, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(165, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(166, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(167, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(168, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(169, 7, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(170, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(171, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(172, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(173, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(174, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(175, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(176, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(177, 8, 5, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(178, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(179, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(180, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(181, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(182, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(183, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(184, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(185, 8, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(186, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(187, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(188, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(189, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(190, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(191, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(192, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(193, 8, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(194, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(195, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(196, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(197, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(198, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(199, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(200, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(201, 9, 5, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(202, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(203, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(204, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(205, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(206, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(207, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(208, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(209, 9, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(210, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(211, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(212, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(213, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(214, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(215, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(216, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(217, 9, 7, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(218, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(219, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(220, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(221, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(222, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(223, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(224, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(225, 10, 5, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(226, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(227, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(228, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(229, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(230, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(231, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(232, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(233, 10, 6, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(234, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(235, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(236, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(237, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(238, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(239, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(240, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(241, 10, 7, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(242, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(243, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(244, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(245, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(246, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(247, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(248, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(249, 11, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(250, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(251, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(252, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(253, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(254, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(255, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(256, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(257, 11, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(258, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(259, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(260, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(261, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(262, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(263, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(264, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(265, 11, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(266, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(267, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(268, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(269, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(270, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(271, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(272, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(273, 12, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(274, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(275, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(276, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(277, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(278, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(279, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(280, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(281, 12, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(282, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(283, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(284, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(285, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(286, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(287, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(288, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(289, 12, 10, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(290, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(291, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(292, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(293, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(294, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(295, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(296, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(297, 13, 8, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(298, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(299, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(300, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(301, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(302, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(303, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(304, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(305, 13, 9, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(306, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(307, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(308, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(309, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(310, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(311, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(312, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(313, 13, 10, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(314, 13, 11, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL),
(315, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(316, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(317, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(318, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(319, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(320, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(321, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(322, 14, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(323, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(324, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(325, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(326, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(327, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(328, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(329, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(330, 14, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(331, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(332, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(333, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(334, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(335, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(336, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(337, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(338, 14, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(339, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(340, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(341, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(342, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(343, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(344, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(345, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(346, 15, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(347, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(348, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(349, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(350, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(351, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(352, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(353, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(354, 15, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(355, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(356, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(357, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(358, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(359, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(360, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(361, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(362, 15, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(363, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(364, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(365, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(366, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(367, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(368, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(369, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(370, 16, 12, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(371, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(372, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(373, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(374, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(375, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(376, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(377, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(378, 16, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(379, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(380, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(381, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(382, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(383, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(384, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(385, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(386, 16, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(387, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(388, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(389, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(390, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(391, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(392, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(393, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(394, 17, 12, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(395, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(396, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(397, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(398, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(399, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(400, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(401, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(402, 17, 13, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(403, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(404, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(405, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(406, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(407, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(408, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(409, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(410, 17, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(411, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(412, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(413, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(414, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(415, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(416, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(417, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(418, 18, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(419, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(420, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(421, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(422, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(423, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(424, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(425, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(426, 18, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(427, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(428, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(429, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(430, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(431, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(432, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(433, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(434, 18, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(435, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(436, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(437, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(438, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(439, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(440, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(441, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(442, 19, 12, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(443, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(444, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(445, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(446, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(447, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(448, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(449, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(450, 19, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(451, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(452, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(453, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(454, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(455, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(456, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(457, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(458, 19, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(459, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(460, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(461, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(462, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(463, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(464, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(465, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(466, 20, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(467, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(468, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(469, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(470, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(471, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(472, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(473, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(474, 20, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(475, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(476, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(477, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(478, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(479, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(480, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(481, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(482, 20, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(483, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(484, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(485, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(486, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(487, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(488, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(489, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(490, 21, 12, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(491, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(492, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(493, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(494, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(495, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(496, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(497, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(498, 21, 13, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(499, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(500, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE'),
(501, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR'),
(502, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL'),
(503, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES'),
(504, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX'),
(505, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT'),
(506, 21, 14, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN'),
(507, 22, 1, 'Nike', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
(508, 22, 15, NULL, NULL, NULL, 0.95, NULL, NULL, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_channels`
--

CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_channels`
--

INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_image`
--

CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_image`
--

INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
(1, 1, 'main', '02/64/f7b233ff6912838f095f69e82a9d.jpg'),
(2, 2, 'main', '38/67/e6aca4704a8dd3d18e7804cd0a46.jpg'),
(3, 3, 'main', '6e/88/7cc1c81531cdfe85b68d4132ba7a.jpg'),
(4, 4, 'main', '5a/a4/7ed57363ebc33f77ecb3719c4bd7.jpg'),
(5, 5, 'main', 'cd/64/c6732c435fe3169160790cd23627.jpg'),
(6, 6, 'main', 'd4/d6/930fe4dd5d5f4b5b2d35480a6519.jpg'),
(7, 7, 'main', '4f/02/d02b7bbb4024c713e3178cded0f5.jpg'),
(8, 8, 'main', 'ea/f8/8b18b9838444a4947fde0faf2a42.jpg'),
(9, 9, 'main', '33/98/547ac72717ed4e522a60187acddb.jpg'),
(10, 10, 'main', '16/94/46884a18e7a6c62f26bd796d6813.jpg'),
(11, 11, 'main', '1d/7b/a23ba63218403bf1672c296a66e7.jpg'),
(12, 12, 'main', '18/31/7f236d8639b0f68473ebdcbc22c5.jpg'),
(13, 13, 'main', '69/75/3b4de9d1d6f83e5e4011e04c53c4.jpg'),
(14, 14, 'main', '3a/d4/a185c6eab167b6309b4aa3076eaa.jpg'),
(15, 15, 'main', '00/6c/cc20c1ba3b96891b094e5031dd3d.jpg'),
(16, 16, 'main', '31/1f/2f880a378d082059c651d8cca166.jpg'),
(17, 17, 'main', '1a/f5/dc223896fc13675c557e251786a4.svg'),
(18, 18, 'main', 'd2/24/714f483a7a47238b164d5462b0ce.jpg'),
(19, 19, 'main', '45/fd/7b9d70b1a8d7e31f4712beae5701.jpg'),
(20, 20, 'main', '03/6b/22ed147bc3da7f2b4db5c4d6038f.jpg'),
(21, 21, 'main', '22/12/4f4ab75fd7e108d4860c749b985b.jpg'),
(22, 22, NULL, '2a/51/94f40abf8ccdd49f0fde84954e1c.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_image_product_variants`
--

CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_option`
--

CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_option`
--

INSERT INTO `sylius_product_option` (`id`, `code`, `created_at`, `updated_at`, `position`) VALUES
(1, 't_shirt_size', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0),
(2, 'dress_size', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(3, 'dress_height', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 2),
(4, 'jeans_size', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_options`
--

CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_options`
--

INSERT INTO `sylius_product_options` (`product_id`, `option_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(11, 2),
(11, 3),
(12, 2),
(12, 3),
(13, 2),
(13, 3),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_option_translation`
--

CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_option_translation`
--

INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'T-shirt size', 'en_US'),
(2, 1, 'T-shirt size', 'de_DE'),
(3, 1, 'T-shirt size', 'fr_FR'),
(4, 1, 'T-shirt size', 'pl_PL'),
(5, 1, 'T-shirt size', 'es_ES'),
(6, 1, 'T-shirt size', 'es_MX'),
(7, 1, 'T-shirt size', 'pt_PT'),
(8, 1, 'T-shirt size', 'zh_CN'),
(9, 2, 'Dress size', 'en_US'),
(10, 2, 'Dress size', 'de_DE'),
(11, 2, 'Dress size', 'fr_FR'),
(12, 2, 'Dress size', 'pl_PL'),
(13, 2, 'Dress size', 'es_ES'),
(14, 2, 'Dress size', 'es_MX'),
(15, 2, 'Dress size', 'pt_PT'),
(16, 2, 'Dress size', 'zh_CN'),
(17, 3, 'Dress height', 'en_US'),
(18, 3, 'Dress height', 'de_DE'),
(19, 3, 'Dress height', 'fr_FR'),
(20, 3, 'Dress height', 'pl_PL'),
(21, 3, 'Dress height', 'es_ES'),
(22, 3, 'Dress height', 'es_MX'),
(23, 3, 'Dress height', 'pt_PT'),
(24, 3, 'Dress height', 'zh_CN'),
(25, 4, 'Jeans size', 'en_US'),
(26, 4, 'Jeans size', 'de_DE'),
(27, 4, 'Jeans size', 'fr_FR'),
(28, 4, 'Jeans size', 'pl_PL'),
(29, 4, 'Jeans size', 'es_ES'),
(30, 4, 'Jeans size', 'es_MX'),
(31, 4, 'Jeans size', 'pt_PT'),
(32, 4, 'Jeans size', 'zh_CN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_option_value`
--

CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_option_value`
--

INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES
(1, 1, 't_shirt_size_s'),
(2, 1, 't_shirt_size_m'),
(3, 1, 't_shirt_size_l'),
(4, 1, 't_shirt_size_xl'),
(5, 1, 't_shirt_size_xxl'),
(6, 2, 'dress_s'),
(7, 2, 'dress_m'),
(8, 2, 'dress_l'),
(9, 2, 'dress_xl'),
(10, 2, 'dress_xxl'),
(11, 3, 'dress_height_petite'),
(12, 3, 'dress_height_regular'),
(13, 3, 'dress_height_tall'),
(14, 4, 'jeans_size_s'),
(15, 4, 'jeans_size_m'),
(16, 4, 'jeans_size_l'),
(17, 4, 'jeans_size_xl'),
(18, 4, 'jeans_size_xxl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_option_value_translation`
--

CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_option_value_translation`
--

INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES
(1, 1, 'S', 'en_US'),
(2, 1, 'S', 'de_DE'),
(3, 1, 'S', 'fr_FR'),
(4, 1, 'S', 'pl_PL'),
(5, 1, 'S', 'es_ES'),
(6, 1, 'S', 'es_MX'),
(7, 1, 'S', 'pt_PT'),
(8, 1, 'S', 'zh_CN'),
(9, 2, 'M', 'en_US'),
(10, 2, 'M', 'de_DE'),
(11, 2, 'M', 'fr_FR'),
(12, 2, 'M', 'pl_PL'),
(13, 2, 'M', 'es_ES'),
(14, 2, 'M', 'es_MX'),
(15, 2, 'M', 'pt_PT'),
(16, 2, 'M', 'zh_CN'),
(17, 3, 'L', 'en_US'),
(18, 3, 'L', 'de_DE'),
(19, 3, 'L', 'fr_FR'),
(20, 3, 'L', 'pl_PL'),
(21, 3, 'L', 'es_ES'),
(22, 3, 'L', 'es_MX'),
(23, 3, 'L', 'pt_PT'),
(24, 3, 'L', 'zh_CN'),
(25, 4, 'XL', 'en_US'),
(26, 4, 'XL', 'de_DE'),
(27, 4, 'XL', 'fr_FR'),
(28, 4, 'XL', 'pl_PL'),
(29, 4, 'XL', 'es_ES'),
(30, 4, 'XL', 'es_MX'),
(31, 4, 'XL', 'pt_PT'),
(32, 4, 'XL', 'zh_CN'),
(33, 5, 'XXL', 'en_US'),
(34, 5, 'XXL', 'de_DE'),
(35, 5, 'XXL', 'fr_FR'),
(36, 5, 'XXL', 'pl_PL'),
(37, 5, 'XXL', 'es_ES'),
(38, 5, 'XXL', 'es_MX'),
(39, 5, 'XXL', 'pt_PT'),
(40, 5, 'XXL', 'zh_CN'),
(41, 6, 'S', 'en_US'),
(42, 6, 'S', 'de_DE'),
(43, 6, 'S', 'fr_FR'),
(44, 6, 'S', 'pl_PL'),
(45, 6, 'S', 'es_ES'),
(46, 6, 'S', 'es_MX'),
(47, 6, 'S', 'pt_PT'),
(48, 6, 'S', 'zh_CN'),
(49, 7, 'M', 'en_US'),
(50, 7, 'M', 'de_DE'),
(51, 7, 'M', 'fr_FR'),
(52, 7, 'M', 'pl_PL'),
(53, 7, 'M', 'es_ES'),
(54, 7, 'M', 'es_MX'),
(55, 7, 'M', 'pt_PT'),
(56, 7, 'M', 'zh_CN'),
(57, 8, 'L', 'en_US'),
(58, 8, 'L', 'de_DE'),
(59, 8, 'L', 'fr_FR'),
(60, 8, 'L', 'pl_PL'),
(61, 8, 'L', 'es_ES'),
(62, 8, 'L', 'es_MX'),
(63, 8, 'L', 'pt_PT'),
(64, 8, 'L', 'zh_CN'),
(65, 9, 'XL', 'en_US'),
(66, 9, 'XL', 'de_DE'),
(67, 9, 'XL', 'fr_FR'),
(68, 9, 'XL', 'pl_PL'),
(69, 9, 'XL', 'es_ES'),
(70, 9, 'XL', 'es_MX'),
(71, 9, 'XL', 'pt_PT'),
(72, 9, 'XL', 'zh_CN'),
(73, 10, 'XXL', 'en_US'),
(74, 10, 'XXL', 'de_DE'),
(75, 10, 'XXL', 'fr_FR'),
(76, 10, 'XXL', 'pl_PL'),
(77, 10, 'XXL', 'es_ES'),
(78, 10, 'XXL', 'es_MX'),
(79, 10, 'XXL', 'pt_PT'),
(80, 10, 'XXL', 'zh_CN'),
(81, 11, 'Petite', 'en_US'),
(82, 11, 'Petite', 'de_DE'),
(83, 11, 'Petite', 'fr_FR'),
(84, 11, 'Petite', 'pl_PL'),
(85, 11, 'Petite', 'es_ES'),
(86, 11, 'Petite', 'es_MX'),
(87, 11, 'Petite', 'pt_PT'),
(88, 11, 'Petite', 'zh_CN'),
(89, 12, 'Regular', 'en_US'),
(90, 12, 'Regular', 'de_DE'),
(91, 12, 'Regular', 'fr_FR'),
(92, 12, 'Regular', 'pl_PL'),
(93, 12, 'Regular', 'es_ES'),
(94, 12, 'Regular', 'es_MX'),
(95, 12, 'Regular', 'pt_PT'),
(96, 12, 'Regular', 'zh_CN'),
(97, 13, 'Tall', 'en_US'),
(98, 13, 'Tall', 'de_DE'),
(99, 13, 'Tall', 'fr_FR'),
(100, 13, 'Tall', 'pl_PL'),
(101, 13, 'Tall', 'es_ES'),
(102, 13, 'Tall', 'es_MX'),
(103, 13, 'Tall', 'pt_PT'),
(104, 13, 'Tall', 'zh_CN'),
(105, 14, 'S', 'en_US'),
(106, 14, 'S', 'de_DE'),
(107, 14, 'S', 'fr_FR'),
(108, 14, 'S', 'pl_PL'),
(109, 14, 'S', 'es_ES'),
(110, 14, 'S', 'es_MX'),
(111, 14, 'S', 'pt_PT'),
(112, 14, 'S', 'zh_CN'),
(113, 15, 'M', 'en_US'),
(114, 15, 'M', 'de_DE'),
(115, 15, 'M', 'fr_FR'),
(116, 15, 'M', 'pl_PL'),
(117, 15, 'M', 'es_ES'),
(118, 15, 'M', 'es_MX'),
(119, 15, 'M', 'pt_PT'),
(120, 15, 'M', 'zh_CN'),
(121, 16, 'L', 'en_US'),
(122, 16, 'L', 'de_DE'),
(123, 16, 'L', 'fr_FR'),
(124, 16, 'L', 'pl_PL'),
(125, 16, 'L', 'es_ES'),
(126, 16, 'L', 'es_MX'),
(127, 16, 'L', 'pt_PT'),
(128, 16, 'L', 'zh_CN'),
(129, 17, 'XL', 'en_US'),
(130, 17, 'XL', 'de_DE'),
(131, 17, 'XL', 'fr_FR'),
(132, 17, 'XL', 'pl_PL'),
(133, 17, 'XL', 'es_ES'),
(134, 17, 'XL', 'es_MX'),
(135, 17, 'XL', 'pt_PT'),
(136, 17, 'XL', 'zh_CN'),
(137, 18, 'XXL', 'en_US'),
(138, 18, 'XXL', 'de_DE'),
(139, 18, 'XXL', 'fr_FR'),
(140, 18, 'XXL', 'pl_PL'),
(141, 18, 'XXL', 'es_ES'),
(142, 18, 'XXL', 'es_MX'),
(143, 18, 'XXL', 'pt_PT'),
(144, 18, 'XXL', 'zh_CN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_review`
--

CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_review`
--

INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 14, 'nobis repellendus provident', 1, 'Atque autem omnis laboriosam perspiciatis quis maxime. Temporibus neque nihil expedita et. Autem nam commodi hic ea quia.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(2, 5, 6, 'voluptate vel eos', 1, 'Numquam repellendus ut consequatur mollitia qui doloribus est. Labore in vitae minus quae. Consequatur eum quam consequuntur perspiciatis.', 'new', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(3, 13, 9, 'nobis dolorum porro', 3, 'Ea quia laborum et ad et consequuntur qui. Consequuntur accusamus optio in commodi occaecati. Architecto impedit animi ut sint.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(4, 14, 14, 'ratione eaque culpa', 5, 'Quia saepe illo quae repellat sed quia. Sed rerum impedit facilis. Sunt quia odit consectetur quod eligendi velit.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(5, 12, 12, 'est deserunt et', 4, 'Voluptatem velit vitae accusamus quisquam dolores. Quae quia error consectetur aspernatur dolores. Mollitia asperiores fuga unde ab doloribus.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(6, 9, 11, 'modi omnis et', 1, 'Esse enim quae reiciendis hic. Et ducimus fugit accusamus in dolorem. Placeat dolorum quia distinctio omnis id accusamus occaecati provident.', 'new', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(7, 5, 17, 'et veritatis ab', 1, 'Enim officia asperiores perferendis animi possimus. Quidem mollitia suscipit tenetur. Omnis magni quo vel totam accusamus aperiam.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(8, 20, 18, 'reiciendis dolore et', 3, 'Hic quis nemo facilis soluta. Omnis at a aut magnam natus. Animi debitis voluptatem laudantium quia voluptatibus sed quo.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(9, 1, 3, 'dignissimos a ea', 5, 'Adipisci dolores odio eaque est magni occaecati iusto. Qui laborum adipisci eveniet inventore enim id. Non ipsa dolor pariatur quaerat in voluptatem saepe.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(10, 16, 8, 'in veritatis aut', 5, 'Fugit dolorem at odio placeat voluptatem. Ut nam impedit dolor ut cum nesciunt blanditiis. Vitae animi sed sit culpa accusamus tempore.', 'rejected', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(11, 5, 18, 'dolor qui quibusdam', 4, 'Ut mollitia quisquam eius earum ipsa. Doloremque illum possimus porro quo. Sed doloribus omnis dolores vel aut ut.', 'rejected', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(12, 21, 20, 'itaque eveniet aspernatur', 4, 'Nulla expedita excepturi molestiae nesciunt. Reiciendis asperiores iusto fuga. Qui et doloremque quisquam vitae.', 'rejected', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(13, 1, 5, 'consequuntur delectus dolor', 2, 'Est rerum et accusantium et adipisci. Rerum ea voluptas aut eos veritatis. Fuga et sed est doloribus maxime magni consequuntur.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(14, 17, 21, 'ut perferendis molestias', 3, 'Modi nihil est est at vel sit. Fugit saepe qui incidunt rerum aliquid labore. Nostrum et dolorem voluptas esse.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(15, 8, 13, 'occaecati soluta ratione', 5, 'Harum ut vel distinctio consequatur. Vero exercitationem est ipsa impedit incidunt sed sed. Rerum at quae voluptates deserunt praesentium hic cumque.', 'rejected', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(16, 2, 16, 'tenetur animi necessitatibus', 1, 'Quia cupiditate qui vel asperiores corrupti at ad. Reiciendis a praesentium quisquam. Qui asperiores et mollitia id autem dolor ipsum.', 'rejected', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(17, 11, 12, 'quisquam et minima', 1, 'Voluptatem ut possimus magni. Autem unde dolor perspiciatis a eius est provident. Reprehenderit quis et culpa non facilis reiciendis.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(18, 3, 11, 'culpa harum ut', 3, 'Nihil dignissimos consequatur dolore possimus cum. Nulla sint assumenda aliquid aliquam eum amet architecto veniam. Autem beatae iusto dolore rerum omnis id.', 'new', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(19, 17, 20, 'blanditiis esse deleniti', 3, 'Quis quia et aut ullam asperiores. Cupiditate consequatur dolor accusantium molestiae cupiditate dolore animi. Natus dolorem odio dolorum non velit eveniet.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(20, 19, 9, 'non dignissimos qui', 4, 'Nobis odio voluptatibus vero molestiae illo. Molestias voluptatem omnis ab. Eum iusto veniam et vero eaque.', 'accepted', '2022-01-08 15:30:45', '2022-01-08 15:30:45'),
(21, 17, 12, 'minus sint aut', 4, 'Qui ut alias rerum temporibus. Aut voluptatem quibusdam maiores quaerat aut in quod. Ut facilis itaque aspernatur odit delectus accusamus.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(22, 20, 10, 'provident totam quam', 3, 'Autem quasi aliquam nemo cupiditate voluptas velit. Sunt est autem aut deserunt vel. Vero in non accusamus sint blanditiis voluptatem et sunt.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(23, 14, 12, 'distinctio voluptate accusamus', 3, 'Quia necessitatibus omnis alias maxime consectetur aut odit sunt. Eaque excepturi unde voluptas distinctio aspernatur. Qui iusto dignissimos eos et non.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(24, 5, 19, 'enim magni qui', 3, 'In corporis numquam explicabo omnis. Saepe sit sunt velit ea. Sed et corrupti id qui et ipsa tempore.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(25, 16, 10, 'fuga voluptatem ex', 3, 'Dolor voluptatibus doloremque dolor aspernatur aut. Officia ipsam perspiciatis corporis aut. Eligendi eum assumenda animi autem illum maxime sit eligendi.', 'new', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(26, 13, 11, 'facere quo quia', 3, 'Velit quidem rerum maiores sed. Iusto illo dolor rerum eum non distinctio. Alias id consequatur eos sit.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(27, 19, 12, 'rerum repellat expedita', 2, 'Commodi deserunt ex voluptatem quas voluptatem. Architecto autem ad aut recusandae repudiandae quia. Architecto autem reiciendis voluptatum consequatur ut non quibusdam.', 'new', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(28, 15, 12, 'eligendi ratione minus', 3, 'Beatae id consequatur accusantium quibusdam provident quia. Assumenda aperiam vel et at optio. Consequatur minus ut labore eius autem non est.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(29, 13, 18, 'et et odio', 4, 'Sed aut consequatur debitis. Quasi similique voluptates tempora voluptate pariatur labore. Accusantium et et omnis.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(30, 8, 6, 'occaecati qui ducimus', 4, 'Exercitationem nihil modi omnis aut numquam. Sint commodi soluta consequatur quis ut nemo aut. Et fugiat omnis architecto aut et voluptatem voluptatem.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(31, 14, 13, 'error et ipsum', 1, 'Voluptatem nostrum magnam in perferendis omnis accusantium tempora pariatur. Nostrum omnis eveniet non ut. Qui quisquam modi odit est ut architecto et.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(32, 21, 1, 'enim omnis modi', 4, 'Earum id voluptas et sed saepe ut eum. Rerum fugit eaque molestias quo. Eos tenetur consequatur dolor impedit cum voluptatem.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(33, 13, 15, 'et dicta alias', 3, 'Repellendus quisquam totam hic harum earum. Aut nobis sint quam. Distinctio deserunt rerum officiis fugit.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(34, 3, 11, 'et qui praesentium', 2, 'Laudantium ipsum voluptates sequi culpa. Sit magni in blanditiis fugiat enim fugit quo. Animi molestiae facilis dolores modi aut.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(35, 11, 21, 'animi et velit', 2, 'Qui dolor dolorum labore aut aspernatur sint. Ex molestiae officiis quia unde. Et consequatur quisquam qui amet odit et.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(36, 3, 9, 'facilis vero eaque', 3, 'Voluptatem esse nostrum eveniet non et. Fugit molestiae ipsum explicabo temporibus earum odio. Aut unde voluptas sequi vel enim.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(37, 19, 16, 'tempora et et', 4, 'Enim et doloremque quia reprehenderit quia ea quis. Beatae quaerat molestiae doloremque animi repellendus. Nisi aut commodi et ipsam ipsum est excepturi.', 'accepted', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(38, 9, 15, 'magnam non molestiae', 1, 'Adipisci pariatur pariatur accusamus neque ratione voluptatibus saepe. Delectus est perspiciatis repellat non. Deleniti beatae esse qui corporis qui quaerat.', 'rejected', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(39, 16, 2, 'dolor repellendus quam', 1, 'Nemo autem et non odio enim accusantium natus. Sint inventore molestiae aliquam tempore iste earum. Non sint non eum rem nostrum vel vel corporis.', 'new', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(40, 14, 9, 'libero numquam est', 2, 'Numquam quas reprehenderit tenetur facilis. Aut et officiis accusamus sed voluptatem error. Unde maxime debitis at perferendis deserunt ut.', 'new', '2022-01-08 15:30:46', '2022-01-08 15:30:46'),
(41, 14, 22, 'super', 5, 'super', 'new', '2022-01-08 16:12:35', '2022-01-08 16:12:35'),
(42, 14, 1, 'test 2', 5, 'test 2', 'accepted', '2022-01-15 16:48:29', '2022-01-15 16:48:29'),
(43, 3, 1, 'test 2', 5, 'test', 'accepted', '2022-01-15 18:04:14', '2022-01-15 18:04:16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_taxon`
--

CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_taxon`
--

INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
(1, 1, 2, 0),
(2, 1, 4, 0),
(3, 2, 2, 1),
(4, 2, 4, 1),
(5, 3, 2, 2),
(6, 3, 4, 2),
(7, 4, 2, 3),
(8, 4, 3, 0),
(9, 5, 2, 4),
(10, 5, 3, 1),
(11, 6, 2, 5),
(12, 6, 3, 2),
(13, 7, 5, 0),
(14, 7, 7, 0),
(15, 8, 5, 1),
(16, 8, 6, 0),
(17, 9, 5, 2),
(18, 9, 7, 1),
(19, 10, 5, 3),
(20, 10, 6, 1),
(21, 11, 8, 0),
(22, 12, 8, 1),
(23, 13, 8, 2),
(24, 14, 9, 0),
(25, 14, 10, 0),
(26, 15, 9, 1),
(27, 15, 10, 1),
(28, 16, 9, 2),
(29, 16, 10, 2),
(30, 17, 9, 3),
(31, 17, 10, 3),
(32, 18, 9, 4),
(33, 18, 11, 0),
(34, 19, 9, 5),
(35, 19, 11, 1),
(36, 20, 9, 6),
(37, 20, 11, 2),
(38, 21, 9, 7),
(39, 21, 11, 3),
(40, 22, 2, 6),
(41, 22, 12, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_translation`
--

CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(1, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'en_US'),
(2, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'de_DE'),
(3, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'fr_FR'),
(4, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'pl_PL'),
(5, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'es_ES'),
(6, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'es_MX'),
(7, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'pt_PT'),
(8, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Nihil esse ex maxime et praesentium. Dicta voluptates pariatur consequuntur ea consequatur. Corrupti cumque ut aut occaecati voluptatem quia. Labore a fuga earum qui natus eum.\n\nOmnis officiis adipisci nostrum sed consequatur quod nihil. Et ab aliquid praesentium expedita iste. Voluptatem aut harum laboriosam quo voluptatem.\n\nEt et ipsum et. Laudantium magnam distinctio dolorum dolores ullam rerum vero. Nam dolores quia et veniam nihil. Enim adipisci accusantium eos commodi delectus aut voluptatibus.', NULL, NULL, 'Ducimus expedita reiciendis iusto vitae. Debitis beatae quod modi maxime. Et voluptatem reiciendis qui.', 'zh_CN'),
(9, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'en_US'),
(10, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'de_DE'),
(11, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'fr_FR'),
(12, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'pl_PL'),
(13, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'es_ES'),
(14, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'es_MX'),
(15, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'pt_PT'),
(16, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Praesentium quia ut totam iure voluptas. Commodi rerum nemo natus qui possimus qui dolorem est. Sit ut et iusto sint dolorem sunt.\n\nUllam nam cumque enim occaecati voluptatem et accusamus. Autem placeat odio et molestiae qui voluptas. Sapiente alias minima commodi cum at. Voluptatem delectus ad nisi et aperiam in sint perferendis.\n\nProvident corrupti atque sit facere et. Ducimus eligendi fugit accusantium. Sit vel accusantium consequatur expedita dolor deleniti amet quam. Voluptatem officia dolorem qui natus quod rem fuga aut. Aut sint eius aliquid et molestias.', NULL, NULL, 'Qui nobis tenetur itaque nihil ipsam ut porro repellendus. Dolores dolores cum earum consequatur et vero. Eveniet et laudantium earum incidunt voluptatem.', 'zh_CN'),
(17, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'en_US'),
(18, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'de_DE'),
(19, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'fr_FR'),
(20, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'pl_PL'),
(21, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'es_ES'),
(22, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'es_MX'),
(23, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'pt_PT'),
(24, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Ipsam omnis ex illum omnis quia. Facilis et omnis dolor voluptates omnis quod quam. Delectus et soluta totam. Autem et aut voluptatibus consequatur. Delectus atque qui dolores incidunt modi.\n\nAd perspiciatis qui omnis sunt et. Sed rerum eaque ut aut debitis. Aspernatur aliquid nihil accusamus pariatur. Sed ut perspiciatis voluptatum porro ad.\n\nSuscipit nihil dolor aut nulla distinctio nisi. Amet deserunt facilis minima odit dolores quo. Officia numquam cumque sit doloribus qui.', NULL, NULL, 'Commodi mollitia illum odit ducimus. Nemo nulla nulla excepturi illo et cumque et. Quam harum minima est saepe eum blanditiis qui.', 'zh_CN'),
(25, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'en_US'),
(26, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'de_DE'),
(27, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'fr_FR'),
(28, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'pl_PL'),
(29, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'es_ES'),
(30, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'es_MX'),
(31, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'pt_PT'),
(32, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Recusandae qui recusandae perspiciatis unde et. Ab non voluptatibus maiores dolorem iure repellendus. Rerum illo quo rem maiores doloremque voluptates. Distinctio ipsum molestias qui dicta. Corrupti qui pariatur excepturi vel reiciendis laudantium.\n\nMolestias eveniet hic sed quibusdam quia tempore rerum. Dolorum at inventore reiciendis iste iste quos magni. Voluptate officia ea numquam quo et et. Ipsam dolorem nesciunt qui.\n\nCorporis minima debitis ut delectus. Incidunt dolore omnis dolores nostrum illum quis est. Cupiditate non facilis numquam dolor nemo aut. Inventore sequi officia amet quidem architecto non.', NULL, NULL, 'Occaecati fugit ad cumque labore. Ducimus est id corrupti. Nemo repudiandae deserunt itaque illum facere.', 'zh_CN'),
(33, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'en_US'),
(34, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'de_DE'),
(35, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'fr_FR'),
(36, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'pl_PL'),
(37, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'es_ES'),
(38, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'es_MX'),
(39, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'pt_PT'),
(40, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Suscipit aliquid enim est odit maiores magni quia provident. Et voluptas voluptas adipisci molestiae aliquid tempore facilis. Minus veritatis ut odio hic. Rerum quibusdam expedita quaerat qui recusandae accusantium ut.\n\nMolestiae ea laboriosam provident perspiciatis vel in voluptatem. Quo praesentium labore consequatur. Soluta dolores reprehenderit veniam explicabo dicta voluptas est.\n\nIllum corrupti ut sequi repellendus alias quia. Quae qui et aut dolorem totam. Quidem libero hic culpa voluptatum nihil fuga ad.', NULL, NULL, 'Numquam et voluptatem harum eligendi molestias est aut. Velit quis quia deserunt excepturi esse ut.', 'zh_CN'),
(41, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'en_US'),
(42, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'de_DE'),
(43, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'fr_FR'),
(44, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'pl_PL'),
(45, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'es_ES'),
(46, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'es_MX'),
(47, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'pt_PT'),
(48, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Ipsam illo reiciendis rerum nihil. Eveniet illum illum est quis. Incidunt culpa nostrum voluptatibus labore dignissimos ut vel. Quibusdam labore odio accusantium ipsam. Voluptatem rerum voluptas quo molestiae accusamus.\n\nConsequuntur dolorem dolores labore voluptatem. Aspernatur est atque occaecati labore magni. Rem alias cum recusandae ut odio nulla eligendi architecto. Dolor quia temporibus aspernatur soluta.\n\nOdio cum earum rerum sequi provident quia impedit architecto. Et sed quia unde est. Explicabo et consequuntur consequatur voluptatum aliquid est doloribus. Consectetur in praesentium necessitatibus consectetur.', NULL, NULL, 'Labore minima eius enim esse. Animi asperiores modi occaecati molestiae. Impedit facere et ut quo repudiandae perspiciatis.', 'zh_CN'),
(49, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'en_US'),
(50, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'de_DE'),
(51, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'fr_FR'),
(52, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'pl_PL'),
(53, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'es_ES'),
(54, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'es_MX'),
(55, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'pt_PT'),
(56, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Ut numquam adipisci eum ut qui culpa necessitatibus. Voluptas aut enim quaerat quia soluta ut. Maiores velit et animi rerum assumenda. Ab voluptatem maiores saepe aperiam occaecati eum.\n\nPorro voluptatem pariatur at et rerum. Fuga id qui autem beatae qui et. Molestias facilis et laboriosam tempore corporis. Omnis aut magnam cum quos consequatur.\n\nAliquid quasi incidunt velit qui magni quae voluptas. Sint corporis repellendus molestias rerum sunt. Atque soluta facere recusandae dolor qui dignissimos voluptatem laborum. Provident placeat recusandae iure autem ut quas neque.', NULL, NULL, 'Nemo fuga ipsa ad omnis qui impedit. Enim at odit iste sit maiores a. Debitis consequatur pariatur quaerat qui.', 'zh_CN'),
(57, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'en_US'),
(58, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'de_DE'),
(59, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'fr_FR'),
(60, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'pl_PL'),
(61, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'es_ES'),
(62, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'es_MX'),
(63, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'pt_PT'),
(64, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Alias qui quod culpa autem aliquid quis. Non consequatur quisquam repudiandae corporis commodi numquam. Corporis minima tempora maxime id quae.\n\nQuae iste cupiditate ut impedit mollitia fuga asperiores rerum. Nostrum at est molestias at.\n\nError sequi natus recusandae dolores fugit vel dolorem. Corrupti quod voluptatem iusto tenetur fuga amet. Omnis ut et ipsa sit.', NULL, NULL, 'Nihil voluptate molestias blanditiis autem tenetur qui eos. Et praesentium adipisci error iusto. Autem commodi nostrum voluptas totam.', 'zh_CN'),
(65, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'en_US'),
(66, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'de_DE');
INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(67, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'fr_FR'),
(68, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'pl_PL'),
(69, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'es_ES'),
(70, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'es_MX'),
(71, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'pt_PT'),
(72, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Quia facilis sed quod quas rerum quia impedit. Quaerat laboriosam quis aperiam quisquam. Aspernatur incidunt iste quia vitae et.\r\n\r\nCum rem ut ratione repellendus assumenda fuga rerum praesentium. Error quis debitis quia aut.\r\n\r\nEst voluptate ipsum voluptatem dolores. Repudiandae natus eos et. Sed ab consequatur et ullam fugit qui. Delectus ut qui natus consequatur numquam amet et.', NULL, NULL, 'Commodi ut commodi et animi. Dolore repellat exercitationem suscipit enim iure sapiente non. Aut doloremque ratione repellendus repudiandae et ipsum et.', 'zh_CN'),
(73, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'en_US'),
(74, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'de_DE'),
(75, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'fr_FR'),
(76, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'pl_PL'),
(77, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'es_ES'),
(78, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'es_MX'),
(79, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'pt_PT'),
(80, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Qui necessitatibus quasi natus quas ipsam quo. Dolor in et qui possimus repellendus quia. Vel amet dolor suscipit qui numquam. Et dolorem quam accusantium soluta.\n\nCorrupti fuga blanditiis repudiandae porro placeat ut. Ea dolor expedita impedit quia. Saepe officia ipsam nostrum et facere.\n\nVel rerum numquam dolores quod et sint reiciendis. Reprehenderit aperiam commodi vel ratione unde ad.', NULL, NULL, 'Earum velit rerum ipsum doloremque. Explicabo aliquid at dolorem nam voluptatem nemo voluptates ratione. Optio ut similique fugiat qui ut. Recusandae ad nesciunt tempore aliquam fugit.', 'zh_CN'),
(81, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'en_US'),
(82, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'de_DE'),
(83, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'fr_FR'),
(84, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'pl_PL'),
(85, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'es_ES'),
(86, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'es_MX'),
(87, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'pt_PT'),
(88, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Eius nesciunt aut necessitatibus necessitatibus. Et et tenetur qui alias maiores. Et esse repellendus dolore dolores. Qui maiores sed numquam rerum dolorem.\n\nQuo vel molestiae nostrum quos libero. Porro magni recusandae accusamus doloribus rerum omnis. Quis quibusdam tempore iure laudantium fuga voluptates accusantium vero. Asperiores aut pariatur sed qui dolores.\n\nModi vitae ducimus delectus adipisci. Inventore vitae quidem autem quos culpa quas rerum. Enim sed iste pariatur ipsam rerum sunt qui saepe. Dignissimos incidunt explicabo totam et est neque est.', NULL, NULL, 'Tenetur et magnam culpa totam. Perspiciatis repellendus quas minima esse deserunt nisi. Odit expedita alias ut aut est.', 'zh_CN'),
(89, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'en_US'),
(90, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'de_DE'),
(91, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'fr_FR'),
(92, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'pl_PL'),
(93, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'es_ES'),
(94, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'es_MX'),
(95, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'pt_PT'),
(96, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Nobis eos mollitia voluptatem aperiam sit quae voluptas atque. Et minus quo quo vero dolorem sapiente qui qui. Consectetur quasi expedita eum ad et.\n\nAd fugiat aut pariatur. Natus quisquam quia ab nihil quae est et. Atque ut eos facere sed ipsa. Facere deserunt veritatis aliquid voluptatem.\n\nFugiat omnis rerum magni impedit. Error omnis et dolores doloribus aperiam autem quia corporis. Sed nostrum est aut ut. Nam dicta accusantium corporis impedit.', NULL, NULL, 'Aut autem illo quis rem. Corrupti rem nemo maxime tempora. Sed reprehenderit incidunt quis at et. Doloribus aperiam voluptatem velit voluptate recusandae. Et cupiditate quas praesentium ea nemo natus nobis tenetur.', 'zh_CN'),
(97, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'en_US'),
(98, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'de_DE'),
(99, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'fr_FR'),
(100, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'pl_PL'),
(101, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'es_ES'),
(102, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'es_MX'),
(103, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'pt_PT'),
(104, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Porro harum et eaque et maiores enim. Quis in dolorem sint unde quam autem qui consequatur. Quos illo laboriosam sed quis. Sunt nam voluptatem fugit adipisci velit in officiis quas. Rerum deleniti et assumenda minima nemo illo nostrum.\n\nAut aut consequatur veritatis blanditiis expedita id. Dicta ipsam tenetur sint. Expedita qui aut qui ea distinctio illo voluptatum.\n\nAccusamus error voluptatem voluptates voluptate optio aut. Voluptatem aspernatur rem autem magni beatae perferendis ducimus ea. Nostrum rem porro qui laudantium sunt quam qui. Eum cupiditate dolor dolores doloremque.', NULL, NULL, 'Quia voluptatibus facilis voluptates nostrum perferendis nihil quae quo. Et quia id magnam corrupti repellat tenetur atque. Repudiandae cupiditate dolor laboriosam consequatur ex rerum. Rem mollitia et pariatur dolores sunt sit suscipit.', 'zh_CN'),
(105, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'en_US'),
(106, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'de_DE'),
(107, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'fr_FR'),
(108, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'pl_PL'),
(109, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'es_ES'),
(110, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'es_MX'),
(111, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'pt_PT'),
(112, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Officia aut dignissimos quos sed. Ut harum aperiam quasi laboriosam error. Consectetur quos architecto consequatur aliquid fugit nesciunt aliquam.\n\nTempore sapiente porro sint eaque eos magnam. Quia sed ut ab at eveniet corrupti eum. Eum maxime iusto quibusdam ut. Enim ad commodi sit placeat vel laboriosam sit.\n\nNumquam perspiciatis deleniti qui recusandae sed sed provident. Qui laborum possimus nostrum quia doloribus est qui. Ex veritatis mollitia molestiae aut fugit voluptatem explicabo sequi. Numquam iure earum necessitatibus maxime quasi. Quia impedit molestiae dolorem quisquam aspernatur sunt quia dolor.', NULL, NULL, 'Aut repudiandae voluptatem animi impedit velit. Qui sit error id quo. Perspiciatis fugiat rerum eveniet adipisci.', 'zh_CN'),
(113, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'en_US'),
(114, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'de_DE'),
(115, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'fr_FR'),
(116, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'pl_PL'),
(117, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'es_ES'),
(118, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'es_MX'),
(119, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'pt_PT'),
(120, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magni beatae aliquam facere vero fuga et. Aut eos non saepe doloremque. Ullam id minus rem labore porro.\n\nQuibusdam eos quia quia alias dicta. Voluptates est unde suscipit sunt. Dolore non asperiores quas temporibus architecto quo omnis. Iste distinctio dolores placeat tempora nam aut rerum assumenda. Iste architecto quia ullam illum minima placeat eum.\n\nEt nisi aliquam porro sint veritatis ut. Sapiente quia odit quaerat ut. Qui recusandae minus et. Dolorem dolorem quos perspiciatis dolorum.', NULL, NULL, 'Tempora ipsa illum rem tempora beatae quidem. Earum enim a in. Velit totam reprehenderit temporibus asperiores ea voluptas.', 'zh_CN'),
(121, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'en_US'),
(122, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'de_DE'),
(123, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'fr_FR'),
(124, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'pl_PL'),
(125, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'es_ES'),
(126, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'es_MX'),
(127, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'pt_PT'),
(128, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Quia repellat architecto nulla repudiandae magni eum. Reiciendis ut rerum ratione. Quae neque excepturi pariatur velit maxime laudantium.\n\nAdipisci omnis quasi ut ut dolor cumque ipsam. Est velit quidem dolores quis. Harum accusamus ut nisi sit culpa.\n\nEt quo id itaque dolorem enim voluptatem. Non occaecati blanditiis ea corporis excepturi possimus ipsam. Aut tempore eum fuga ipsum dolorem. Numquam iste consequatur aut sequi.', NULL, NULL, 'Et non qui vero qui. A rem aut sit quo dolores amet dolores optio. Sapiente asperiores error sunt distinctio natus tempore unde. Animi cumque et consectetur ut suscipit voluptatem quas.', 'zh_CN'),
(129, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'en_US'),
(130, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'de_DE'),
(131, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'fr_FR');
INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(132, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'pl_PL'),
(133, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'es_ES'),
(134, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'es_MX'),
(135, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'pt_PT'),
(136, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Quos quam reprehenderit quod laborum aut. Cupiditate reiciendis hic at pariatur vero pariatur. Impedit odit officia quibusdam cupiditate ut.\n\nEt ut aperiam et pariatur. Vitae corporis qui et alias saepe ut nihil. Dolorum sequi sunt dolores illo laboriosam ad placeat iste.\n\nExplicabo perspiciatis nostrum autem ratione quos pariatur. Magnam impedit atque vero autem repudiandae omnis temporibus at. Occaecati temporibus aliquid suscipit est enim sed unde.', NULL, NULL, 'Possimus id labore est magni officiis ipsum nulla. Quae ut itaque cumque ea molestiae eum dolores. Voluptatem quis odio ducimus omnis est nihil. Corporis ab necessitatibus ullam doloribus.', 'zh_CN'),
(137, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'en_US'),
(138, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'de_DE'),
(139, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'fr_FR'),
(140, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'pl_PL'),
(141, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'es_ES'),
(142, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'es_MX'),
(143, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'pt_PT'),
(144, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Doloremque quisquam quia aliquam. Tenetur soluta ipsum inventore consequatur. Facere illo dicta a cupiditate incidunt amet et. Corrupti deserunt non laborum exercitationem et provident in.\n\nSint sapiente sunt distinctio quia tenetur iure odio dolorum. Dolor voluptatem dolor architecto qui sed doloribus. Ex atque explicabo dolor voluptate voluptatem consequatur et. Et pariatur id ipsum sint voluptatibus et voluptatibus. Perspiciatis ad maiores ut porro nisi.\n\nEt iure laborum quod est molestiae sit. Eius non commodi exercitationem. Iusto aut quidem aperiam eaque possimus dolor ullam. Voluptatum est et aperiam. Voluptate ea placeat rerum vitae autem fugit.', NULL, NULL, 'Eveniet omnis tempore et. Numquam ducimus quae tempore laboriosam in voluptas quis. Sit nobis rem illo officiis sequi delectus maiores. Et tenetur cupiditate at debitis quia suscipit.', 'zh_CN'),
(145, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'en_US'),
(146, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'de_DE'),
(147, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'fr_FR'),
(148, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'pl_PL'),
(149, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'es_ES'),
(150, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'es_MX'),
(151, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'pt_PT'),
(152, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Officiis eveniet ut sit quaerat veritatis maxime deserunt. Veniam aut nostrum illum in. Occaecati autem praesentium occaecati architecto dolorum sunt vel.\n\nIpsa quia qui recusandae et. Iste harum provident quis ut dolor repellendus. Aut est libero ipsa libero molestias.\n\nQuis qui hic rerum atque. In nihil optio optio. Non reprehenderit voluptatem aliquam ut modi blanditiis qui.', NULL, NULL, 'Voluptatem quaerat accusantium ut repellat dolores voluptatem. Dolor quae tempora perferendis voluptatibus vero et. Dolorem laudantium sed explicabo est. Amet et sed mollitia eius fugit voluptas vel.', 'zh_CN'),
(153, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'en_US'),
(154, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'de_DE'),
(155, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'fr_FR'),
(156, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'pl_PL'),
(157, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'es_ES'),
(158, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'es_MX'),
(159, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'pt_PT'),
(160, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Molestiae sapiente qui repellat. Est sequi et necessitatibus hic qui. Nihil et vel nobis et sint corporis optio. Autem exercitationem blanditiis qui et corrupti.\r\n\r\nInventore qui perspiciatis similique blanditiis et ipsum. Cupiditate quos delectus beatae quod tempora et. Accusantium provident amet minima numquam repellendus dignissimos. Occaecati natus in rerum in.\r\n\r\nDolore dolor unde suscipit ut voluptas et. Repellendus ratione fugit ut qui odio temporibus. Voluptates minima voluptatem libero blanditiis minus voluptas illo rerum.', NULL, NULL, 'Dolor qui et alias illum odit enim repellendus. Incidunt nobis sequi ullam rerum nulla inventore. Ut consequuntur odit quo molestiae quas. Deleniti architecto quia asperiores fuga. Totam delectus repudiandae et debitis saepe.', 'zh_CN'),
(161, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'en_US'),
(162, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'de_DE'),
(163, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'fr_FR'),
(164, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'pl_PL'),
(165, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'es_ES'),
(166, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'es_MX'),
(167, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'pt_PT'),
(168, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Voluptatem sint sit quis enim. Amet ut cupiditate fugiat qui a sit ullam.\n\nAnimi omnis adipisci aut eos et. Nulla et repudiandae tenetur fugit facere mollitia. Et molestiae mollitia consequatur ipsam. Quis quisquam consequuntur architecto.\n\nUt qui repellendus iure id. Soluta eaque dolores nisi enim et. Minima reprehenderit odit in saepe consequatur.', NULL, NULL, 'Est fugiat pariatur reiciendis quasi voluptas assumenda alias. Amet et totam eligendi architecto odio. Harum soluta maxime nihil architecto.', 'zh_CN'),
(169, 22, 'SyliusOnlineCourseT-shirt', 'syliusonlinecourset-shirt', NULL, NULL, NULL, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_variant`
--

CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int(11) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_variant`
--

INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `position`, `shipping_required`, `version`, `enabled`) VALUES
(1, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(2, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 5, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(3, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 6, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(4, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 0, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(5, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 0, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(6, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 9, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(7, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 8, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(8, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 8, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(9, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 7, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(10, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(11, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(12, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 5, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(13, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(14, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 4, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(15, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 5, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(16, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 9, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(17, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 3, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(18, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(19, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 7, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(20, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(21, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 3, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(22, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 8, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(23, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 1, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(24, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 1, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(25, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(26, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-0', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(27, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-1', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 2, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(28, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-2', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 4, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(29, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-3', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 1, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(30, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-4', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(31, 7, 2, NULL, 'Knitted_burgundy_winter_cap-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(32, 8, 2, NULL, 'Knitted_wool_blend_green_cap-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(33, 9, 2, NULL, 'Knitted_white_pompom_cap-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(34, 10, 2, NULL, 'Cashmere_blend_violet_beanie-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(35, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(36, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 8, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(37, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(38, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(39, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(40, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-5', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1),
(41, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-6', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1),
(42, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-7', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1),
(43, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-8', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1),
(44, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-9', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1),
(45, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-10', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1),
(46, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-11', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1),
(47, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-12', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1),
(48, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-13', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1),
(49, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-14', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1),
(50, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(51, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(52, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(53, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(54, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(55, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-5', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1),
(56, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-6', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1),
(57, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-7', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1),
(58, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-8', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1),
(59, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-9', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1),
(60, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-10', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1),
(61, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-11', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1),
(62, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-12', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1),
(63, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-13', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 8, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1),
(64, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-14', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1),
(65, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(66, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(67, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(68, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(69, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(70, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-5', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1),
(71, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-6', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1),
(72, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-7', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1),
(73, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-8', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1),
(74, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-9', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1),
(75, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-10', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1),
(76, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-11', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1),
(77, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-12', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1),
(78, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-13', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1),
(79, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-14', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1),
(80, 14, 1, NULL, '911M_regular_fit_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(81, 14, 1, NULL, '911M_regular_fit_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(82, 14, 1, NULL, '911M_regular_fit_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(83, 14, 1, NULL, '911M_regular_fit_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(84, 14, 1, NULL, '911M_regular_fit_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(85, 15, 1, NULL, '330M_slim_fit_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(86, 15, 1, NULL, '330M_slim_fit_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(87, 15, 1, NULL, '330M_slim_fit_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(88, 15, 1, NULL, '330M_slim_fit_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(89, 15, 1, NULL, '330M_slim_fit_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(90, 16, 1, NULL, '990M_regular_fit_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(91, 16, 1, NULL, '990M_regular_fit_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(92, 16, 1, NULL, '990M_regular_fit_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(93, 16, 1, NULL, '990M_regular_fit_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(94, 16, 1, NULL, '990M_regular_fit_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(95, 17, 1, NULL, '007M_black_elegance_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(96, 17, 1, NULL, '007M_black_elegance_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 7, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(97, 17, 1, NULL, '007M_black_elegance_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(98, 17, 1, NULL, '007M_black_elegance_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(99, 17, 1, NULL, '007M_black_elegance_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(100, 18, 1, NULL, '727F_patched_cropped_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(101, 18, 1, NULL, '727F_patched_cropped_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(102, 18, 1, NULL, '727F_patched_cropped_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(103, 18, 1, NULL, '727F_patched_cropped_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(104, 18, 1, NULL, '727F_patched_cropped_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(105, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(106, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(107, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(108, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(109, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(110, 20, 1, NULL, '000F_office_grey_jeans-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 8, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(111, 20, 1, NULL, '000F_office_grey_jeans-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(112, 20, 1, NULL, '000F_office_grey_jeans-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 1, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(113, 20, 1, NULL, '000F_office_grey_jeans-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(114, 20, 1, NULL, '000F_office_grey_jeans-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 5, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(115, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-0', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
(116, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-1', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(117, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-2', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 6, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
(118, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-3', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1),
(119, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-4', '2022-01-08 15:30:45', '2022-01-08 15:30:45', 0, 3, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1),
(120, 22, 1, NULL, 'SYLIUS_ONLINE_COURSE_T_SHIRT', '2022-01-15 18:12:40', '2022-01-15 18:12:42', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_variant_option_value`
--

CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_variant_option_value`
--

INSERT INTO `sylius_product_variant_option_value` (`variant_id`, `option_value_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 1),
(27, 2),
(28, 3),
(29, 4),
(30, 5),
(35, 6),
(35, 11),
(36, 6),
(36, 12),
(37, 6),
(37, 13),
(38, 7),
(38, 11),
(39, 7),
(39, 12),
(40, 7),
(40, 13),
(41, 8),
(41, 11),
(42, 8),
(42, 12),
(43, 8),
(43, 13),
(44, 9),
(44, 11),
(45, 9),
(45, 12),
(46, 9),
(46, 13),
(47, 10),
(47, 11),
(48, 10),
(48, 12),
(49, 10),
(49, 13),
(50, 6),
(50, 11),
(51, 6),
(51, 12),
(52, 6),
(52, 13),
(53, 7),
(53, 11),
(54, 7),
(54, 12),
(55, 7),
(55, 13),
(56, 8),
(56, 11),
(57, 8),
(57, 12),
(58, 8),
(58, 13),
(59, 9),
(59, 11),
(60, 9),
(60, 12),
(61, 9),
(61, 13),
(62, 10),
(62, 11),
(63, 10),
(63, 12),
(64, 10),
(64, 13),
(65, 6),
(65, 11),
(66, 6),
(66, 12),
(67, 6),
(67, 13),
(68, 7),
(68, 11),
(69, 7),
(69, 12),
(70, 7),
(70, 13),
(71, 8),
(71, 11),
(72, 8),
(72, 12),
(73, 8),
(73, 13),
(74, 9),
(74, 11),
(75, 9),
(75, 12),
(76, 9),
(76, 13),
(77, 10),
(77, 11),
(78, 10),
(78, 12),
(79, 10),
(79, 13),
(80, 14),
(81, 15),
(82, 16),
(83, 17),
(84, 18),
(85, 14),
(86, 15),
(87, 16),
(88, 17),
(89, 18),
(90, 14),
(91, 15),
(92, 16),
(93, 17),
(94, 18),
(95, 14),
(96, 15),
(97, 16),
(98, 17),
(99, 18),
(100, 14),
(101, 15),
(102, 16),
(103, 17),
(104, 18),
(105, 14),
(106, 15),
(107, 16),
(108, 17),
(109, 18),
(110, 14),
(111, 15),
(112, 16),
(113, 17),
(114, 18),
(115, 14),
(116, 15),
(117, 16),
(118, 17),
(119, 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_product_variant_translation`
--

CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_product_variant_translation`
--

INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'S', 'en_US'),
(2, 2, 'M', 'en_US'),
(3, 3, 'L', 'en_US'),
(4, 4, 'XL', 'en_US'),
(5, 5, 'XXL', 'en_US'),
(6, 6, 'S', 'en_US'),
(7, 7, 'M', 'en_US'),
(8, 8, 'L', 'en_US'),
(9, 9, 'XL', 'en_US'),
(10, 10, 'XXL', 'en_US'),
(11, 11, 'S', 'en_US'),
(12, 12, 'M', 'en_US'),
(13, 13, 'L', 'en_US'),
(14, 14, 'XL', 'en_US'),
(15, 15, 'XXL', 'en_US'),
(16, 16, 'S', 'en_US'),
(17, 17, 'M', 'en_US'),
(18, 18, 'L', 'en_US'),
(19, 19, 'XL', 'en_US'),
(20, 20, 'XXL', 'en_US'),
(21, 21, 'S', 'en_US'),
(22, 22, 'M', 'en_US'),
(23, 23, 'L', 'en_US'),
(24, 24, 'XL', 'en_US'),
(25, 25, 'XXL', 'en_US'),
(26, 26, 'S', 'en_US'),
(27, 27, 'M', 'en_US'),
(28, 28, 'L', 'en_US'),
(29, 29, 'XL', 'en_US'),
(30, 30, 'XXL', 'en_US'),
(31, 31, '', 'en_US'),
(32, 32, '', 'en_US'),
(33, 33, NULL, 'en_US'),
(34, 34, '', 'en_US'),
(35, 35, 'S Petite', 'en_US'),
(36, 36, 'S Regular', 'en_US'),
(37, 37, 'S Tall', 'en_US'),
(38, 38, 'M Petite', 'en_US'),
(39, 39, 'M Regular', 'en_US'),
(40, 40, 'M Tall', 'en_US'),
(41, 41, 'L Petite', 'en_US'),
(42, 42, 'L Regular', 'en_US'),
(43, 43, 'L Tall', 'en_US'),
(44, 44, 'XL Petite', 'en_US'),
(45, 45, 'XL Regular', 'en_US'),
(46, 46, 'XL Tall', 'en_US'),
(47, 47, 'XXL Petite', 'en_US'),
(48, 48, 'XXL Regular', 'en_US'),
(49, 49, 'XXL Tall', 'en_US'),
(50, 50, 'S Petite', 'en_US'),
(51, 51, 'S Regular', 'en_US'),
(52, 52, 'S Tall', 'en_US'),
(53, 53, 'M Petite', 'en_US'),
(54, 54, 'M Regular', 'en_US'),
(55, 55, 'M Tall', 'en_US'),
(56, 56, 'L Petite', 'en_US'),
(57, 57, 'L Regular', 'en_US'),
(58, 58, 'L Tall', 'en_US'),
(59, 59, 'XL Petite', 'en_US'),
(60, 60, 'XL Regular', 'en_US'),
(61, 61, 'XL Tall', 'en_US'),
(62, 62, 'XXL Petite', 'en_US'),
(63, 63, 'XXL Regular', 'en_US'),
(64, 64, 'XXL Tall', 'en_US'),
(65, 65, 'S Petite', 'en_US'),
(66, 66, 'S Regular', 'en_US'),
(67, 67, 'S Tall', 'en_US'),
(68, 68, 'M Petite', 'en_US'),
(69, 69, 'M Regular', 'en_US'),
(70, 70, 'M Tall', 'en_US'),
(71, 71, 'L Petite', 'en_US'),
(72, 72, 'L Regular', 'en_US'),
(73, 73, 'L Tall', 'en_US'),
(74, 74, 'XL Petite', 'en_US'),
(75, 75, 'XL Regular', 'en_US'),
(76, 76, 'XL Tall', 'en_US'),
(77, 77, 'XXL Petite', 'en_US'),
(78, 78, 'XXL Regular', 'en_US'),
(79, 79, 'XXL Tall', 'en_US'),
(80, 80, 'S', 'en_US'),
(81, 81, 'M', 'en_US'),
(82, 82, 'L', 'en_US'),
(83, 83, 'XL', 'en_US'),
(84, 84, 'XXL', 'en_US'),
(85, 85, 'S', 'en_US'),
(86, 86, 'M', 'en_US'),
(87, 87, 'L', 'en_US'),
(88, 88, 'XL', 'en_US'),
(89, 89, 'XXL', 'en_US'),
(90, 90, 'S', 'en_US'),
(91, 91, 'M', 'en_US'),
(92, 92, 'L', 'en_US'),
(93, 93, 'XL', 'en_US'),
(94, 94, 'XXL', 'en_US'),
(95, 95, 'S', 'en_US'),
(96, 96, 'M', 'en_US'),
(97, 97, 'L', 'en_US'),
(98, 98, 'XL', 'en_US'),
(99, 99, 'XXL', 'en_US'),
(100, 100, 'S', 'en_US'),
(101, 101, 'M', 'en_US'),
(102, 102, 'L', 'en_US'),
(103, 103, 'XL', 'en_US'),
(104, 104, 'XXL', 'en_US'),
(105, 105, 'S', 'en_US'),
(106, 106, 'M', 'en_US'),
(107, 107, 'L', 'en_US'),
(108, 108, 'XL', 'en_US'),
(109, 109, 'XXL', 'en_US'),
(110, 110, 'S', 'en_US'),
(111, 111, 'M', 'en_US'),
(112, 112, 'L', 'en_US'),
(113, 113, 'XL', 'en_US'),
(114, 114, 'XXL', 'en_US'),
(115, 115, 'S', 'en_US'),
(116, 116, 'M', 'en_US'),
(117, 117, 'L', 'en_US'),
(118, 118, 'XL', 'en_US'),
(119, 119, 'XXL', 'en_US'),
(120, 120, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion`
--

CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion`
--

INSERT INTO `sylius_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 'christmas', 'Christmas', 'Voluptatem in ad molestias non et.', 0, 1, NULL, 0, 1, NULL, NULL, '2022-01-08 15:30:44', '2022-01-08 15:30:44'),
(2, 'new_year', 'New Year', 'Voluptatem in ad molestias non et.', 2, 1, 10, 10, 0, '2022-01-01 15:30:44', '2022-01-15 15:30:44', '2022-01-08 15:30:44', '2022-01-08 15:30:47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion_action`
--

CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion_action`
--

INSERT INTO `sylius_promotion_action` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.14;}'),
(2, 2, 'order_fixed_discount', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:1000;}}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion_channels`
--

CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion_channels`
--

INSERT INTO `sylius_promotion_channels` (`promotion_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion_coupon`
--

CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion_coupon`
--

INSERT INTO `sylius_promotion_coupon` (`id`, `promotion_id`, `code`, `usage_limit`, `used`, `expires_at`, `created_at`, `updated_at`, `per_customer_usage_limit`, `reusable_from_cancelled_orders`) VALUES
(1, 1, 'CHRISTMAS_SALE', 10, 0, '2022-12-24 00:00:00', '2022-01-08 15:30:44', '2022-01-08 15:30:44', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion_order`
--

CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion_order`
--

INSERT INTO `sylius_promotion_order` (`order_id`, `promotion_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_promotion_rule`
--

CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_promotion_rule`
--

INSERT INTO `sylius_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:0;}'),
(2, 2, 'item_total', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:10000;}}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_province`
--

CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipment`
--

CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shipment`
--

INSERT INTO `sylius_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`, `shipped_at`, `adjustments_total`) VALUES
(1, 3, 1, 'shipped', NULL, '2021-04-05 20:52:42', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(2, 3, 2, 'shipped', NULL, '2021-05-07 09:54:44', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(3, 3, 3, 'shipped', NULL, '2021-05-14 01:40:09', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(4, 3, 4, 'shipped', NULL, '2021-05-30 22:00:31', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(5, 3, 5, 'shipped', NULL, '2021-06-24 00:39:20', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(6, 3, 6, 'shipped', NULL, '2021-07-26 09:53:48', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(7, 3, 7, 'shipped', NULL, '2021-08-15 07:26:54', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(8, 3, 8, 'shipped', NULL, '2021-09-14 16:21:46', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(9, 3, 9, 'shipped', NULL, '2021-10-14 15:46:40', '2022-01-08 15:30:46', '2022-01-08 15:30:46', 364),
(10, 3, 10, 'shipped', NULL, '2021-10-15 09:54:21', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 364),
(11, 3, 11, 'shipped', NULL, '2021-12-01 23:36:15', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 364),
(12, 3, 12, 'shipped', NULL, '2021-12-17 17:50:27', '2022-01-08 15:30:47', '2022-01-08 15:30:47', 364),
(13, 3, 13, 'ready', NULL, '2021-03-23 03:26:08', '2022-01-08 15:30:47', NULL, 364),
(14, 3, 14, 'ready', NULL, '2021-03-30 17:25:58', '2022-01-08 15:30:47', NULL, 364),
(15, 3, 15, 'ready', NULL, '2021-04-07 04:59:38', '2022-01-08 15:30:47', NULL, 364),
(16, 3, 16, 'ready', NULL, '2021-05-11 02:27:03', '2022-01-08 15:30:47', NULL, 364),
(17, 3, 17, 'ready', NULL, '2021-05-20 08:14:12', '2022-01-08 15:30:47', NULL, 364),
(18, 3, 18, 'ready', NULL, '2021-06-16 07:21:52', '2022-01-08 15:30:47', NULL, 364),
(19, 3, 19, 'shipped', '123123', '2021-09-13 13:57:06', '2022-01-19 12:27:48', '2022-01-19 12:27:47', 364),
(20, 3, 20, 'shipped', '123123', '2021-10-04 10:43:19', '2022-01-17 17:19:34', '2022-01-17 17:19:34', 364),
(21, 1, 21, 'cart', NULL, '2022-01-22 22:50:52', '2022-01-22 22:50:53', NULL, 500),
(22, 1, 22, 'cart', NULL, '2022-01-23 22:59:05', '2022-01-23 22:59:06', NULL, 500);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipping_category`
--

CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shipping_category`
--

INSERT INTO `sylius_shipping_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HEAVY_OBJECT', 'Heavy Object', NULL, '2022-01-11 14:05:18', '2022-01-11 14:05:19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipping_method`
--

CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shipping_method`
--

INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, NULL, 1, NULL, 'ups', 'a:4:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:824;}s:6:\"weight\";d:1000;s:14:\"above_or_equal\";i:1000;s:5:\"below\";i:500;}', 1, 'weight_based', 1, 0, '2022-01-08 15:30:38', '2022-01-10 18:40:36', NULL),
(2, NULL, 2, NULL, 'dhl_express', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:762;}}', 1, 'flat_rate', 0, 1, '2022-01-08 15:30:38', '2022-01-08 15:30:38', NULL),
(3, NULL, 2, NULL, 'fedex', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:364;}}', 1, 'flat_rate', 1, 2, '2022-01-08 15:30:38', '2022-01-08 15:30:38', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipping_method_channels`
--

CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shipping_method_channels`
--

INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipping_method_rule`
--

CREATE TABLE `sylius_shipping_method_rule` (
  `id` int(11) NOT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shipping_method_translation`
--

CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shipping_method_translation`
--

INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'en_US'),
(2, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'de_DE'),
(3, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'fr_FR'),
(4, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'pl_PL'),
(5, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'es_ES'),
(6, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'es_MX'),
(7, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'pt_PT'),
(8, 1, 'UPS', 'Expedita vitae tempore consequatur voluptas harum non.', 'zh_CN'),
(9, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'en_US'),
(10, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'de_DE'),
(11, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'fr_FR'),
(12, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'pl_PL'),
(13, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'es_ES'),
(14, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'es_MX'),
(15, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'pt_PT'),
(16, 2, 'DHL Express', 'Quod aut aut et voluptatem.', 'zh_CN'),
(17, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'en_US'),
(18, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'de_DE'),
(19, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'fr_FR'),
(20, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'pl_PL'),
(21, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'es_ES'),
(22, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'es_MX'),
(23, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'pt_PT'),
(24, 3, 'FedEx', 'Sit vero rerum in eaque eos sit.', 'zh_CN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shop_billing_data`
--

CREATE TABLE `sylius_shop_billing_data` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shop_billing_data`
--

INSERT INTO `sylius_shop_billing_data` (`id`, `company`, `tax_id`, `country_code`, `street`, `city`, `postcode`) VALUES
(1, 'Sylius', '0001112222', 'US', 'Test St. 15', 'eCommerce Town', '00 33 22'),
(2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_shop_user`
--

CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_shop_user`
--

INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `encoder_name`) VALUES
(1, 1, 'shop@example.com', 'shop@example.com', 1, 'r5jd7qpqlqo8k04okow4c8gkw0ccsko', '$argon2i$v=19$m=65536,t=4,p=1$YjgvQm1QektsTlFjYUlTMQ$zjZLvY4EiBdoeW/Y83VJBQ4wfY2Iy7PzcSI2hEUo67w', '2022-01-15 18:02:54', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:38', '2022-01-15 18:02:54', 'argon2i'),
(2, 2, 'paige72@gmail.com', 'paige72@gmail.com', 1, '56nnyeu6m8g8wwkgc0cowkggwwcgsow', '$argon2i$v=19$m=65536,t=4,p=1$ejRYTElVOGdHSDdPUFphLg$5IL1OA47AEK6cN7P2uTD0oFOC1IVyaq1O+7adNRBDzc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:39', '2022-01-08 15:30:39', 'argon2i'),
(3, 3, 'dlubowitz@gmail.com', 'dlubowitz@gmail.com', 1, '30cir4s4gzk004cgskw8scswk0s4cog', '$argon2i$v=19$m=65536,t=4,p=1$Y2F5ZWFEZHg2cTA2aEJHdw$Ejn2xf+H3CS26YpJlXzQdhdnZ5LzLuc7giHLkqV5qmw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:39', '2022-01-08 15:30:39', 'argon2i'),
(4, 4, 'ebeahan@satterfield.com', 'ebeahan@satterfield.com', 1, 'rg2i9b1076ok48g4ck08ok0k8g4ww88', '$argon2i$v=19$m=65536,t=4,p=1$cXE2dTdpSXBmbzc3Rjhadg$ETQce5j7A5sxXaj20qQzGHGnMyBpYaz95uKw5/bt+5E', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:39', '2022-01-08 15:30:39', 'argon2i'),
(5, 5, 'tbarton@yahoo.com', 'tbarton@yahoo.com', 1, 'fkvyo2l5uv4048g84o4wck44o00w4ws', '$argon2i$v=19$m=65536,t=4,p=1$bE5UYXhiek4zZy9OTWNXSQ$BE8jLQrbIloJvXxj/QuS20drk5n4KxHuzGR8HxtHBqY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:40', '2022-01-08 15:30:40', 'argon2i'),
(6, 6, 'leannon.andrew@hotmail.com', 'leannon.andrew@hotmail.com', 1, '2il17v5z5ickkowc8kccg8s4owwcwkw', '$argon2i$v=19$m=65536,t=4,p=1$a1FoNlFMYldVaG85Wjk5SA$WQx5r62N2rGW24z9Ra+5Opl64JsdNIGWB6vlm+b5w4M', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:40', '2022-01-08 15:30:40', 'argon2i'),
(7, 7, 'romaine.heidenreich@yahoo.com', 'romaine.heidenreich@yahoo.com', 1, '4f0r2a5vj5ogooswgg4c8cg84c44kso', '$argon2i$v=19$m=65536,t=4,p=1$aXM5dzhzNElHNWFHRjJjUw$CFCoXDTsyJ06bAI8JuNBrRD+03obkgkeV2L+kTyzfCc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:40', '2022-01-08 15:30:40', 'argon2i'),
(8, 8, 'mckenna21@grimes.com', 'mckenna21@grimes.com', 1, 'luy1ro6zjogkwk880go8gco4woscc8k', '$argon2i$v=19$m=65536,t=4,p=1$SlloWXZuYXBJOEhEWXNOMw$Y35kwxNd6K3vshcKlktUaQuOiBl8sWmZmusZnwp82SY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:40', '2022-01-08 15:30:40', 'argon2i'),
(9, 9, 'lucienne.kunze@yahoo.com', 'lucienne.kunze@yahoo.com', 1, 'lrmrb9nx85wsgcg808gsw8g48kgw4w', '$argon2i$v=19$m=65536,t=4,p=1$Y2V3MTQ2ZjV4Wk5uVWV1dg$BzCiFUg67+Sijbk0ozAPxkNaVTuqmP312JojMlO47Fw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:40', '2022-01-08 15:30:40', 'argon2i'),
(10, 10, 'gprice@yahoo.com', 'gprice@yahoo.com', 1, 'daf7dcqas3k0os4c4k48wg4wk0cw40c', '$argon2i$v=19$m=65536,t=4,p=1$dGxCSlRjSzFTZE5DNmY0NA$dZEExaDDBmVmDf5XwagHjjUN2Pa+iBEN/Tux5fTXLmo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:41', '2022-01-08 15:30:41', 'argon2i'),
(11, 11, 'anne93@yahoo.com', 'anne93@yahoo.com', 1, 't0k1o9jaiz48gsk8ocwgs4kg4w8cgk0', '$argon2i$v=19$m=65536,t=4,p=1$VUpJWWVUVEVtc3ZxSk51NA$+hrAWBRjLdT3KAB4xhZBkemAVJHsL96c+9rMGBbHgCQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:41', '2022-01-08 15:30:41', 'argon2i'),
(12, 12, 'hackett.eve@lakin.info', 'hackett.eve@lakin.info', 1, '4eujd0ix0o8480g4080wckgwoocccgw', '$argon2i$v=19$m=65536,t=4,p=1$aHpkeE5vakx0OWwzamhUeQ$l3DgEwtcnBlh8EWQ7fl6gj/a3lz5kk0+I/78pTGZuYs', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:41', '2022-01-08 15:30:41', 'argon2i'),
(13, 13, 'braeden97@hotmail.com', 'braeden97@hotmail.com', 1, 'o5yyifktdxcwckwwgoscswcggoog4cc', '$argon2i$v=19$m=65536,t=4,p=1$eDBmTzZHNVhITHE0M25FWA$091ZLsdszTq6u0K+RxiAa2Noq6lICeIhhP+9SB+8dIk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:41', '2022-01-08 15:30:41', 'argon2i'),
(14, 14, 'kay97@yahoo.com', 'kay97@yahoo.com', 1, '98u9hqmjsgsggokckcccck8koskwc0o', '$argon2i$v=19$m=65536,t=4,p=1$TC4uLk5ackxnUEN1ZzV4dA$unTfQxKtDlYjtAfIvcIqQdAe6nCPTgPUzknU62tw2Fw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:42', '2022-01-08 15:30:42', 'argon2i'),
(15, 15, 'meagan02@leuschke.com', 'meagan02@leuschke.com', 1, 'rdtu6uijqwgs4kcg0484ko4w80s8w4k', '$argon2i$v=19$m=65536,t=4,p=1$MEtyQkNqUi40LzJMVFFLZg$pCD6ZexMSdNxKimVOXEDpv1o2UiWXL4U8if74D3NKf0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:42', '2022-01-08 15:30:42', 'argon2i'),
(16, 16, 'hgrimes@hotmail.com', 'hgrimes@hotmail.com', 1, 'qnl3pwtk8cg4oossokwg4c48w4wk04c', '$argon2i$v=19$m=65536,t=4,p=1$T1dEcS9jcWNnLlJnRVR5MA$zr1vTg5PcU/jZ6oTAUZHrf4e5urqBQFVKCRsn2S+OsI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:42', '2022-01-08 15:30:42', 'argon2i'),
(17, 17, 'beau75@bednar.com', 'beau75@bednar.com', 1, 'rs125t1pcfkocg8c4www44c0c4k4s0o', '$argon2i$v=19$m=65536,t=4,p=1$WE1ndW9SRFp3aDg1UXR4Tg$eF+8QP7OhZhnM8ruYdCeu8u5iaKktZ1qwu/UZz5dB6Y', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:42', '2022-01-08 15:30:42', 'argon2i'),
(18, 18, 'kovacek.nova@yahoo.com', 'kovacek.nova@yahoo.com', 1, 'al9x4f1qav404840k44w4g40844wcwg', '$argon2i$v=19$m=65536,t=4,p=1$YVJaZ0swWlIwb3dnazJyVg$270Dw4u52lgQvNhtHMWueHA4Jt8B/msinfp72FBCdpU', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:43', '2022-01-08 15:30:43', 'argon2i'),
(19, 19, 'sheridan68@gmail.com', 'sheridan68@gmail.com', 1, 'ct31z0zh0lc0kkgs0ogkwc8cwokk8so', '$argon2i$v=19$m=65536,t=4,p=1$V3NmQXNqMVZZaWp2eWtNeg$C6nQwgDksuqOBesI2syPYO9h1yI62layXTNiFLr8VNY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:43', '2022-01-08 15:30:43', 'argon2i'),
(20, 20, 'reynold02@hotmail.com', 'reynold02@hotmail.com', 1, 'hxxlialcaz480g4w8kw88kk844kkwog', '$argon2i$v=19$m=65536,t=4,p=1$RGtZTmVKZmxvTUZveXNhTA$nEyyfzksy0ycsbN+/5LNqEzF94TnOEkpgxIr6Kq+TGQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:43', '2022-01-08 15:30:43', 'argon2i'),
(21, 21, 'qziemann@ankunding.info', 'qziemann@ankunding.info', 1, '5um3n0m45bswg0cksoks4wkowwc8gs4', '$argon2i$v=19$m=65536,t=4,p=1$NEFxQlAuaThRQzB1ZURWag$sXdrUO3jtBZK990xSWcsBaqYqN0V8zIf0Ddqsa/kLlg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2022-01-08 15:30:43', '2022-01-08 15:30:43', 'argon2i');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_taxon`
--

CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_taxon`
--

INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`, `enabled`) VALUES
(1, 1, NULL, 'MENU_CATEGORY', 1, 24, 0, 0, '2022-01-08 15:30:38', '2022-01-08 15:30:38', 1),
(2, 1, 1, 't_shirts', 2, 7, 1, 0, '2022-01-08 15:30:44', '2022-01-08 15:30:44', 1),
(3, 1, 2, 'mens_t_shirts', 3, 4, 2, 0, '2022-01-08 15:30:44', '2022-01-08 15:30:44', 1),
(4, 1, 2, 'womens_t_shirts', 5, 6, 2, 1, '2022-01-08 15:30:44', '2022-01-08 15:30:44', 1),
(5, 1, 1, 'caps', 8, 13, 1, 1, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(6, 1, 5, 'simple_caps', 9, 10, 2, 0, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(7, 1, 5, 'caps_with_pompons', 11, 12, 2, 1, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(8, 1, 1, 'dresses', 14, 15, 1, 2, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(9, 1, 1, 'jeans', 16, 21, 1, 3, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(10, 1, 9, 'mens_jeans', 17, 18, 2, 0, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(11, 1, 9, 'womens_jeans', 19, 20, 2, 1, '2022-01-08 15:30:45', '2022-01-08 15:30:45', 1),
(12, 1, 1, 'Boots', 22, 23, 1, 4, '2022-01-15 18:25:57', '2022-01-15 18:25:59', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_taxon_image`
--

CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_taxon_translation`
--

CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
(1, 1, 'Category', 'category', 'Blanditiis sed non aperiam qui. Ut velit sed soluta fugiat aspernatur earum architecto. Sed culpa cumque ullam dolorem tenetur impedit sed.', 'en_US'),
(2, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'de_DE'),
(3, 1, 'Catégorie', 'categorie', 'Tenetur harum repellendus voluptatibus. Quod odit et veniam vero possimus. Labore est voluptatem cupiditate aut veniam pariatur.', 'fr_FR'),
(4, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'pl_PL'),
(5, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'es_ES'),
(6, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'es_MX'),
(7, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'pt_PT'),
(8, 1, 'Category', 'category', 'In nihil error et quasi. Accusantium est corrupti aut ut perferendis dolorem doloribus magni. Eius optio voluptatem repellat nesciunt quaerat nam. Distinctio laboriosam hic repudiandae pariatur.', 'zh_CN'),
(9, 2, 'T-shirts', 'category/t-shirts', 'Exercitationem corporis dolores quos id. Sint qui sunt quasi similique doloribus provident quia. Possimus itaque autem ut vel. Quos iste mollitia id et nam provident eum.', 'en_US'),
(10, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'de_DE'),
(11, 2, 'T-shirts', 'categorie/t-shirts', 'Exercitationem et fugit distinctio dolorem facere ipsum exercitationem illum. Illo quia et minima dolores alias repellendus iusto. Quas minus iure voluptatem sit est dolor. Facilis minus tempore est ipsam dolores eveniet et.', 'fr_FR'),
(12, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'pl_PL'),
(13, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'es_ES'),
(14, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'es_MX'),
(15, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'pt_PT'),
(16, 2, 'T-shirts', 't-shirts', 'Excepturi quibusdam impedit ea dolor ipsam. Et rerum ad pariatur saepe quam velit. Necessitatibus voluptas qui molestias molestias voluptatum quia cum.', 'zh_CN'),
(17, 3, 'Men', 't-shirts/men', 'Aperiam et id nihil. Dolorem autem qui et ex aut sint. Inventore et dolorum perferendis reiciendis delectus.', 'en_US'),
(18, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'de_DE'),
(19, 3, 'Hommes', 't-shirts/hommes', 'Id voluptas temporibus eum et dolorem. Natus fuga voluptates placeat ea non tempora. Rem inventore id amet asperiores qui rerum. Tempora sequi id rerum nulla deleniti non. Temporibus dolor deleniti magni.', 'fr_FR'),
(20, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'pl_PL'),
(21, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'es_ES'),
(22, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'es_MX'),
(23, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'pt_PT'),
(24, 3, 'iusto delectus incidunt', 't-shirts/iusto-delectus-incidunt', 'Error et sit reprehenderit consequuntur et. Maiores deserunt et ut facere. Fuga laudantium nihil voluptas ducimus magni et eaque. Blanditiis est maiores fuga magni sed.', 'zh_CN'),
(25, 4, 'Women', 't-shirts/women', 'Consequuntur fuga dolorem voluptate nobis. Cum qui et quaerat quasi quod voluptate. Modi fugit facilis a quis ut quia recusandae officiis.', 'en_US'),
(26, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'de_DE'),
(27, 4, 'Femmes', 't-shirts/femmes', 'Ut ut modi doloribus eum. Et quo soluta voluptatem sapiente nesciunt veniam numquam. Exercitationem nihil voluptatem dicta inventore iste.', 'fr_FR'),
(28, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'pl_PL'),
(29, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'es_ES'),
(30, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'es_MX'),
(31, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'pt_PT'),
(32, 4, 'necessitatibus et aut', 't-shirts/necessitatibus-et-aut', 'Et eos odit eius rerum. Veritatis iste quae debitis nulla. Expedita vero dolores earum. Et maxime ab ut incidunt ipsum velit illo.', 'zh_CN'),
(33, 5, 'Caps', 'category/caps', 'Numquam ratione tempora sit nobis at nesciunt quod. Voluptatem nam vel sit iusto et.', 'en_US'),
(34, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'de_DE'),
(35, 5, 'Bonnets', 'categorie/bonnets', 'Consequatur veritatis quia saepe dolorem culpa. Explicabo mollitia porro est cumque voluptatem alias sapiente doloremque. Consequatur aut fugit eum quam odit laborum.', 'fr_FR'),
(36, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'pl_PL'),
(37, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'es_ES'),
(38, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'es_MX'),
(39, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'pt_PT'),
(40, 5, 'Caps', 'caps', 'Ducimus dolor perferendis recusandae itaque omnis ut. Officiis voluptas omnis ut odit. Et cumque quia culpa est et.', 'zh_CN'),
(41, 6, 'Simple', 'caps/simple', 'Iure blanditiis qui reiciendis laboriosam omnis beatae. Ut est est sit in. Nostrum ducimus fugiat possimus libero velit quia.', 'en_US'),
(42, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'de_DE'),
(43, 6, 'Simple', 'bonnets/simple', 'Accusamus nam laborum quia commodi minus aut. Aut eaque eveniet mollitia ea fugit. Natus vero numquam et placeat aut omnis voluptatibus.', 'fr_FR'),
(44, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'pl_PL'),
(45, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'es_ES'),
(46, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'es_MX'),
(47, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'pt_PT'),
(48, 6, 'sed voluptatem veniam', 'caps/sed-voluptatem-veniam', 'Tenetur iure qui nobis magnam eligendi cumque et. Tempora praesentium et qui dolorum voluptatem. Iusto ex consequuntur voluptatibus laboriosam et excepturi. Eligendi eos optio quasi voluptates ex ducimus.', 'zh_CN'),
(49, 7, 'With pompons', 'caps/with-pompons', 'Inventore sed voluptatem et sint alias numquam. Quis a qui pariatur quidem. Quaerat asperiores consectetur cumque quia doloribus corporis id. Debitis unde quis autem maiores sed est.', 'en_US'),
(50, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'de_DE'),
(51, 7, 'À pompon', 'bonnets/a-pompon', 'Est sed beatae possimus rem debitis voluptatem commodi. Possimus accusantium velit quas possimus vitae quas eum. Possimus minus dicta neque a.', 'fr_FR'),
(52, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'pl_PL'),
(53, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'es_ES'),
(54, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'es_MX'),
(55, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'pt_PT'),
(56, 7, 'qui ut facilis', 'caps/qui-ut-facilis', 'Aut et numquam velit hic iste hic corrupti. Rerum ullam ut et animi debitis aspernatur odit. Tempora rerum odit et et dolor modi esse corporis. Vel soluta voluptas aut soluta quis.', 'zh_CN'),
(57, 8, 'Dresses', 'category/dresses', 'Et atque expedita sit molestiae sunt quia. Voluptatum illum enim quas pariatur consequuntur at. At expedita sed ullam officiis illum quis nobis. Voluptas ut et rerum unde dolorum.', 'en_US'),
(58, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'de_DE'),
(59, 8, 'Robes', 'categorie/robes', 'Quam pariatur animi molestias soluta. Molestiae ipsum impedit sit.', 'fr_FR'),
(60, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'pl_PL'),
(61, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'es_ES'),
(62, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'es_MX'),
(63, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'pt_PT'),
(64, 8, 'molestiae quia qui', 'category/molestiae-quia-qui', 'Expedita sunt et et sapiente nihil totam ea unde. Ut voluptates dicta ducimus. Repellat sint nihil voluptate ab sunt minima. Sit hic sequi laudantium ducimus corporis iusto nobis dolores.', 'zh_CN'),
(65, 9, 'Jeans', 'category/jeans', 'Qui eligendi facere optio minima sit. Exercitationem et occaecati sequi. Quos asperiores praesentium et. Necessitatibus omnis consectetur enim esse ab quae quibusdam eos.', 'en_US'),
(66, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'de_DE'),
(67, 9, 'Jeans', 'categorie/jeans', 'Ad eligendi et vero nemo iste. Rerum quam voluptas quia et aperiam. Exercitationem quae minus velit harum possimus. Voluptate sed facilis vel optio velit hic.', 'fr_FR'),
(68, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'pl_PL'),
(69, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'es_ES'),
(70, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'es_MX'),
(71, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'pt_PT'),
(72, 9, 'Jeans', 'jeans', 'Est facilis hic iure repellendus distinctio. Explicabo quas et aut voluptas blanditiis asperiores ut dignissimos. Consequatur quas autem quae expedita.', 'zh_CN'),
(73, 10, 'Men', 'jeans/men', 'Omnis pariatur est voluptate nihil. Ipsam repellat dolores minima saepe tenetur. Quia aut enim aut veritatis sed quia doloremque magnam.', 'en_US'),
(74, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'de_DE'),
(75, 10, 'Hommes', 'jeans/hommes', 'Natus ab quis molestiae minima. Rerum tempore libero esse eligendi est. Delectus magni dolores porro neque et laborum. Dolor dolores ab a dolores qui. Commodi et accusantium sunt explicabo est.', 'fr_FR'),
(76, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'pl_PL'),
(77, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'es_ES'),
(78, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'es_MX'),
(79, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'pt_PT'),
(80, 10, 'sunt id corrupti', 'jeans/sunt-id-corrupti', 'Pariatur modi quos quod eveniet saepe harum quo. Ipsum nesciunt soluta praesentium qui non aut distinctio quos. Et exercitationem et voluptatem quo quisquam. Dolorem quas quod sed et totam. Non qui temporibus doloribus omnis.', 'zh_CN'),
(81, 11, 'Women', 'jeans/women', 'Sit natus eligendi qui expedita doloribus. Vel quisquam provident nisi aut atque. Quo vel minus ipsa illum sed. Et ut magnam et molestias qui et. Omnis iusto soluta et incidunt.', 'en_US'),
(82, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'de_DE'),
(83, 11, 'Femmes', 'jeans/femmes', 'Minima et eum est consequatur dicta tempore harum. Eius harum ut quam magni voluptatem sed ipsa est. Adipisci et non vitae. Laboriosam expedita qui reprehenderit nobis unde ipsa dolorem. Voluptas ab quia tenetur ratione omnis eum aut.', 'fr_FR'),
(84, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'pl_PL'),
(85, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'es_ES'),
(86, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'es_MX'),
(87, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'pt_PT'),
(88, 11, 'tempora voluptatum et', 'jeans/tempora-voluptatum-et', 'Vel atque sunt quia est. Nihil iste officia repellat quia. Eum ipsam explicabo tempore excepturi facilis nihil.', 'zh_CN'),
(89, 12, 'Boots', 'category/boots', NULL, 'en_US'),
(90, 12, 'Buty', 'category/buty', NULL, 'pl_PL');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_tax_category`
--

CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_tax_category`
--

INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'clothing', 'Clothing', 'Pariatur quo ab ex amet. Culpa quisquam corporis iusto aut culpa architecto. Optio nihil doloribus quo. Sed tempore voluptatum aut alias quas praesentium.', '2022-01-08 15:30:44', '2022-01-08 15:30:44'),
(2, 'other', 'Other', 'Sint eos earum neque et. Rem aut est sed sunt doloribus. Vel est et voluptatem quia fuga. Vel iusto deserunt excepturi voluptatibus error in neque.', '2022-01-08 15:30:44', '2022-01-08 15:30:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_tax_rate`
--

CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_tax_rate`
--

INSERT INTO `sylius_tax_rate` (`id`, `category_id`, `zone_id`, `code`, `name`, `amount`, `included_in_price`, `calculator`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', '0.07000', 0, 'default', '2022-01-08 15:30:44', '2022-01-08 15:30:44'),
(2, 2, 1, 'sales_tax_20', 'Sales Tax 20%', '0.20000', 0, 'default', '2022-01-08 15:30:44', '2022-01-08 15:30:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_user_oauth`
--

CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_zone`
--

CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(1, 'US', 'United States of America', 'country', 'all'),
(2, 'WORLD', 'World', 'country', 'all'),
(3, 'EU', 'European Union', 'country', 'all');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sylius_zone_member`
--

CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(1, 1, 'US'),
(5, 2, 'AU'),
(6, 2, 'CA'),
(11, 2, 'CN'),
(4, 2, 'DE'),
(10, 2, 'ES'),
(3, 2, 'FR'),
(12, 2, 'GB'),
(7, 2, 'MX'),
(8, 2, 'NZ'),
(13, 2, 'PL'),
(9, 2, 'PT'),
(2, 2, 'US'),
(15, 3, 'DE'),
(14, 3, 'FR'),
(16, 3, 'PL');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `app_supplier`
--
ALTER TABLE `app_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B97FF0589395C3F3` (`customer_id`);

--
-- Indeksy dla tabeli `sylius_address_log_entries`
--
ALTER TABLE `sylius_address_log_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  ADD KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  ADD KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  ADD KEY `IDX_ACA6E0F27BE036FC` (`shipment_id`);

--
-- Indeksy dla tabeli `sylius_admin_user`
--
ALTER TABLE `sylius_admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_avatar_image`
--
ALTER TABLE `sylius_avatar_image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`);

--
-- Indeksy dla tabeli `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  ADD UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  ADD KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  ADD KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  ADD KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  ADD KEY `IDX_16C8119EE551C011` (`hostname`),
  ADD KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`);

--
-- Indeksy dla tabeli `sylius_channel_countries`
--
ALTER TABLE `sylius_channel_countries`
  ADD PRIMARY KEY (`channel_id`,`country_id`),
  ADD KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  ADD KEY `IDX_D96E51AEF92F3E70` (`country_id`);

--
-- Indeksy dla tabeli `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  ADD KEY `IDX_AE491F9338248176` (`currency_id`);

--
-- Indeksy dla tabeli `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  ADD KEY `IDX_786B7A84E559DFD1` (`locale_id`);

--
-- Indeksy dla tabeli `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  ADD KEY `IDX_7801820CA80EF684` (`product_variant_id`);

--
-- Indeksy dla tabeli `sylius_country`
--
ALTER TABLE `sylius_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  ADD KEY `IDX_E74256BF77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_currency`
--
ALTER TABLE `sylius_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`);

--
-- Indeksy dla tabeli `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  ADD KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`);

--
-- Indeksy dla tabeli `sylius_customer_group`
--
ALTER TABLE `sylius_customer_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`);

--
-- Indeksy dla tabeli `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  ADD KEY `IDX_5F52B852A76BEED` (`source_currency`),
  ADD KEY `IDX_5F52B85B3FD5856` (`target_currency`);

--
-- Indeksy dla tabeli `sylius_gateway_config`
--
ALTER TABLE `sylius_gateway_config`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_locale`
--
ALTER TABLE `sylius_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7BA1286477153098` (`code`);

--
-- Indeksy dla tabeli `sylius_migrations`
--
ALTER TABLE `sylius_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  ADD UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  ADD UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  ADD UNIQUE KEY `UNIQ_6196A1F9BEA95C75` (`token_value`),
  ADD KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  ADD KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  ADD KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  ADD KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`);

--
-- Indeksy dla tabeli `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  ADD KEY `IDX_77B587ED3B69A9AF` (`variant_id`);

--
-- Indeksy dla tabeli `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  ADD KEY `IDX_82BF226E7BE036FC` (`shipment_id`);

--
-- Indeksy dla tabeli `sylius_order_sequence`
--
ALTER TABLE `sylius_order_sequence`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9191BD419883967` (`method_id`),
  ADD KEY `IDX_D9191BD48D9F6D38` (`order_id`);

--
-- Indeksy dla tabeli `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  ADD KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`);

--
-- Indeksy dla tabeli `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD PRIMARY KEY (`payment_method_id`,`channel_id`),
  ADD KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  ADD KEY `IDX_543AC0CC72F5A1AA` (`channel_id`);

--
-- Indeksy dla tabeli `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_payment_security_token`
--
ALTER TABLE `sylius_payment_security_token`
  ADD PRIMARY KEY (`hash`);

--
-- Indeksy dla tabeli `sylius_paypal_plugin_pay_pal_credentials`
--
ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C56F54AD5AA1164F` (`payment_method_id`);

--
-- Indeksy dla tabeli `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  ADD KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  ADD KEY `IDX_677B9B742ADD6D8C` (`supplier_id`),
  ADD KEY `IDX_677B9B747ADA1FB5` (`color_id`);

--
-- Indeksy dla tabeli `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  ADD KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  ADD KEY `IDX_48E9CDAB4584665A` (`product_id`);

--
-- Indeksy dla tabeli `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD PRIMARY KEY (`association_id`,`product_id`),
  ADD KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  ADD KEY `IDX_A427B9834584665A` (`product_id`);

--
-- Indeksy dla tabeli `sylius_product_association_type`
--
ALTER TABLE `sylius_product_association_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_4F618E52C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_product_attribute`
--
ALTER TABLE `sylius_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8A053E544584665A` (`product_id`),
  ADD KEY `IDX_8A053E54B6E62EFA` (`attribute_id`);

--
-- Indeksy dla tabeli `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD PRIMARY KEY (`product_id`,`channel_id`),
  ADD KEY `IDX_F9EF269B4584665A` (`product_id`),
  ADD KEY `IDX_F9EF269B72F5A1AA` (`channel_id`);

--
-- Indeksy dla tabeli `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88C64B2D7E3C61F9` (`owner_id`);

--
-- Indeksy dla tabeli `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD PRIMARY KEY (`image_id`,`variant_id`),
  ADD KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  ADD KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`);

--
-- Indeksy dla tabeli `sylius_product_option`
--
ALTER TABLE `sylius_product_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `IDX_2B5FF0094584665A` (`product_id`),
  ADD KEY `IDX_2B5FF009A7C41D6F` (`option_id`);

--
-- Indeksy dla tabeli `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  ADD KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`);

--
-- Indeksy dla tabeli `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C7056A994584665A` (`product_id`),
  ADD KEY `IDX_C7056A99F675F31B` (`author_id`);

--
-- Indeksy dla tabeli `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  ADD KEY `IDX_169C6CD94584665A` (`product_id`),
  ADD KEY `IDX_169C6CD9DE13F470` (`taxon_id`);

--
-- Indeksy dla tabeli `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  ADD KEY `IDX_105A9082C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  ADD KEY `IDX_A29B5234584665A` (`product_id`),
  ADD KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  ADD KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`);

--
-- Indeksy dla tabeli `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD PRIMARY KEY (`variant_id`,`option_value_id`),
  ADD KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  ADD KEY `IDX_76CDAFA1D957CA06` (`option_value_id`);

--
-- Indeksy dla tabeli `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_promotion`
--
ALTER TABLE `sylius_promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F157396377153098` (`code`);

--
-- Indeksy dla tabeli `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_933D0915139DF194` (`promotion_id`);

--
-- Indeksy dla tabeli `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD PRIMARY KEY (`promotion_id`,`channel_id`),
  ADD KEY `IDX_1A044F64139DF194` (`promotion_id`),
  ADD KEY `IDX_1A044F6472F5A1AA` (`channel_id`);

--
-- Indeksy dla tabeli `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  ADD KEY `IDX_B04EBA85139DF194` (`promotion_id`);

--
-- Indeksy dla tabeli `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD PRIMARY KEY (`order_id`,`promotion_id`),
  ADD KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  ADD KEY `IDX_BF9CF6FB139DF194` (`promotion_id`);

--
-- Indeksy dla tabeli `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2C188EA8139DF194` (`promotion_id`);

--
-- Indeksy dla tabeli `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  ADD UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  ADD KEY `IDX_B5618FE4F92F3E70` (`country_id`);

--
-- Indeksy dla tabeli `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FD707B3319883967` (`method_id`),
  ADD KEY `IDX_FD707B338D9F6D38` (`order_id`);

--
-- Indeksy dla tabeli `sylius_shipping_category`
--
ALTER TABLE `sylius_shipping_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B1D6465277153098` (`code`);

--
-- Indeksy dla tabeli `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  ADD KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  ADD KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  ADD KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`);

--
-- Indeksy dla tabeli `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD PRIMARY KEY (`shipping_method_id`,`channel_id`),
  ADD KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  ADD KEY `IDX_2D98333572F5A1AA` (`channel_id`);

--
-- Indeksy dla tabeli `sylius_shipping_method_rule`
--
ALTER TABLE `sylius_shipping_method_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`);

--
-- Indeksy dla tabeli `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_shop_billing_data`
--
ALTER TABLE `sylius_shop_billing_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`);

--
-- Indeksy dla tabeli `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  ADD KEY `IDX_CFD811CAA977936C` (`tree_root`),
  ADD KEY `IDX_CFD811CA727ACA70` (`parent_id`);

--
-- Indeksy dla tabeli `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DBE52B287E3C61F9` (`owner_id`);

--
-- Indeksy dla tabeli `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  ADD UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`);

--
-- Indeksy dla tabeli `sylius_tax_category`
--
ALTER TABLE `sylius_tax_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  ADD KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  ADD KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`);

--
-- Indeksy dla tabeli `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_provider` (`user_id`,`provider`),
  ADD KEY `IDX_C3471B78A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `sylius_zone`
--
ALTER TABLE `sylius_zone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`);

--
-- Indeksy dla tabeli `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  ADD KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `app_supplier`
--
ALTER TABLE `app_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_address`
--
ALTER TABLE `sylius_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `sylius_address_log_entries`
--
ALTER TABLE `sylius_address_log_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT dla tabeli `sylius_admin_user`
--
ALTER TABLE `sylius_admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_avatar_image`
--
ALTER TABLE `sylius_avatar_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_channel`
--
ALTER TABLE `sylius_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT dla tabeli `sylius_country`
--
ALTER TABLE `sylius_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `sylius_currency`
--
ALTER TABLE `sylius_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `sylius_customer`
--
ALTER TABLE `sylius_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_customer_group`
--
ALTER TABLE `sylius_customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sylius_gateway_config`
--
ALTER TABLE `sylius_gateway_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_locale`
--
ALTER TABLE `sylius_locale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `sylius_order`
--
ALTER TABLE `sylius_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT dla tabeli `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT dla tabeli `sylius_order_sequence`
--
ALTER TABLE `sylius_order_sequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sylius_payment`
--
ALTER TABLE `sylius_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `sylius_product`
--
ALTER TABLE `sylius_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_association_type`
--
ALTER TABLE `sylius_product_association_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_attribute`
--
ALTER TABLE `sylius_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_option`
--
ALTER TABLE `sylius_product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT dla tabeli `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT dla tabeli `sylius_promotion`
--
ALTER TABLE `sylius_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_province`
--
ALTER TABLE `sylius_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `sylius_shipping_category`
--
ALTER TABLE `sylius_shipping_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_shipping_method_rule`
--
ALTER TABLE `sylius_shipping_method_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `sylius_shop_billing_data`
--
ALTER TABLE `sylius_shop_billing_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT dla tabeli `sylius_tax_category`
--
ALTER TABLE `sylius_tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sylius_zone`
--
ALTER TABLE `sylius_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD CONSTRAINT `FK_ACA6E0F27BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_avatar_image`
--
ALTER TABLE `sylius_avatar_image`
  ADD CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  ADD CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  ADD CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `sylius_channel_countries`
--
ALTER TABLE `sylius_channel_countries`
  ADD CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`);

--
-- Ograniczenia dla tabeli `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  ADD CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Ograniczenia dla tabeli `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  ADD CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  ADD CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_paypal_plugin_pay_pal_credentials`
--
ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials`
  ADD CONSTRAINT `FK_C56F54AD5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`);

--
-- Ograniczenia dla tabeli `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD CONSTRAINT `FK_677B9B742ADD6D8C` FOREIGN KEY (`supplier_id`) REFERENCES `app_supplier` (`id`),
  ADD CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  ADD CONSTRAINT `FK_677B9B747ADA1FB5` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`id`);

--
-- Ograniczenia dla tabeli `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Ograniczenia dla tabeli `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Ograniczenia dla tabeli `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  ADD CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Ograniczenia dla tabeli `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`);

--
-- Ograniczenia dla tabeli `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  ADD CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  ADD CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Ograniczenia dla tabeli `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_shipping_method_rule`
--
ALTER TABLE `sylius_shipping_method_rule`
  ADD CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`);

--
-- Ograniczenia dla tabeli `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Ograniczenia dla tabeli `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  ADD CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Ograniczenia dla tabeli `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Ograniczenia dla tabeli `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
