-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 02 2020 г., 10:28
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `email`, `password`) VALUES
(1, 'h', 'hhhh@asd.asd', '$2y$10$sbpndYPu7GOoV2aiIjyNUeoR/ly3AnDdHug4BY.R1lLgfReOApUCm'),
(2, 'j', 'tty@brt', '$2y$10$bsF6lviDhl5aivR0H7/wQuGL6nT8nu.RJTOyyjcKK6zorWJJ4xyTW'),
(7, 'io', 'find1@mail.ru', '$2y$10$sDwGtms3.2KsZaLAFTyEoOFtg52.iFmElga6fybgCiKyMJuTWmqIC'),
(8, '3', 'fin2d@mail.ru', '$2y$10$GDQgeFSNF6FWMmjyHh.GGeXLjbxfLP3RLOyCAXoH5o2KXjtHWK5Ay'),
(9, 'Админ', 'askfor@mail.ru', '$2y$10$0Ig4t3cuHt7ZR1k1GxLIf.EJguMzqjt8TNnsP57zMl/KlE8tD41g2'),
(11, 'asde', 'ayewarface1@mail.ru', '$2y$10$2sC275LoaIfv6HDOFipPZu8SaFv83tu.xqWmMLoNk6ebZ471ljHLe');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
