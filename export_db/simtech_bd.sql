-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2021 г., 16:01
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simtech_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mails`
--

CREATE TABLE `mails` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` text,
  `message` text,
  `gender` text,
  `getmessages` text,
  `image_name` varchar(25) DEFAULT NULL,
  `folder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `mails`
--

INSERT INTO `mails` (`id`, `username`, `email`, `subject`, `message`, `gender`, `getmessages`, `image_name`, `folder`) VALUES
(1, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(2, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(3, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(4, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(5, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(6, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(7, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(8, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(9, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(10, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(11, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(12, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(13, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(14, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(15, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(16, 'Александр', 'businessmail@gmail.com', 'Предложение о сотрудничестве', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ.\r\nМы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания.\r\nБуду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(17, 'Александр', 'Sativagodlike@gmail.com', 'Тест отправки сообщения на email', 'Сотрудничая с нами, вы получите самое современное и качественное оборудование в короткие сроки. Поставки осуществляем за один день — для товаров со склада и до нескольких дней — для товаров под заказ. Мы заинтересованы в долгосрочном взаимовыгодном партнерстве и готовы представить Вашему вниманию низкие цены и высокое качество обслуживания. Буду рад сотрудничать, жду Ваш ответ в ближайшее время.', 'male', 'yes', '', '../temp/'),
(18, 'Александр', 'Alexander93ru@mail.ru', 'Хочу стать вашим партнером', 'Тест отправки почты с формы обратной связи №2', 'male', 'yes', '', '../temp/');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
