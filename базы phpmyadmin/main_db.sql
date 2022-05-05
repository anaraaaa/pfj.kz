-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 02 2020 г., 10:29
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
-- База данных: `main_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(5, 'Ищу работу с полным рабочим графиком.', 'q.png', 'Являюсь выпускником по специальности \"Вычислительная техника и программное обеспечение\".', 1, '2019-11-05 00:20:10', 165),
(6, 'Специалист по направлению web-дизайна.', 'q.png', 'Выпускник специальности \"Информационные системы\". Рассчитываю на оклад от 150000тг.', 1, '2019-11-05 00:20:10', 5232),
(7, 'Специалист по работе с БД.', 'q.png', 'В моем портфолио имеется собственный проект разработанный мною специально для колледжа.', 1, '2019-11-05 00:20:35', 83),
(8, 'Специалист по разработке мобильных приложений.', 'q.png', 'Имеется огромный опыт в разработке мобильных приложений. Большую часть периода обучения уделялось разработке и работе с мобильными приложениями. ', 1, '2019-11-05 00:20:35', 65),
(9, 'Выпускник специальности \"ТО\"', 'to.png', 'Ищу организацию готовую принять меня механиком 1-ого разряда. Примерный желаемый оклад ~120000тг.', 2, '2019-11-05 09:09:22', 6),
(10, 'Инженер-механик 3-его разряда.', 'to.png', 'Являюсь инженером-механиком 3-его. Имеется опыт ремонта автомобилей марки \"ГАЗ\".\r\nПримерный желаемый оклад ~150000тг', 2, '2019-11-05 09:09:22', 93),
(11, 'Ищу организацию готовую принять меня на должность главного бухгалтера.', 'ec.png', 'Имеются готовые проекты связанный с бухгалтерским учетом', 3, '2019-11-05 15:53:35', 3),
(12, 'Имеется некий опыт работы в организациях с бухгалтерским учетом.', 'ec.png', 'Имеются готовые проекты связанный с бухгалтерским учетом', 3, '2019-11-05 15:53:35', 29),
(13, 'Маляр-штукатур', 'st.png', 'Являюсь маляром-штукатуром 1-ого разряда', 4, '2019-11-05 15:56:07', 1),
(14, 'Проектировка зданий и сооружений', 'st.png', NULL, 4, '2019-11-05 15:56:07', 8),
(15, 'lorem', 'g.png', 'ipro', 5, '2019-11-05 15:57:43', 0),
(16, 'lorem', 'g.png', 'ipro', 5, '2019-11-05 15:57:43', 5),
(17, 'проектировка планов', 'd.png', 'локал', 4, '2019-11-05 15:58:50', 0),
(18, 'дизайнер-практикант', 'd.png', '1', 4, '2019-11-05 15:58:50', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, '«Программирование»'),
(2, '«ТО»'),
(3, '«Экономики»'),
(4, '«Строительство и дизайн»'),
(5, '«Сервиса»');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `nickname`, `Email`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Alexander', 'Storm', 'alexander_storm@gmail.com', 'Узнал много нового!', '2019-11-04 13:00:00', 5),
(2, 'Benny', 'Hill', 'benny_hill@gmail.com', 'Cool article! It was realy nice. For sure.', '2019-11-04 15:21:00', 6),
(3, 'Angry', 'Ajax', 'rodrigo@gmail.com', 'Интерсерно...', '2019-11-05 01:00:00', 7),
(5, 'Toyota center astana', 'vivst our website', 'Assoch@gmail.com', 'Предлагаем Вам стажировку на выгодных условиях', '2019-11-06 08:24:00', 10),
(18, 'as', 'цуацуацу', 'grigon745@gmail.com', 'kjk', '2019-11-08 09:10:05', 14),
(20, 'sfsf', 'auo', 'find1@mail.ru', 'd', '2019-11-08 10:52:22', 5),
(21, 'sfsf', 'auo', 'find1@mail.ru', 'd', '2019-11-08 10:52:30', 5),
(22, 'sfsf', 'auo', 'find1@mail.ru', 'd', '2019-11-08 10:52:36', 5),
(23, 'asf', 'auo', 'ask@mail.ru', 'ап', '2019-11-08 16:11:04', 10),
(24, 'asf', 'auo', 'ask@mail.ru', 'ап', '2019-11-08 16:11:10', 10),
(25, 'as', 'цуацуацу', 'grigon745@gmail.com', 'пап', '2019-11-08 19:06:14', 16),
(26, 'as', 'цуацуацу', 'grigon745@gmail.com', 'пап', '2019-11-08 19:06:17', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `users_fj`
--

CREATE TABLE `users_fj` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fam` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `wxp` varchar(100) NOT NULL,
  `dolzhn` varchar(100) NOT NULL,
  `zp` varchar(100) NOT NULL,
  `spec` varchar(100) NOT NULL,
  `lvl` varchar(100) NOT NULL,
  `mainlang` varchar(100) NOT NULL,
  `othlang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_fj`
--

INSERT INTO `users_fj` (`id`, `name`, `fam`, `telephone`, `city`, `email`, `bdate`, `gender`, `wxp`, `dolzhn`, `zp`, `spec`, `lvl`, `mainlang`, `othlang`) VALUES
(3, 'test', 'test', 'test', 'test', 'find@mail.ru', '2019-11-07', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test'),
(5, 'Андрей', 'Роков', '87077456343', 'г. нур-Султан', 'Andre@mail.ru', '2001-11-08', 'Мужчина', 'имеется', 'Механик', '1500000', 'ТО', '', 'Русский язык', 'Казахский язык'),
(6, '1', '13', '123', '123', '123@hrt.i', '2019-11-08', 'муж', 'не имеется', 'столяр', '123000', 'плотник', 'среднее', 'русский', 'уыкацу');

-- --------------------------------------------------------

--
-- Структура таблицы `users_tj`
--

CREATE TABLE `users_tj` (
  `id` int(11) NOT NULL,
  `too` varchar(100) NOT NULL,
  `kname` varchar(100) NOT NULL,
  `site` varchar(100) NOT NULL,
  `ksot` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fam` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_tj`
--

INSERT INTO `users_tj` (`id`, `too`, `kname`, `site`, `ksot`, `name`, `fam`, `telephone`, `city`, `email`) VALUES
(2, 'ООО', 'Тойота сити Астана', 'toytoa.kz', '50', '1', 'Агапов', '87074176678', 'Астана', 'ayewarface@mail.ru'),
(8, 'ООО', 'Тойота сити Астана', 'toytoa.kz', '50', '1', '2', '3', '3', 'grigon745@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_fj`
--
ALTER TABLE `users_fj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_tj`
--
ALTER TABLE `users_tj`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `users_fj`
--
ALTER TABLE `users_fj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users_tj`
--
ALTER TABLE `users_tj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
