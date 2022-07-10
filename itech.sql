-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 25 2022 г., 17:25
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itech`
--
CREATE DATABASE IF NOT EXISTS `itech` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `itech`;

-- --------------------------------------------------------

--
-- Структура таблицы `computer`
--

CREATE TABLE `computer` (
  `id` int(11) NOT NULL,
  `netname` varchar(48) NOT NULL,
  `motherboard` varchar(48) NOT NULL,
  `ram_capacity` int(11) NOT NULL,
  `hdd_capacity` int(11) NOT NULL,
  `monitor` varchar(48) NOT NULL,
  `vendor` varchar(48) NOT NULL,
  `purchase` datetime NOT NULL,
  `guarantee` datetime NOT NULL,
  `processor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computer`
--

INSERT INTO `computer` (`id`, `netname`, `motherboard`, `ram_capacity`, `hdd_capacity`, `monitor`, `vendor`, `purchase`, `guarantee`, `processor_id`) VALUES
(1, 'CyberPart Bronze 3H+', 'H510', 16, 1000, 'Pixio PXC279', 'EVOLVE', '2017-01-06 15:52:12', '2019-01-06 15:52:12', 1),
(2, 'CyberPart Bronze 3H', 'H510', 8, 500, 'Philips 392M7C', 'EVOLVE', '2018-12-11 10:41:54', '2021-12-11 10:41:54', 1),
(3, 'CyberPart Bronze 3B', 'H510', 8, 240, 'Xiaomi Mi 24.5\"', 'EVOLVE', '2020-06-07 07:18:07', '2022-06-07 07:18:07', 1),
(4, 'OptiPart Gold H', 'B560', 16, 1000, 'MSI G273', 'EVOLVE', '2017-11-08 03:52:57', '2020-11-08 03:52:57', 3),
(5, 'OptiPart Silver 5H', 'B560', 16, 1000, 'ASUS ROG SWIFT PG258Q', 'EVOLVE', '2022-02-18 16:46:14', '2025-02-18 16:46:14', 3),
(6, 'Business X22', 'B450', 16, 1000, 'Acer EI342CKR P', 'ARTLINE', '2018-04-25 21:11:07', '2020-04-25 21:11:07', 4),
(7, 'GamePart Platinum 3H', 'Z590', 16, 1000, 'Alphascan AGON 322FCX', 'EVOLVE', '2019-07-24 00:42:35', '2022-07-24 00:42:35', 5),
(8, 'LimitedPart MagneticSkin PC', 'B460', 16, 500, 'Gigabyte Aorus FI27Q-P', 'EVOLVE', '2015-05-30 13:47:13', '2019-05-30 13:47:13', 2),
(9, 'OptiPart Platinum H', 'B450', 16, 1000, 'ASUS ROG PG248Q', 'EVOLVE', '2019-03-09 21:56:12', '2023-03-09 21:56:12', 6),
(10, 'ROG Strix GA15 G15DK-R5800X0790', 'B550', 32, 500, 'EIZO FORIS FS2735', 'Asus', '2020-11-30 00:50:49', '2022-11-30 00:50:49', 8),
(11, 'OptiPart Gold 6B', 'B450', 16, 500, 'Dell S2721DGF', 'EVOLVE', '2015-06-30 15:34:51', '2017-06-30 15:34:51', 6),
(12, 'SpecialPart Razer_PC B', 'X570', 16, 1000, 'Acer Predator Z301C', 'EVOLVE', '2021-05-20 12:10:38', '2024-05-20 12:10:38', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `computer_has_software`
--

CREATE TABLE `computer_has_software` (
  `computer_id` int(11) NOT NULL,
  `software_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computer_has_software`
--

INSERT INTO `computer_has_software` (`computer_id`, `software_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(7, 1),
(8, 1),
(11, 1),
(12, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(11, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(10, 4),
(11, 4),
(1, 5),
(2, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(12, 5),
(3, 6),
(6, 6),
(11, 6),
(12, 6),
(1, 7),
(2, 7),
(4, 7),
(5, 7),
(11, 7),
(2, 8),
(5, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(2, 9),
(4, 9),
(6, 9),
(10, 9),
(11, 9),
(12, 9),
(1, 10),
(2, 10),
(3, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(1, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(10, 11),
(11, 11),
(12, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(5, 12),
(8, 12),
(9, 12),
(10, 12),
(12, 12),
(2, 13),
(3, 13),
(4, 13),
(6, 13),
(8, 13),
(9, 13),
(10, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(7, 14),
(8, 14),
(10, 14),
(11, 14),
(12, 14),
(1, 15),
(3, 15),
(5, 15),
(7, 15),
(8, 15),
(9, 15),
(11, 15),
(12, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(6, 16),
(7, 16),
(10, 16),
(11, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(7, 17),
(8, 17),
(9, 17),
(10, 17),
(1, 18),
(4, 18),
(5, 18),
(7, 18),
(8, 18),
(12, 18),
(2, 19),
(3, 19),
(4, 19),
(5, 19),
(6, 19),
(7, 19),
(9, 19),
(10, 19),
(11, 19),
(12, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 20),
(9, 20),
(12, 20),
(2, 21),
(3, 21),
(4, 21),
(7, 21),
(10, 21),
(11, 21),
(2, 22),
(3, 22),
(5, 22),
(7, 22),
(8, 22),
(10, 22),
(1, 23),
(2, 23),
(3, 23),
(6, 23),
(7, 23),
(8, 23),
(9, 23),
(11, 23),
(1, 24),
(2, 24),
(3, 24),
(4, 24),
(6, 24),
(7, 24),
(8, 24),
(9, 24),
(10, 24),
(12, 24),
(1, 25),
(2, 25),
(3, 25),
(5, 25),
(7, 25),
(8, 25),
(9, 25),
(10, 25),
(11, 25),
(12, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `frequency` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`id`, `name`, `frequency`) VALUES
(1, 'Intel Core i3-10105F', 4.4),
(2, 'Intel Core i5-10400', 4.3),
(3, 'Intel Core i5-10400F', 4.3),
(4, 'AMD Ryzen 7 5700G', 4.6),
(5, 'Intel Core i7-11700KF', 5),
(6, 'AMD Ryzen 5 3600', 4.2),
(7, 'AMD Ryzen 5 5600G', 4.4),
(8, 'AMD Ryzen 7 5800X', 4.7);

-- --------------------------------------------------------

--
-- Структура таблицы `software`
--

CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `software`
--

INSERT INTO `software` (`id`, `name`) VALUES
(1, 'Steam'),
(2, 'Mousepad'),
(3, 'VLC'),
(4, 'Mozilla Firefox'),
(5, 'Chromium'),
(6, 'Mozilla Thunderbird'),
(7, 'Gimp'),
(8, 'Inkscape'),
(9, 'Blender'),
(10, 'Geany'),
(11, 'OpenOffice'),
(12, 'LibreOffice'),
(13, 'VirtualBox'),
(14, 'GNU Compiler Collection'),
(15, 'IntelliJ IDEA'),
(16, 'Visual Studio Code'),
(17, 'Vivaldi'),
(18, 'Tor Browser'),
(19, 'Slack'),
(20, 'Telegram'),
(21, 'Git'),
(22, 'Sublime Text'),
(23, 'Anaconda'),
(24, 'Docker'),
(25, 'Postman');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_computer_processor1_idx` (`processor_id`);

--
-- Индексы таблицы `computer_has_software`
--
ALTER TABLE `computer_has_software`
  ADD PRIMARY KEY (`computer_id`,`software_id`),
  ADD KEY `fk_computer_has_software_software1_idx` (`software_id`);

--
-- Индексы таблицы `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `computer`
--
ALTER TABLE `computer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `processor`
--
ALTER TABLE `processor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `fk_computer_processor1` FOREIGN KEY (`processor_id`) REFERENCES `processor` (`id`);

--
-- Ограничения внешнего ключа таблицы `computer_has_software`
--
ALTER TABLE `computer_has_software`
  ADD CONSTRAINT `fk_computer_has_software_computer` FOREIGN KEY (`computer_id`) REFERENCES `computer` (`id`),
  ADD CONSTRAINT `fk_computer_has_software_software1` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
