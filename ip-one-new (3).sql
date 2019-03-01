-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2019 г., 12:04
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ip-one-new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contents`
--

INSERT INTO `contents` (`id`, `name`, `content`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Бизнес-план', '<p class=\"MsoNormal\" style=\"line-height: normal;\">Вход в компанию возможен с покупки продукции Компании на сумму 2500 и более</p>\n<p class=\"MsoNormal\" style=\"line-height: normal;\">В системе есть 3 вида бонусов:</p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Бонус за личное приглашение: Партнер получает на свой счет 20% от первоначальной покупки привлеченного им участника.</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Бонус от оборота структуры: Партнер получает определенный процент в соответствии с его текущим статусом от всех покупок его приглашенных разных уровней</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\">&nbsp;</p>\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; margin-left: auto; margin-right: auto;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\n<td style=\"width: 130.625px; border: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Уровень</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 1</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; text-align: center;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 2</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 3</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 4</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 5</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Менеджер 6</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; border-left: none; padding: 0cm 5.4pt; text-align: center;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><strong style=\"mso-bidi-font-weight: normal;\">Генерал</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 1;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">4%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">5%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">5</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">6</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">7%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">8%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">9</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 2;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">3%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">3%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">4</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">5</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 3;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">3</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">3%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">4</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 4;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Скидка своя</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">10%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">20%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">25</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">30%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">35</span></strong><strong style=\"mso-bidi-font-weight: normal;\">%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">40%</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 5;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Бонус Интернет-магазина</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">3</span></strong><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">3</span></strong><strong style=\"mso-bidi-font-weight: normal;\">0%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">30%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">35%</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">40%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">45%</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">50%</strong></p>\n</td>\n</tr>\n<tr style=\"mso-yfti-irow: 6; mso-yfti-lastrow: yes;\">\n<td style=\"width: 130.625px; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; border-top: none; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Необходимый объем</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2 500р.</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">25&nbsp;000р.</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">100&nbsp;000р.</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">250&nbsp;000р.</strong></p>\n</td>\n<td style=\"width: 97.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">500&nbsp;000р.</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1&nbsp;000&nbsp;000р.</strong></p>\n</td>\n<td style=\"width: 107.625px; border-top: none; border-left: none; border-bottom: 1pt solid windowtext; border-right: 1pt solid windowtext; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2&nbsp;000&nbsp;000р.</strong></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p class=\"MsoNormal\" style=\"line-height: normal;\">&nbsp;</p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Бонус от личных продаж в интернет-магазине: Партнер получает определенный процент с продаж, в зависимости от текущего ранга партнера</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Скидка на продукцию также привязана к рангу партнера</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1;\">&nbsp;</p>\n<h2 class=\"MsoNormal\" style=\"text-align: center; line-height: normal;\" align=\"center\"><span style=\"color: #ff0000;\">АКЦИЯ!!!</span></h2>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"line-height: normal;\">Первая 1000 зарегистрированных партнеров получат несгораемый бессрочный ранг &laquo;Менеджер 3&raquo; при покупке на сумму от 15&nbsp;000 рублей!</p>\n<p class=\"MsoNormal\" style=\"line-height: normal;\">При покупке от 50&nbsp;000 рублей партнер получит также повышенные бонусы за личное приглашение в размере 35% от суммы первого заказа приглашенного на один год с с момента регистрации</p>', '2019-02-18 23:14:21', '2019-02-19 01:53:34', NULL, 'biznes-plan'),
(2, 'О нас', '<section class=\"story\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\"><img class=\"responsive\" src=\"http://localhost/natural-power/public/storage/logo.png\" alt=\"story\" width=\"500\" /></div>\n<div class=\"col-md-6\">\n<div class=\"story-content\">\n<h2>О НАС</h2>\n<p style=\"text-align: justify;\">Наша компания ставит своей целью распространение нового продукта на рынке здоровья, который принесет пользу всем, кто его использует. Мы сами убедились в эффективности препарата и готовы предложить его всем желающим вывести свою жизнь на качественно новый уровень, улучшить свое здоровье, получить больше сил и положительных эмоций!</p>\n<p style=\"text-align: justify;\">Для стимулирования его распространения мы разработали максимально выгодный маркетинг-план(ссылка на соответствующий раздел), не имеющий аналогов на рынке. Особое внимание мы уделили простоте этого плана - чтобы он был понятен каждому без утомительных долгих разъяснений на вебинарах и семинарах. Выгоду сотрудничества с нами Вы сразу видите, едва взглянув на него.</p>\n<p style=\"text-align: justify;\">Именно сочетание достойного продукта и выгодного маркетинг-плана дает нам уверенность в быстром развитии нашей общей компании, ведь именно партнеры, их здоровье и благосостояние, и составляют нашу главную ценность!</p>\n</div>\n</div>\n</div>\n</div>\n</section>', '2019-02-19 00:22:08', '2019-02-19 00:30:23', NULL, 'o-nas'),
(3, 'Акции', '<h2 style=\"text-align: center;\"><span style=\"color: #ff0000;\">Золотая 1000!!!</span></h2>\n<p>&nbsp;</p>\n<p>Торопитесь! Первые 1000 участников получат ощутимые бонусы от Компании!</p>\n<p>Мы очень ценим тех, кто сразу оценил качество нашего продукта и присоединяется к нам в самом начале нашего пути! Поэтому мы предоставляем таким партнерам весомые привилегии:</p>\n<p>При заказе от 15 000 рублей партнеру будет предоставлен бессрочный ранг \"Менеджер 3\", а вместе с ним и повышенные возможности для получения доходов!</p>\n<p>При заказе от 50 000 рублей партнер получит не только бессрочный ранг \"Менеджер 3\", но и повышенные бонусы за личное приглашение - 35% от суммы первого заказа!</p>', '2019-02-19 01:48:00', '2019-02-19 01:48:00', NULL, 'akcii');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(37, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 8, 'slider_id', 'number', 'ID слайдера', 0, 1, 1, 1, 1, 1, '{}', 2),
(39, 8, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 3),
(40, 8, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 4),
(41, 8, 'description', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 5),
(42, 8, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 6),
(43, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(44, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(45, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(46, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 9, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(48, 9, 'img', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 4),
(49, 9, 'mini_description', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(50, 9, 'description', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 6),
(51, 9, 'price', 'number', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 7),
(52, 9, 'points', 'number', 'Баллы', 0, 1, 1, 1, 1, 1, '{}', 8),
(53, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(54, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(55, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(56, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 10, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'date', 'date', 'Дата', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 10, 'img', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(60, 10, 'mini_description', 'text', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 10, 'text', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 6),
(62, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(63, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(65, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 11, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 11, 'content', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 4),
(68, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(69, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(70, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(71, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(72, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 12, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 12, 'date', 'date', 'Дата', 0, 1, 1, 1, 1, 1, '{}', 3),
(75, 12, 'img', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(76, 12, 'mini_description', 'text', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(77, 12, 'text', 'rich_text_box', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 6),
(78, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(79, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(80, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(81, 9, 'is_present', 'checkbox', 'Подарочный набор', 0, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(8, 'sliders', 'sliders', 'Слайдер', 'Слайдер', 'voyager-photo', 'App\\Slider', NULL, NULL, 'Слайдер', 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-13 00:41:21', '2019-02-13 03:13:44'),
(9, 'products', 'products', 'Продукт', 'Продукты', 'voyager-shop', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:23:56', '2019-02-28 05:51:19'),
(10, 'news', 'news', 'Новость', 'Новости', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:47:06', '2019-02-19 02:35:03'),
(11, 'contents', 'contents', 'Контент', 'Контент', 'voyager-pen', 'App\\Content', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:57:14', '2019-02-18 23:59:12'),
(12, 'stocks', 'stocks', 'Акция', 'Акции', NULL, 'App\\Stock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-28 02:32:04', '2019-02-28 02:36:19');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'site', '2019-02-12 23:39:25', '2019-02-12 23:39:25');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, 5, 3, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', '#000000', NULL, 7, '2019-02-12 22:59:27', '2019-02-28 02:35:22', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-02-12 22:59:27', '2019-02-28 02:35:18', NULL, NULL),
(6, 1, 'Меню', '', '_self', 'voyager-list', '#000000', NULL, 1, '2019-02-12 22:59:27', '2019-02-18 23:42:46', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2019-02-12 22:59:27', '2019-02-18 23:42:35', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2019-02-12 22:59:27', '2019-02-18 23:42:35', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2019-02-12 22:59:27', '2019-02-18 23:42:35', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2019-02-12 22:59:27', '2019-02-28 02:35:18', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 7, '2019-02-12 22:59:27', '2019-02-18 23:42:35', 'voyager.hooks', NULL),
(17, 1, 'Слайдер', '', '_self', 'voyager-photo', '#000000', NULL, 5, '2019-02-13 00:41:21', '2019-02-28 02:35:22', 'voyager.sliders.index', 'null'),
(18, 2, 'Новости', '/news', '_self', NULL, '#000000', NULL, 1, '2019-02-13 02:24:14', '2019-02-27 04:33:29', NULL, ''),
(26, 1, 'Продукты', '', '_self', 'voyager-shop', NULL, NULL, 2, '2019-02-15 04:23:56', '2019-02-18 23:42:35', 'voyager.products.index', NULL),
(27, 1, 'Новости', '', '_self', 'voyager-news', NULL, NULL, 4, '2019-02-15 04:47:06', '2019-02-28 02:35:22', 'voyager.news.index', NULL),
(28, 1, 'Контент', '', '_self', 'voyager-pen', NULL, NULL, 6, '2019-02-15 04:57:14', '2019-02-28 02:35:22', 'voyager.contents.index', NULL),
(29, 2, 'Бизнес', '/bussiness', '_self', NULL, '#000000', NULL, 5, '2019-02-18 23:43:33', '2019-03-01 03:03:23', NULL, ''),
(30, 2, 'Акции', '/stocks', '_self', NULL, '#000000', NULL, 2, '2019-02-18 23:43:59', '2019-02-28 02:33:55', NULL, ''),
(32, 2, 'Продукты', '/products', '_self', NULL, '#000000', NULL, 3, '2019-02-18 23:44:17', '2019-02-27 04:33:39', NULL, ''),
(35, 2, 'О компании', '/o-nas', '_self', NULL, '#000000', NULL, 8, '2019-02-19 00:23:50', '2019-02-28 22:35:07', NULL, ''),
(37, 1, 'Акции', '', '_self', 'voyager-news', '#000000', NULL, 3, '2019-02-28 02:32:04', '2019-02-28 02:35:39', 'voyager.stocks.index', 'null'),
(38, 2, 'show rooms', '/showrooms', '_self', NULL, '#000000', NULL, 4, '2019-02-28 22:34:05', '2019-02-28 23:45:25', NULL, ''),
(39, 2, 'Отзывы', '', '_self', NULL, '#000000', NULL, 6, '2019-02-28 22:34:26', '2019-02-28 22:34:31', NULL, ''),
(40, 2, 'Информация', '/', '_self', NULL, '#000000', NULL, 7, '2019-02-28 22:35:05', '2019-02-28 22:35:07', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mini_description` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `img`, `mini_description`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'открытие шоурума в г.Иркутск', '2019-02-21', 'posts/zxryQIXtoO3itV9VYdhBdR9a0im2MWsJ8ukasUn1.jpeg', NULL, '<p style=\"text-align: center;\">Уважаемые партнеры!</p><p>Сообщаем Вам об официальном открытии шоу-рума в г. Иркутск! &nbsp;На официальной открытии присутствовали топ-лидеры из Москвы. Главными спикерами были владельцы шоу-рума в г.Москва - Александр и Регина Горбуновы. Встреча прошла в дружной и радостной атмосфере. Партнеры провели презентацию и дегустацию наших уникальных продуктов, а так же провели обучение, ответили на важные вопросы.</p><p>Ждем Вас по адресу: <span data-address=\"г.Иркутск, ул.Горная 4\" data-address-query=\"город иркутск улица горная 4\" data-ids=\"168040561096269823\">ул.Горная 4</span>, Бизнес-центр на Горной, офис 407</p><p>Приглашайте всех партнеров, а также тех, кому ценное своей время, жизнь и энергия!&nbsp;</p><p>Контактное лицо: Ирина Лютина (владелец шоу-рума в г.Иркутск) +7 924 707 83 05, +7 902 171 01 10</p><p><img src=\"https://localhost/ip/public/storage/images/f6JvO4x0KgNhhBptujvkskOo0NeeT8suZQQopNes.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>&nbsp;</p><p>&nbsp;С уважением, администрация &quot;IMAGINE PEOPLE&quot;</p><p>&nbsp;</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(2, 'Региональный форум в Москве', '2019-02-21', 'posts/239CIv303sPGGwd9vGr0JxWRAVIJODHihn16qi8r.jpeg', NULL, '<p style=\"text-align: center;\"><strong><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(71, 85, 119);\">Уважаемые партнеры!</span></strong></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">После декабрьского грандиозного бизнес-форума &quot;Absolute Energy&quot;, команда партнеров стартует в эстафете форумов по городам России. Мы рады сообщить вам о предстоящем Региональном форуме &quot;Абсолютная энергия&quot;, который пройдет 16-го марта 2019 года, так же в г. Москва. Вас ждет уникальная информация от сооснователя компании &quot;IMAGINE PEOPLE&quot; Вячеслава Терентьева о стратегии компании. Вячеслав проведет закрытый тренинг для партнеров в текущем ранге &quot;Региональный директор&quot; за февраль, а так же для тех кто закроет ранг до 14 марта. С зажигательной речью выступит топ-лидер компании - Татьяна Воинцева, участники консультативного совета и другие топ-лидеры проведут обучение, вас ждут новые встречи и знакомства с лидерами наших команд.</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Почему нужно быть на форуме?</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">1. Получите ценные технологии для развития вашего бизнеса</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">2. Узнаете как заработать свои первые 100 тысяч и обучите этому своих партнеров</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">3. Вам расскажут о современных инструментах и каналах продаж</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">4. Получите инструкцию как открыть свой шоу-рум и наладить его успешную, эффективную работу с хорошими доходами</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">5. Познакомитесь с лидерами. Партнеры, входящих в 10-ку топ-лидеров компании, расскажут о своем опыте.</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">6. Услышите истории успеха</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">7. Так же вас ждет презентация продукта и фотосессия</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial, Helvetica, sans-serif;\"><strong>План мероприятия:</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">9:00-10:00 - регистрация участников закрытого тренинга</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">10:00-11:30 - закрытый тренинг от сооснователя компании Вячеслава Терентьева ( только для партнеров, в текущем ранге &quot;Региональный директор&quot; в феврале и закрывших ранг до 14 марта.&nbsp;</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">11:30-12:00 перерыв</span></span></span></p><p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(71, 85, 119);\">12:00-19:00 проведение форума для всех партнеров</span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Приезжайте сами и привозите на форум большую и успешную команду единомышленников! Ждем вас и ваших партнеров на встрече, ведущей к успеху и победам!</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Адрес:</strong> г.Москва, отель &quot;Holiday Inn&quot;, ул. Лесная 15, м. Белорусская</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Стоимость билета&nbsp;</strong>1 700 руб.&nbsp;</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Оплату за билеты можно произвести следующими способами:</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">1. в шоу-руме №71 в г. Москва по адресу: ул.Чаянова 14, владелец - Уражевская Елена&nbsp;</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">2. в шоу-руме №56 в г. Москва по адресу: Тверская застава 3, владельцы - Александр и Регина Горбуновы</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">3. можно перечислить на карту Нуждиной Ирине Геннадьевне- 4279 3800 2313 6858 ( в комментариях ничего не писать).</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Создаем чат и там публикуем списки: время перечисления,ФИО и город.&nbsp;</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Билеты уже в продаже!</strong></span></span></span></p><p><img src=\"https://localhost/ip/public/storage/images/0YrtT9F2FxUgzuffxBqn5UdYMUh4wq8yZ0lNLTvz.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">С уважением, администрация &quot;IMAGINE PEOPLE&quot;<br></span></span></span></p><p><br></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(3, 'новый адрес шоу-рума в г.Уфа', '2019-02-15', 'posts/XqJZmGt9CARSaOkKpFSH21LIfqYiktGoMs3JFFa5.jpeg', NULL, '<p>Уважаемые партнеры!</p><p>Шоу-рум в г.Уфа отметил новоселье! Теперь офис находится по адресу: Верхнеторговая площадь 6, Бизнес-центр &quot;Нестеров&quot;.&nbsp;</p><p><em>&quot;Выбирая место, нам хотелось, чтобы оно соответствовало нашей компании, нашей продукции и нашим партнерам. Поэтому мы выбрали офис в самом лучшем Бизнес-центре класса А. На новоселье присутствовали партнеры компании. Встреча прошла в празднично-деловой атмосфере. По другому и быть не могло, потому что в компанию приходят особенные, приветливые люди, готовые делиться своей добротой и любовью. Выступили лидеры компании; Венера Валеева, Валентина Жилко, Алена Кирзнер, Валентина Сербина, Ольга Миняева, Наталья Ганеева. К сожалению, не всем удалось придти на это событие.&nbsp;</em></p><p><em>Гости с удовольствием смотрели и слушали выступление артистов Башкирского ансамбля &quot;Мирас&quot;. Встреча закончилась обменом опытом, новыми знакомствами, планами и чаепитием.&quot;</em></p><p style=\"text-align: right;\"><em>Владельцы шоу-рума в г.Уфа - Василь и Разифа Мугтасимовы</em></p><p><br></p><p><img src=\"https://localhost/ip/public/storage/images/7JwFKIrfYMzYglf6VezrYyhSwIGyQ5CjWUT89wmI.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><br></p><p><img src=\"https://localhost/ip/public/storage/images/aSqXRwW6PeygT3jyLLCuipDpicrfHZK6XjwYbpn6.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/YntCPZGTv6o7KCR0JTiwtGhwssgSLgSS7wJ4xEem.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/pXSznSpExRi3SRINua6Bpq7y1NROjP3OEKXB4Q3G.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/CUZSG6TtnV0jeXz1DpnlIJGQEZZcRPocZVsaGLBk.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/23tZFSHlzIxOA9WE1viV69fTgFDve5R0SZK4TPoT.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/HBMCHiwJ2GlSEkEWSs54bhhY4qW2BGZrKCEqi4fF.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(4, 'Важная информация для партнеров компании', '2019-02-15', 'posts/fRMIpcsO0P9CEBKEaAD9a7eT25Tjpowf0zXsb2nx.png', NULL, '<p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\">Уважаемые партнеры!</span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Хотим сообщить вам важную информацию касательно ввода и вывода доходов партнеров компании IMAGINE PEOPLE.</strong></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>С 1-го марта компания переходит на централизованный ВВОД и ВЫВОД финансовых средств. Это означает, что с 1-го марта 2019 г. переводы у.е. между кабинетами будет прекращено. Получить свои бонусы (возвратную скидку) партнер сможет лишь 3-мя способами:</strong></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">1. Если вы партнер компании и у вас есть ИП, то вывод начисленных бонусов за предыдущий месяц будет производиться на расчетный счет ИП.</span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">2. Если вы партнер компании, но у вас нет ИП, то вывод начисленных бонусов за предыдущий месяц модно будет произвести по согласованию с другим партнером, имеющим ИП, так же на расчетный счет ИП.</span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">3. Если вы новичок или имеете небольшие доходы, то получить свои бонусы (возвратную скидку) сможете в шоу-руме , к которому будете прикреплены, но не более &nbsp;200 у.е. в месяц.</span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Так в апреле, вы сможете получить частично или полностью свои бонусы (возвратную скидку) за март месяц.</span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">ВНИМАНИЕ! Просим Вас внимательно ознакомиться с более подробной информацией в &quot;Положении о вводе и выводе средств компании&quot; во вложении, т.к. эти правила будут действовать уже с 01 марта 2019 года.</span></span></p><p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\">Все накопленные бонусы и дивиденды и (у.е.) до 1-го марта 2019 г остаются активны для приобретения продукции компании. Возможность вывода данных накопленных средств будет чуть позже.</span></p><p>&nbsp;<span style=\"font-family: Arial,Helvetica,sans-serif;\">С уважением, администрация &quot;<span style=\"font-size: 18px;\">IMAGINE PEOPLE</span>&quot;</span></p><p><a class=\"fr-file\" href=\"https://ip-one.net/storage/files/hlJLvyoKZmZSPVTxQmw7tbPUa1Y1dXzRPGM0zjxa.docx\" target=\"_blank\">Положение о Выводе и Вводе денежных средств.docx</a></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(5, 'Защитные лейблы', '2019-02-12', 'posts/4J8NrRWZwUmPMGPRgepe9b7l8QZMGut43qjzIHNe.jpeg', NULL, '<p style=\"text-align: center;\">Уважаемые партнеры!</p><p>Уведомляем вас, что новая партия упаковок с продуктом &quot;ALFA Дигидрокверцетин&quot; будет с другими защитными этикетками. Так как использовавшимися раннее этикетки не сохраняют свои защитные функции при транспортировке продукта, в связи с этим они будут заменены на &nbsp;этикетки старого образца - круглый голографический лейбл с логотипом &quot;IMAGINE PEOPLE&quot; и надписью &quot;Made in Kazakhstan&quot; диаметром 20мм.</p><p>С Уважением, администрация &quot;IMAGINE PEOPLE&quot;</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(6, 'Ждем Вас на Бизнес-форуме в г.Уфа!', '2019-02-04', 'posts/bmMExMmiHexj009b4Wc7wY5CPcdCOa8wDw2Wt4Po.jpeg', NULL, '<p style=\"text-align: center;\">Дорогие друзья!</p><p>С огромным удовольствием сообщаем Вам, что 16-17 февраля в г.Уфа состоится Бизнес-форум Урала &quot;Абсолютная энергия&quot;! В бизнес-форуме примут участие партнеры из разных городов: Оренбурга, Ижевска, Челябинска, Альметьевска, Тюмени, Стерлитамака, Ишимбая, Дюртюли, Салавата, Кумертау, Туймазы, Октябрьска, Нового Уренгоя, Тарко-сале, Снежинска, Казани, Лениногорска, Бугульмы, а так же с районных центров Башкирии. Участников форума ждут два незабываемых дня вдохновения и энергии, приветствие от основателя компании Вячеслава Терентьева, выступление топ-лидера Татьяны Воинцевой. Так же множество полезной информации от других топ-лидеров компании о возможностях и перспективах развития, от специалистов о наших фантастических продуктах. Лидеры поделятся опытом построения международного бизнеса.</p><p>Форум Урала - событие меняющее жизнь!</p><p><br>Ждем вас по адресу: г.Уфа, Верхнеторговая площадь, гостиница &quot;Holiday&quot;, конференц зал.</p><p><img src=\"https://localhost/ip/public/storage/images/tqq9wwCfUHzHFmtQR9yzE6QUXe3UbOyJFrOrM0yP.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/z8MdAecKrTLcMAP5kJyoGQS13nutGPFnbIaBImdG.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(7, 'Конференция в г.Геленджик', '2019-02-01', 'posts/y91kbO4eRYThjPyxCfOzgtPejTY9Ae4CpxL7WUea.jpeg', NULL, '<p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(40, 50, 78);\">Уважаемые партнеры! ВНИМАНИЕ!&nbsp;</span></p><p><span style=\"color: rgb(40, 50, 78);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Геленджик зажигает звезды! 02 февраля 2019г Лидер компании &quot;IMAGINE PEOPLE&quot;, владелец шоу-рума в г.Краснодар Елена Севрикова &nbsp;и владельцы шоу-рума в г.Геленджик, &nbsp;семейная пара Николай и Ирина Чернышевы, приглашают всех партнеров и гостей компании на Первую городскую конференцию в г.Геленджике &quot;Живая вода &nbsp;21 века&quot;.&nbsp;</span></span></span></p><p><span style=\"color: rgb(40, 50, 78);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Ждем Вас по адресу: г.Геленджик, ул. Горького №24-26, уг. ул. Толстого №22, Отель &laquo;CITY PLAZA&raquo;, конференц зал. Начало в 13:00&nbsp;</span></span></span></p><p><span style=\"color: rgb(40, 50, 78);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Продолжительность встречи 4 часа. Вход свободный.&nbsp;</span></span></span></p><p><span style=\"color: rgb(40, 50, 78);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp;Предварительная запись по тел. &nbsp;+7 989 8261045 Николай, Ирина или +7 918 6925131 Елена</span></span></span></p><p><img src=\"https://localhost/ip/public/storage/images/rsldZyV15xAWxwPEm33EKGNqMMZ0PB0pb0Jh3H9l.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/OhqpEUyWUv2M09QYnzkkD8RbGbb7BKjaQ6CDtY88.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(8, 'акции февраля', '2019-02-01', 'posts/SGRvMRpnha65xrJOnJSsbJ5Fj6d0JB6IbGD7sDwk.jpeg', NULL, '<ol><li style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><br><span style=\"color: rgb(40, 50, 78);\">Уважаемые партнеры!&nbsp;</span></span><ol style=\"text-align: left;\"><li style=\"text-align: center;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">На февраль у нас запланировано для вас много акций!<span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong><br></strong></span></span></span></span></span></li><li style=\"text-align: justify;\"><br></li></ol></li></ol><ul><li style=\"text-align: justify;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>1. Скидка на Монокейсы Absolute Energy box и G-bio box.&nbsp;</strong></span></span></li><li style=\"text-align: justify;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Только с 15 по 28 февраля</strong> стоимость <strong>Монокейса Absolute Energy box всего 320 у.е, кол-во баллов 120,&nbsp;</strong></span></span></li><li style=\"text-align: justify;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; с</span></span><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">тоимость <strong>Монокейса G-bio box всего 200 у.е., кол-во баллов 75. &nbsp;</strong></span></span></li><li style=\"text-align: justify;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Спешите приобрести! Акция действительна для всех партнеров!</span></span></li><li style=\"text-align: justify;\"><br></li></ul><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>2. Акция &quot;Подарок при регистрации&quot;.&nbsp;</strong>Период действия акции с 01 по 28 февраля.&nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">При регистрации компания дарит новым партнерам подарки!&nbsp;</span></span></span></p><ol><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">на пакет &quot;Старт&quot; партнер получает в подарок 1 Alfa ДГК</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">на пакет &quot;Профессионал&quot; партнер получает в подарок 3 Water for life и 1 Alfa ДГК</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">на пакет &quot;Мега&quot; партнер получает в подарок 6 Water for life и 2 Alfa ДГК</span></span></span></li></ol><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><br></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>3. &nbsp;Акция &quot;Подарочные наборы в новом составе&quot;.&nbsp;</strong></span><strong><span style=\"color: rgb(40, 50, 78);\">Период действия акции с 01 по 28 февраля</span></strong><span style=\"color: rgb(40, 50, 78);\"><span style=\"color: rgb(40, 50, 78);\"><br></span></span></span></span></p><ol><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Набор №1</strong></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Clear Space (4-х гран) - 1 шт<br>Water for life - 1 шт<br>Absolute Energy - 1 шт<br></span></span></span></li><li><br></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Цена без скидки - 200 уе<br>Цена со скидкой - &nbsp;140 уе</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">50 баллов</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Экономия 60 уе<br></strong><br><strong>Набор №2</strong></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">&nbsp;Clear Space (4-х гран) - 1 шт<br>Water for life - 1 шт<br>Absolute Energy - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">БТК G-Bio - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br>Цена без скидки - 250 уе<br>Цена со скидкой - &nbsp;175 уе</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">60 баллов</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Экономия 75 уе</strong><br><br><strong>Набор №3</strong></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Clear Space (4-х гран) - 1 шт<br>Water for life - 1 шт<br>Absolute Energy - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">БТК G-Bio - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">ALFA ДГК - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br>Цена без скидки - 330 уе<br>Цена со скидкой - &nbsp;230 уе<br>80 баллов</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Экономия 100 уе</strong><br><br></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong><span style=\"color: rgb(40, 50, 78);\">Набор №4</span></strong></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Clear Space (4-х гран) - 1 шт<br>Water for life - 1 шт<br>Absolute Energy - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">БТК G-Bio - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">ALFA ДГК - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Тоник для глаз W nature - 1 шт</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br>Цена без скидки - 340 уе<br>Цена со скидкой - &nbsp;238 уе<br>85 баллов</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Экономия 102 уе</strong></span></span></span></li></ol><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br><strong>4. АКЦИЯ &quot;Комплекс функционального питания в п</strong><strong>одарок!&quot;&nbsp;</strong><strong>Период действия акции с 01 февраля по 30 апреля.</strong></span></span></span></p><ul><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Выполните следующие условия и получите новинку от компании &quot;Комплекс функционального питания&quot; в подарок:</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;заказы на 100 баллов и более с 01 по 28 февраля&nbsp;</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;заказы на 100 баллов и более с 01 по 31 марта</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(40, 50, 78);\">заказы на 100 баллов и более с 01 по 30 апреля&nbsp;</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Заказы могут быть накопительными в течение месяца, но обязательно в каждом месяце действия акции личный объем должен быть не менее 100 баллов.</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">Акция действует на каждые 100 баллов, выполненные в течение месяца. Например, если партнер выполняет по 200 баллов личного объема в каждом месяце действия акция, то он получает в подарок 2 комплекса функционального питания в подарок. Подарки выдаются после окончания акции.&nbsp;</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\">В акции могут участвовать все активные партнеры, также партнеры сделавшие апгрейд.</span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><strong>Бонус!</strong> При выполнении личного объема на каждые 100 баллов в любом месяце действия акции партнер дополнительно получает 1 тоник для глаз &quot;W nature&quot; в подарок! Например, если партнер <span style=\"color: rgb(40, 50, 78);\">выполняет по 200 баллов личного объема в любом месяце действия акция, то он получает 2 <span style=\"color: rgb(40, 50, 78);\">тоника для глаз &quot;W nature&quot;&nbsp;</span>в подарок.&nbsp;</span></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(40, 50, 78);\"><br></span></span></span></li><li><span style=\"color: rgb(40, 50, 78); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\">С уважением, Администрация &quot;IMAGINE PEOPLE&quot;</span></li></ul>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(9, 'АКЦИИ', '2019-01-15', 'posts/DXZssUsYWD69zMJxsIUX1QIeJJ5qVcwKaw83dDlW.jpeg', NULL, '<p><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\">Уважаемые партнеры!<br>Рады сообщить вам о новых промоушенах на 2019 год.<br><br></span><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 24px;\"><strong>1. Акция &laquo;Бизнес-путешествие с основателями компании на о.Кипр&raquo;</strong></span><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><br><br>Кипр - островное государство, в теплом <span data-address=\"Средиземном море\" data-address-query=\"Средиземном море\" data-ids=\"168040561096268954\">Средиземном море</span>, с очень чистыми пляжами и хорошим сервисом и удивительной природой.<br>Программа отдыха:<br>1 день: тренинги от основателя компании Вячеслава Терентьева.<br>Тренинг это разновидность обучения, цель которого развитие умений, &nbsp;навыков и деловых качеств команды. В настоящее время именно такая форма обучения наиболее эффективна во всём мире.<br><br>2 и 3дни: Экскурсионные<br>Кипр считается скоплением святых мест, ведь здесь жили известные проповедники и хранились многие христианские ценности. Паломники всего мира едут на Кипр поклониться святыням. Да и нам интересно будет взглянуть на храмы, монастыри, религиозные памятники и реликвии и другие достопримечательности острова.<br>4 день: отдых. Отдых на Кипре &ndash; это чистейшие пляжи, покрытые вулканическим песком, разнообразная кухня. Здесь прекрасный, мягкий климат и, наверное, самый чистый в мире воздух.</span></p><p><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><strong>Чтобы квалифицироваться на поездку, необходимо выполнить следующие условия:</strong><br>1. с 14.01 по 30.04 закрыть 500 степов<br>2. в апреле месяце открыть или подтвердить Федерального Директора<br>3. иметь в апреле 2-х лично приглашенных в квалификации Федеральный Директор ( одного в одной ветке и одного в другой )<br><img src=\"https://localhost/ip/public/storage/images/WdgfvGfVpDMI1kzoICiIX44JAJeV2F2TxmPrc3T1.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></span></p><p><img src=\"https://localhost/ip/public/storage/images/JhGzbvsTnZhbi6X0iso1ozmOzDLC3NqO4nYJJPqi.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/Pl5OpG2WVZz06czzIYMDuLHWOVmCz1hh5KviFADN.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 24px;\"><strong>2. Акция &laquo;Мой автомобиль&raquo;</strong></span><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><br>В прошлом году два партнера компании уже стали обладателями автомобилей марки Mercedes Benz , и в этом году и у других партнеров есть такой шанс!<br><br><strong>Чтобы получить от компании автомобиль марки Mercedes Benz* в ПОДАРОК</strong>, необходимо выполнить следующую квалификацию:<br>1. с 14.01 по 31.05 закрыть 1250 степов<br>2. в мае месяце открыть или подтвердить ранг Международного Директора<br>3. иметь в мае месяце 4-х лично приглашенных в квалификации Федеральный Директор ( два в одной ветке и два в другой )<br><img src=\"https://localhost/ip/public/storage/images/rFOtYvrdMzFbPsSSYi6MYHiqlcZPMmI3SPegxCfd.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></span><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><em>*внешний вид фактического приза может &nbsp;отличаться от его изображения в рекламных материалах представленных организатором для ознакомления с акцией</em></span><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><br>С уважением, администрация &laquo;IMAGINE PEOPLE&raquo;&nbsp;</span></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(10, 'презентация в г.Краснодар', '2019-01-11', 'posts/2HDOw5Awlq4RxYJhz7Y91uAXn24ItOmuOaqvch3V.jpeg', NULL, '<h3><strong>УВАЖАЕМЫЕ ПАРТНЕРЫ! ПРИГЛАШАЕМ ВСЕХ НА ГОРОДСКУЮ ПРЕЗЕНТАЦИЮ КОМПАНИИ IMAGINE PEOPLE в г.Краснодар!<br></strong></h3><h4>&nbsp;</h4><h4><strong>В программе:</strong></h4><p>1. &nbsp;Презентация продукта.<br>2. &nbsp;Дегустация Water for life, &nbsp;Absolute Еnergy и тоник для глаз W nature.<br>3. &nbsp;Врач Лариса Брюханова ответит на ваши вопросы.<br>4. &nbsp;Партнеры поделятся своими результатами. Вы можете принять участие в чаепитии по завершению мероприятия<br>(сладости к чаю партнеры приносят по желанию).&nbsp;</p><p>Начало события 12 января в 12-00.</p><p>Ждем вас! Приходите сами, приглашайте своих друзей.</p><p>Запись участников на событие по тел. +7 918 692 51 31 (WhatsApp)</p><p>С уважением, владелец шоу-рума в г. Краснодар, Елена Севрикова</p><p>Адрес: <span data-address=\"г. Краснодар, ул. Красная 124 офис\" data-address-query=\"город краснодар улица красная 124 офис\" data-ids=\"167759086119558102\">г. Краснодар, ул. Красная 124 офис</span> 302/304 конференц зал.</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(11, 'Акции января!', '2019-01-02', 'posts/G0i10YyYM1q7SBf3ENo46o7RtcY5QFBxdPjtcL1I.jpeg', NULL, '<p style=\"text-align: center;\"><span style=\"font-size: 18px;\"><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif;\">Уважаемые партнёры!</span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Сообщаем Вам об акциях на январь. В январе продолжается скидка на подарочные наборы, а так же при единовременном заказе продукции на 150 &nbsp;баллов и выше в подарок получаете пятигранную пирамидку. <br></span></span></span></p><ul><li style=\"text-align: center;\"><br><ul><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(184, 49, 47);\"><strong><u>1. Акция &quot;Снегопад цен&quot;. Подарочные наборы со скидкой 30%</u></strong></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span><span style=\"color: rgb(184, 49, 47);\"><strong>Новогодний набор №1:</strong> &nbsp;</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">&nbsp;Water for life - 2 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">&nbsp;БТК G-Bio - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Absolute Energy - 1 шт&nbsp;</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50<br></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(184, 49, 47);\"><strong>Новогодний набор №2:</strong></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Clear space- 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span><span style=\"color: rgb(184, 49, 47);\"><strong>Новогодний набор №3:</strong></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">ДГК ALFA- 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span><span style=\"color: rgb(184, 49, 47);\"><strong>Новогодний набор №4:</strong></span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Absolute Energy - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Clear space- 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">ДГК ALFA- 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Бутылка с логотипом - 1 шт</span></span></span></li><li style=\"text-align: left;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 270 у.е. Количество баллов - 100</span></span></span><ul><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Период действия акции с 01 по 31 января включительно!</strong></span></span></span></li></ul></li></ul></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><br></span><span style=\"color: rgb(184, 49, 47);\"><strong><u>2. Акция &quot;Пятигранная пирамида в подарок&quot;</u></strong></span></span></span></li><li><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><br></span></span></li></ul><div><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">При единовременном заказе любой продукции на 150 баллов в подарок получаете пятигранную пирамиду Clear Space в подарок! &nbsp; &nbsp;</span></span></span></div><div><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Количество заказов не ограниченно! <br></strong></span></span></span></div><div><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Выдача подарков по итогам акции начнется в конце февраля 2019 года. &nbsp;&nbsp;</span></span></span></div><div><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(184, 49, 47);\"><strong>Внимание! Заказ должен быть единовременным!</strong></span></span></span></div><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Период действия акции с 01 по 31 января включительно!</strong></span></span></span></p><p><span style=\"font-size: 18px;\"><em><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif;\">С уважением, Администрация &quot;IMAGINE PEOPLE&quot;</span></em></span></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(12, 'Закрытие декабря и профилактические работы', '2018-12-31', 'posts/fwilU5XROplKSJjw8KnlGRooe5hQMzVMV9sTEDIi.jpeg', 'Дорогие партнеры! Поздравляем Вас с наступающим Новым Годом!', '<p>Дорогие партнеры! Поздравляем Вас с наступающим Новым Годом, желаем Вам успехов в нашем общем деле, здоровья и счастья! Сообщаем, что декабрь будет закрыт в 21:00 по московскому часовому поясу, затем система будет закрыта на техническое обслуживание до 2 января 00:00.</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(13, 'Видео презентация продуктов компании', '2018-12-27', 'posts/diWK6VtD4MVMOq6ZG7FTXFTnYqUe1QR2BNM7rZdk.jpeg', NULL, '<p>Уважаемые партнеры!&nbsp;</p><p>С радостью предлагаем ознакомиться с видео презентацией о компании &quot;IMAGINE PEOPLE&quot; и продуктах компании. <span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/MJrJsk8N-8c\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span></p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/uMKt2WedkE8\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span><br></p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/K3vMUqrqN6U\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span></p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/zO7V01Lq8a0\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span><br></p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/WDQI5ism0dQ\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span></p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/sEOw5K_RXLk\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(14, 'График работы ЦО', '2018-12-27', 'posts/PjI1wvtdQg5zoAXNihWTLNUNaTMsbCAz7kaJ22DE.jpeg', NULL, '<p>Дорогие друзья, поздравляем вас с Новым годом! Желаем вам в грядущем году мира, добра, здоровья, как можно больше тепла и уюта, неисчерпаемых жизненных сил, достижения поставленных целей. Пусть новый год сопровождается только положительными эмоциями и знаменательными событиями.</p><p>С уважением, коллектив компании &quot;IMAGINE PEOPLE&quot;</p><p>Сообщаем Вам, что центральный офис начинает свою работу с 10 января 2019 года!</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL);
INSERT INTO `news` (`id`, `title`, `date`, `img`, `mini_description`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'Фото-отчет: Бизнес форум Absolute Energy', '2018-12-27', 'posts/h7CWXJzkuYXDSVhKlF8Dz5AcXJR53QoMaU4k2SPd.jpeg', NULL, '<p style=\"text-align: center;\">Уважаемые друзья!</p><p>15-16 декабря прошел пятый Бизнес Форум Absolute energy &nbsp;в г. Москва. Хотим поделиться с вами небольшим фото отчетом! Наш форум посетили более 350 партнеров с разных городов и стран.</p><p><img src=\"https://localhost/ip/public/storage/images/utBc0E6QrBnhqck0xHHdytNvssViui00iun3E3RN.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/CopAFCaqmU64yKrReKXp6gAEyZCkeXBSnGmtzgVg.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/irEM0Dqqv14V1cbuBYHuciYHlezwLiseYGHHmK9h.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/bncqnrb7LCZzCbqcU1uQvprZODMauaacaaqCAIKa.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/Jp4xBX2iQTl65vh9noL6OpYezJRUGe6XidVZjOj4.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>&nbsp;Два дня форума прошли очень быстро, партнеры получили много полезной информации, прошли обучающий тренинг от основателя компании Вячеслава Терентьева.</p><p><img src=\"https://localhost/ip/public/storage/images/0VMFLNaqrHPZHZv2bgFpZiBtN79gYUW8oHdY9ego.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/7iTsYIUUqN4J5TSd3nUFOBJHXurBv7T9rkXoMfHb.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/xDj8L1GoyiSN4mGexf9aR8YweKZuiTfONOefRKpQ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/XpYeWWjTWRmPxYT1fFPywelXCOhv9sJT9ZiS73fO.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/aBDQhjLsUovA0bltIJDud9KyFH9R2HLOEIiGxhcq.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/n371A0dz8M0FXN5qmL64x9EXKsyBWtLpFLSQCpZH.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/CQWiEODWve1iq2yLa7T68y4q5GJ4w72SBQIxRRjx.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/Gf9jBNdA1DfDtx7gblgjSHglgvSQjhKLbPpACgmi.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/jDcyHpf6247hVTq2k5LZ8MlA3fIgyujOEkOyLQsJ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Была проведена официальная презентация новинки компании - Тоник для глаз &quot;W nature&quot;. Многие успели оценить их действие, т.к. каждый участник форума получил их в подарок.</p><p><img src=\"https://localhost/ip/public/storage/images/fjuWcDHS3PmxKFCfXEdBxUXMaVJaL6D1K9glijMJ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/CKdC633jqtTKHgEt5R5iPnS5g4SUrNcvQ3XxCMCH.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Топ-лидеры компании поделились своим опытом о построении бизнеса.&nbsp;</p><p><img src=\"https://localhost/ip/public/storage/images/R6eSn63u3P6ED3WiUA5mqdNq3FYHjq9IaIUnocA9.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/3adLEbefBzbuKq8qoxRVqvwgNKJ8QFbq4GEDDwg9.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/vJ7R1r64keERAQObjMH6p5PUVAgqaiqNucrSQyl0.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/C2l6nH3RcBoeXnK7j9sjuK3edQfr5Fm6ka67gyJ6.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/ok13SKlJV2E90QvIoP508ZTnHDLGt5WeF9k6nnK1.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/T9I0j3PWIXesM7ElB8y5YFbHRblKsln0VyKr3kDs.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Самая приятная часть: награждение партнеров по номинациям: лучшие наставники, лучшие шоу-румы, победители в акции &quot;Путешествуй с компанией&quot;, участников лидерского совета компании и...</p><p><img src=\"https://localhost/ip/public/storage/images/YUX879mJXNTojr4mOdAaYBbwcBndeslOo3S8dUp4.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/11AaRM4GOwBiaLhqn2BNJfJJ0l971czRtNMHaG3G.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/vjVAK8a5UxlQryGpcwFshiL0s0L0izmRUbGs6Y0T.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/A0t8g4AJV0EJFa57vpIgYHGYPC2wCYNqiIJ2H2Mn.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/5qB5MJ22JYMKhpQSE1faefoYjiRhCNcKbNdUauJ5.png\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Победители новой акции &quot;Мой автомобиль&quot;</p><p><img src=\"https://localhost/ip/public/storage/images/3WGyKbIbCrvrZzqG22ZvPMtHyDwwV42q6BR29iRZ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>и их автомобили, которые ждали их сразу у входа в отель Рэдиссон!</p><p><img src=\"https://localhost/ip/public/storage/images/YQxIpQpep6O0b2lUw4yv5AndNyNAIix3zx4qEecN.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/X8JGi3IdiE2jeAjvHuLcZymaMKOmriuFeTauqm2Z.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Еще больше фото с форума смотрите здесь: <a href=\"https://yadi.sk/d/LaeRQGymbNnD-w\">https://yadi.sk/d/LaeRQGymbNnD-w</a>&nbsp;</p><p>С Уважением, администрация &quot;IMAGINE PEOPLE&quot;</p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(16, 'Представители шоу-рума в Москве запустили систему обучения для всех желающих', '2018-12-21', 'posts/sUOm2wgCtBUIpSzbi3QNFpRskD4KkVEp6eUg6uMI.jpeg', NULL, '<ol><li style=\"text-align: center;\"><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><strong>Уважаемые партнеры!</strong></span></li></ol><p style=\"text-align: center;\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>С радостью сообщаем Вам, что в шоу-руме в г. Москва запущена система обучения!</strong></span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Представители шоу-рума в Москве запустили систему обучения для всех желающих узнать полную информацию о продукте, компании, бизнесе, акциях и новостях. &nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Каждый вторник:</strong></span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>&nbsp;</strong>в 15.00 вас ждет &quot;Школа о продукте&quot; для новичков и партнеров</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Природный источник энергии, здоровья и долголетия!&nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Каждый четверг:</strong></span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>в 15:00:</strong> &quot;Школа о продукте&quot; для новичков и партнеров.</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Природный источник энергии, здоровья и долголетия!&nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\"><strong>в 16:00:&nbsp;</strong>&quot;Школа о бизнесе&quot; Как построить глобальный международный бизнес в компании&nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Ждем вас каждый вторник, четверг по адресу: 1 минута от метро Белорусская (кольцевая), <span data-address=\"пл.Тверская Застава 3 оф.321\" data-address-query=\"площадь тверская застава 3 оф.321\" data-ids=\"167759086119557799\">пл.Тверская Застава 3 оф.321</span>&nbsp;</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">По всем вопросам обращайтесь по телефону горячей линии 8 800 600 45 47 (звонок бесплатный)</span></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Режим работы шоу-рума: будние дни 11:00-20:00, сб. 11:00-17:00, воскр.-выходной&nbsp;</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><em><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\">контактное лицо: <em>Горбунова Регина</em></span></em></span></p><p><em><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><em>+7 963 757 98 88</em></span></span></span></em></p><p><em><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><em>+7 499 394 78 48</em></span></span></span></em></p><p><em><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><em><a data-orig-href=\"http://gidroplazma.ru/\" data-vdir-href=\"https://mail.yandex.kz/re.jsx?uid=1130000027731808&c=LIZA&cv=15.3.3&mid=167759086119557799&h=a,w-BzHQlTdi4gIUZk7z17XA&l=aHR0cDovL2dpZHJvcGxhem1hLnJ1Lw\" href=\"http://gidroplazma.ru/\" rel=\"noopener noreferrer\" target=\"_blank\">http://gidroplazma.ru/</a>&nbsp;</em></span></span></span></em></p><p><em><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><em><a data-orig-href=\"https://vk.com/gidroplazma_msk\" data-vdir-href=\"https://mail.yandex.kz/re.jsx?uid=1130000027731808&c=LIZA&cv=15.3.3&mid=167759086119557799&h=a,Uzb2Qv4QEToLwJR0T34kDw&l=aHR0cHM6Ly92ay5jb20vZ2lkcm9wbGF6bWFfbXNr\" href=\"https://vk.com/gidroplazma_msk\" rel=\"noopener noreferrer\" target=\"_blank\">https://vk.com/gidroplazma_msk</a>&nbsp;</em></span></span></span></em></p><p><span style=\"color: rgb(71, 85, 119);\"><em><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><a data-orig-href=\"https://www.instagram.com/gidroplazma_ru/\" data-vdir-href=\"https://mail.yandex.kz/re.jsx?uid=1130000027731808&c=LIZA&cv=15.3.3&mid=167759086119557799&h=a,ertohVrIHP78OG-KSWcQ5g&l=aHR0cHM6Ly93d3cuaW5zdGFncmFtLmNvbS9naWRyb3BsYXptYV9ydS8\" href=\"https://www.instagram.com/gidroplazma_ru/\" rel=\"noopener noreferrer\" target=\"_blank\"><em>https://www.instagram.com/gidroplazma_ru</em></a></span></em></span><span style=\"color: rgb(71, 85, 119);\"><em><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><em><img src=\"https://localhost/ip/public/storage/images/Xqg6NlGvsewOL2ILLIBhKS7sanyILtuUePbNJ2Dl.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></em></span></em></span><img src=\"https://localhost/ip/public/storage/images/Ke2QtXwtjfwC13eckxVRFjkVH9m3CspLD930LFYE.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><span style=\"color: rgb(71, 85, 119);\"><em><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><em><img src=\"https://localhost/ip/public/storage/images/8lcBqbC0qHC5ER6M0zmY7RU9AWwpzeOQCHh4wdky.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></em></span></em></span></p><p><img src=\"https://localhost/ip/public/storage/images/wjNyOcZCtN0IsJUQiurDKhg297KbWTMekDTgqavH.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/topbWscCV7sT6qskzJ93WS4XsmszhLiYBlpxdMp6.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/WblC1umzlMIIMEjR9zxswAsVMRhjlZPX022TXFHg.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/m2VZyQdPtnl4dVJHOv7TNl5PCnoRgrwE0vHY7QXx.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><br></p><p><img src=\"https://localhost/ip/public/storage/images/OFPJlTgcWJ6V1UJIqyhdrP8hRPoKlEiwNrY38ZfJ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/0Cf43M3mzeEWDMBs3xcaiN0O3Ntu6JD4XK44vSmQ.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/9wh7Bkp2qATsJGA7qz605YCGiXpodiPBwsvaZaRp.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(17, 'Условия получения продукции в Шоу-Румах', '2018-12-20', 'posts/ysfjmMyDZN8Q3TSlpzepWJmUDbT6b3SUweAOCy9z.jpeg', 'Просим Вас обратить внимание на изменение условий получения продукции в Шоу-Румах.', '<div style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(41, 105, 176);\">Уважаемые партнеры!</span></div><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Просим Вас обратить внимание на изменение условий получения продукции в Шоу-Румах. При получении продукции в Шоу-Руме необходимо оплатить доставку до Шоу-Рума. Оплата доставки производится в офисе Шоу-Рума.</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">1. Пакет &laquo;Пробный&raquo;, <span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&laquo;Старт&raquo;</span></span></span> или заказ до 1 000 у.е - оплата доставки будет составлять 3% от стоимости заказа (включая подарок). &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp;2. Пакет &laquo;Профессионал&raquo; или заказ от 1 000 у.е. до 2 000 у.е. - оплата доставки будет составлять 2,5% от стоимости заказа (включая подарок).</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">3. Пакет &laquo;Мега&raquo; или заказ продукции от 2 000 у.е. и выше - оплата доставки будет составлять 2% от стоимости заказа (включая подарок). &nbsp;&nbsp;</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Например: </strong>Партнер зарегистрировался в компании на пакет <span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&laquo;Старт&raquo;</span></span></span></span></span></span>, стоимость пакета 250 у.е. в подарок партнер получил 1 флакон Absolute Energy стоимостью 80 у.е., итого партнер должен заплатить в офисе Шоу Рума за доставку 10 у.е.</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; При отправлении заказа через Транспортную компанию, оплата доставки осуществляется курьеру, согласно тарифам транспортной компании.&nbsp;</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">При отправлении заказа через транспортную компанию DHL, оплата доставки осуществляется согласно выставленному счету в Личном кабинете партнера. Оплату можно произвести через банковскую карту или у.е. со счета партнера.</span></span></span></p><p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">С Уважением,</span></span></span></p><p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(41, 105, 176);\">Администрация &laquo;IMAGINE PEOPLE&rdquo;</span></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(18, 'Приглашаем Вас на Первый Форум Юга России, который состоится 22 ДЕКАБРЯ В 14:00!', '2018-12-19', 'posts/uTPJQG0hpM6ufq43TVgORSY2T9GhXoNjf2FdgpF6.png', NULL, '<p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; color: rgb(71, 85, 119);\"><strong>Уважаем партнеры!</strong></span></p><p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; color: rgb(71, 85, 119);\"><strong>Приглашаем Вас на Первый Форум Юга России, который состоится 22 ДЕКАБРЯ В 14:00!</strong></span></p><p><span style=\"font-family: Arial, Helvetica, sans-serif; color: rgb(71, 85, 119);\"><br>ПРИГЛАШАЕМ ВСЕХ ПАРТНЕРОВ КОМПАНИИ &quot;IMAGINE PEOPLE&quot; в г. КРАСНОДАР!<br><strong>В программе:</strong><br>1. Постпромоушен Московского Бизнес-Форума &quot;Absolute Energy&quot;<br>2. Презентация новых продуктов компании.<br>3. Отзывы и результаты партнеров компании.<br>4. Новогодний фуршет.<br>5. Дегустация биогенной воды Water for life и Аbsolute Еnergy.<br>6. Праздничная лотерея.<br><strong>Каждый участник Форума получает в подарок набор печатной продукции.</strong><br>Так же вы можете провести регистрацию своих новых партнеров, оформить заказы и получить продукцию.<br>Организатор события:<br>Лидер компании &quot;IMAGINE PEOPLE&quot;, член консультативного совета, владелец шоу-рума в г. Краснодар - Елена Севрикова.<br><strong>МЕГА НОВОСТЬ:<br>Почетные гости Форума: Топ Лидеры компании в ранге международный директор - Ольга Тетерина и в ранге федеральный директор, врач-инфекционист Галина Бодарацкая!!!</strong><br><br><strong>Адрес:</strong> г.<span data-address=\"Краснодар, ул. Красная 124 офис\" data-address-query=\"краснодар улица красная 124 офис\" data-ids=\"167759086119557671\">Краснодар, ул. Красная 124 офис</span> 302/304, конференц зал.<br>Запись участников Форума по тел. +7 918 692 51 31<br>Начало регистрации участников в 13:00<br><br><strong>О своем участии уже заявили &nbsp;партнеры из многих городов:</strong> Краснодар, &nbsp;Ростов, Сочи, Новороссийск, Геленджик, &nbsp;Анапа, Азов, Армавир, Майкоп, Белореченск, Ставрополь, Невинномысск, Кропоткин, Пятигорск, Кисловодск, Минеральные Воды, Волгодонск.<br>Ждем всех на этом праздничном событии.<br>Приходите сами, приглашайте своих друзей!</span></p><p><br></p><p><br>&nbsp; </p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(19, 'программа бизнес-форума', '2018-12-01', 'posts/MIBc4tHbWqHhjDRvM14CURbFBwOJiuvZN4GSIBIs.jpeg', 'для участия в закрытом тренинге выполните:региональный директор за ноябрь и с ноября по 13 декабря закрыть 50 степов', '<p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(71, 85, 119);\">Дорогие друзья!&nbsp;</span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Напоминаем Вам о проведении</span></span></span><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp;пятого &nbsp;бизнес-форума &laquo;Absolute Energy&rdquo; с 15 по 16 декабря 2018 г. &nbsp;городе Москва. <br>Вас ждет насыщенная программа, большое количество информации, подарки и новинки от компании.<br><strong>План мероприятия:</strong><br><strong>1 день - 15 декабря:</strong><br>10:00 Начало регистрации участников закрытого специального тренинга от основателя компании Вячеслава Терентьева*<br>11:00 - 14:00 Закрытый специальный тренинг от основателя компании Вячеслава Терентьева*<br><strong>*для участия в закрытом тренинге от Вячеслава Терентьева необходимо выполнить следующие условия: выполнить квалификацию - региональный директор за ноябрь и закрыть с ноября по 13 декабря 50 степов</strong><br>14:00-15:00 Перерыв на обед<br>15:00-19:00 Начало тренинга от основателя компании Вячеслава Терентьева и топ-лидеров компании.&nbsp;</span></span></span><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Участвовать могут все активные партнеры</strong>!<br>19:00 Начало презентации Новых продуктов компании<br>Далее, ужин с основателями компании Вячеславом Терентьевым и Эльмирой Молдобаевой в ресторане &quot;ТАЛАВЕРА&quot; <strong>для партнеров выполнивших следующие усл</strong><strong>овия: квалификация Федеральный директор в ноябре.</strong><br><strong>2 день - 16 декабря</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">10:00-12:00 Встреча владельцев шоу-румов<br>12:00-17:00 Лидерский марафон<br>Топ-лидеры копании будут делиться информацией о построении бизнеса в компании IMAGINE PEOPLЕ. Затронут все самые важные темы с чего начать и как это сделать правильно.<br>17:00-20:00 Парад признаний<br>Награждение самых активных партнеров и победителей в акции &quot;Поездка в Дубай&quot; и &quot;Мой автомобиль&quot;, а также объявление новых промоушенов.</span></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">Ждем Вас 15 и 16 декабря в конференц-зале отеля &quot;Radisson Славянская&quot;!</span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Адрес:&nbsp;</strong>г. Москва, площадь Европы 2<br></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Стоимость билета - 5 000 руб. Билеты можете приобрести в личном кабинете!&nbsp;</strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Покупка билета доступна через личный кабинет. Список участников формируется на основе этих оплат. Для тех кто оплатил иными способами, хочет оплатить сразу на форуме или в форуме хотят участвовать не партнеры компании, просьба сообщить о своем участии в отдел маркетинга, для того чтобы ваш билет был забронирован. <br></strong></span></span></span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Каждый участник бизнес форума получает подарок!<br>Внимание! Количество билетов ограничено!</strong></span></span></span></p><p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(71, 85, 119);\"><strong>По вопросам приобретения билетов обращайтесь в отдел маркетинга:</strong><br>+7 747 2555 038, marketing@ip-one.net &nbsp;Жалиева Саида</span></p><p><img src=\"https://localhost/ip/public/storage/images/yB4OEgw4dl38haAGRs0I2CTlidvz0JrFGrnBcoFX.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/fvtfkPRU8ZGZMQVQFFbzIIwUW6d7R33LH6JjF156.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/g2PxMEBc1Gw8HtiSyZSGc7bbWQovnEcYyhRXBEAF.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/7bK6uFp9ODPvBSHnugbgDySOSmeFZPA0gg38Lu97.png\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><br></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(20, 'снегопад цен В ДЕКАБРЕ', '2018-12-01', 'posts/zePBsYIqwMIOJezpTw5lRkTLPcYMHf0JLLGTr2zU.jpeg', 'НАБОРЫ СО СКИДКОЙ 30%', '<p style=\"text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(71, 85, 119);\">Уважаемые партнёры!</span></p><p><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 14px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\">&nbsp;В преддверии Нового года мы объявляем праздничную акцию &quot;Снегопад цен&quot; и предлагаем вам купить подарочные наборы со скидкой 30%!!!</span></span></span></p><ul><li style=\"text-align: center;\"><br><ul><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\"><strong><u>1. Акция &quot;Снегопад цен&quot;. Подарочные наборы со скидкой 30%</u></strong><br><strong>Новогодний набор №1:</strong> &nbsp;</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">&nbsp;Water for life - 2 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">&nbsp;БТК G-Bio - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Absolute Energy - 1 шт&nbsp;</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50<br></span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\"><br></span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\"><strong>Новогодний набор №2:</strong></span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Clear space- 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\"><br><strong>Новогодний набор №3:</strong></span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">ДГК ALFA- 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 147 у.е. Количество баллов - 50</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\"><br><strong>Новогодний набор №4:</strong></span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Water for life - 2 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">БТК G-Bio - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Absolute Energy - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Clear space- 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">ДГК ALFA- 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Бутылка с логотипом - 1 шт</span></li><li style=\"text-align: left;\"><span style=\"color: rgb(71, 85, 119);\">Цена набора - 270 у.е. Количество баллов - 100</span><ul><li><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><br></span></span></span></li><li><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 18px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><strong>Спешите! Период действия акции с 01 по 31 декабря включительно!</strong></span></span></span></li></ul></li></ul></li><li><span style=\"color: rgb(71, 85, 119);\"><br><strong><u>2. Акция &quot;Пятигранная пирамида в подарок&quot;</u></strong></span></li></ul><div><span style=\"color: rgb(71, 85, 119);\">При единовременном заказе любой продукции на 150 баллов в подарок получаете пятигранную пирамиду Clear Space в подарок! &nbsp; &nbsp;</span></div><div><span style=\"color: rgb(71, 85, 119);\">Количество заказов не ограниченно!</span></div><div><span style=\"color: rgb(71, 85, 119);\">Выдача подарков по итогам акции начнется в конце января 2019 года. &nbsp;&nbsp;</span></div><div><span style=\"color: rgb(71, 85, 119);\"><strong>Внимание! Заказ на 150 баллов должен быть единовременным!</strong></span></div><p><span style=\"color: rgb(71, 85, 119);\"><strong>Период действия акции с 01 по 31 декабря включительно!<br></strong></span></p><ul><li><span style=\"color: rgb(71, 85, 119);\"><span style=\"font-size: 14px;\"><span style=\"font-family: Arial,Helvetica,sans-serif;\"><em>Пусть новый год будет полон радостных ожиданий и сбывшихся надежд, позитивных событий и весёлых приключений, новых знакомств и достижений!&nbsp;</em></span></span></span></li></ul><p><em><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(71, 85, 119);\">С уважением, Администрация &quot;IMAGINE PEOPLE&quot;</span></em><strong><br></strong></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL),
(21, 'центр обучения для партнеров и новичков в г.Москва', '2018-11-23', 'posts/U7bzfgfmRtCpXcfz8oWgkzqraxHeeQ6tLDjYvm8I.jpeg', 'школа \"VICTORY ВМЕСТЕ\" в г.Москва ждет вас каждую среду в 17:00', '<p style=\"text-align: center;\"><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif;\"><br>УВАЖАЕМЫЕ ПАРТНЕРЫ!</span></p><p><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">Рады Вам сообщить, что партнерами компании &quot;IMAGINE PEOPLE&quot; был открыт центр обучения для партнеров и новичков в г.Москва. 14 ноября прошла вторая встреча в &nbsp;школе &quot;VICTORY ВМЕСТЕ&quot;. Первая презентация собрала команду единомышленнков в теплом зале, где о продукте рассказывали &nbsp;- Уражевская Елена (Региональный директор), Тамара Лебединская (Директор) и &nbsp;Ирина Нуждина-Щербакова (Региональный директор и член Консультативного совета). Все новички и партнеры получили много полезной информации о продуктах и компании, зарегистрировались для создания личного кабинета, так же было приобретено несколько билетов на бизнес-форум в г.Москва. который пройдет 15-16 декабря. Прекрасный результат! Школа ждет вас каждую среду к 17-00 (без опазданий) по адресу: г.Москва, библиотека №2, уг.ул. 4-ой Тверкой-Ямской и Чаянова</span></span></p><p><img src=\"https://localhost/ip/public/storage/images/GHuSh3KbDbiFwieWmLVMi4YT1xk4LIwxPMgJs32R.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><img src=\"https://localhost/ip/public/storage/images/flV3FuXuPBabRDWkRbNQP6ArhLPIZIv6NxZSfmAp.jpeg\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p>Отзыв о презентации от Евгения Облезова, заслуженного фото-художника России, менеджера нашей компании</p><p><span class=\"fr-video fr-fvc fr-dvi fr-draggable\" contenteditable=\"false\"><iframe src=\"https://www.youtube.com/embed/HD_G5NVsG2I\" allowfullscreen=\"\" class=\"fr-draggable\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe></span><br>&nbsp; &nbsp;<img src=\"https://localhost/ip/public/storage/images/GKb2hIWoZAzoVlu40q1MaDXZMYpNI6ygwJL52XDi.png\" style=\"width: 100%;\" class=\"fr-fic fr-dib\"></p><p><span style=\"font-family: Arial,Helvetica,sans-serif;\"><span style=\"color: rgb(71, 85, 119);\">С Уважением,&nbsp;</span></span></p><p><span style=\"color: rgb(71, 85, 119); font-family: Arial, Helvetica, sans-serif;\">Администрация &quot;IMAGINE PEOPLE&quot;</span></p>', '2019-02-28 00:02:34', '2019-02-28 00:02:34', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'browse_bread', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(3, 'browse_database', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(4, 'browse_media', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(5, 'browse_compass', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(6, 'browse_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(7, 'read_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(8, 'edit_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(9, 'add_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(10, 'delete_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(11, 'browse_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(12, 'read_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(13, 'edit_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(14, 'add_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(15, 'delete_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(16, 'browse_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(17, 'read_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(18, 'edit_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(19, 'add_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(20, 'delete_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(21, 'browse_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(22, 'read_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(23, 'edit_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(24, 'add_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(25, 'delete_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(26, 'browse_hooks', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(47, 'browse_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(48, 'read_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(49, 'edit_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(50, 'add_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(51, 'delete_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(52, 'browse_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(53, 'read_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(54, 'edit_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(55, 'add_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(56, 'delete_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(57, 'browse_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(58, 'read_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(59, 'edit_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(60, 'add_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(61, 'delete_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(62, 'browse_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(63, 'read_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(64, 'edit_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(65, 'add_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(66, 'delete_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(67, 'browse_stocks', 'stocks', '2019-02-28 02:32:04', '2019-02-28 02:32:04'),
(68, 'read_stocks', 'stocks', '2019-02-28 02:32:04', '2019-02-28 02:32:04'),
(69, 'edit_stocks', 'stocks', '2019-02-28 02:32:04', '2019-02-28 02:32:04'),
(70, 'add_stocks', 'stocks', '2019-02-28 02:32:04', '2019-02-28 02:32:04'),
(71, 'delete_stocks', 'stocks', '2019-02-28 02:32:04', '2019-02-28 02:32:04');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mini_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_present` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `mini_description`, `description`, `price`, `points`, `created_at`, `updated_at`, `deleted_at`, `is_present`) VALUES
(1, 'Гидроплазма', 'products\\February2019\\1gWhSMUpDiaBD3tk2P0e.jpg', 'Концентрат поливекторной гидроплазмы Инюшина', '<h5 class=\"tagline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; font-weight: normal; line-height: 1.2; font-size: 20px; font-family: \'Source Sans Pro\', sans-serif; color: #48bdc5; font-style: italic;\">Это концентрат для приготовления живой биогенной, полезной для биологических организмов воды</h5>\r\n<h6 style=\"box-sizing: border-box; margin: 30px 0px 10px; line-height: 1.2; font-size: 20px; font-family: \'Source Sans Pro\', sans-serif; color: #333333;\">&laquo;Сила Природы&raquo;</h6>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Source Sans Pro\', sans-serif; color: #000000; font-size: 16px; position: relative; line-height: 19px;\">содержит в себе высокую концентрацию гидроплазмы, и как результат, за счет большой плотности частиц имеет огромную свободную энергию, которая в свою очередь противостоит деградации воды, связанной с негативными факторами внешней среды</p>\r\n<h6 style=\"box-sizing: border-box; margin: 30px 0px 10px; line-height: 1.2; font-size: 20px; font-family: \'Source Sans Pro\', sans-serif; color: #333333;\">Гидроплазма &laquo;Сила Природы&raquo;</h6>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Source Sans Pro\', sans-serif; color: #000000; font-size: 16px; position: relative; line-height: 19px;\">&mdash; Продлевает жизнь и улучшает качество жизни<br style=\"box-sizing: border-box;\" />&mdash; Продлевает молодость и омолаживает организм<br style=\"box-sizing: border-box;\" />&mdash; Предупреждает возникновение аритмии<br style=\"box-sizing: border-box;\" />&mdash; Предупреждает инфаркты и инсульты<br style=\"box-sizing: border-box;\" />&mdash; Снижает в 1,5-2 раза риск возникновения злокачественных опухолей<br style=\"box-sizing: border-box;\" />&mdash; Увеличивает прочность костей скелета<br style=\"box-sizing: border-box;\" />&mdash; Уменьшает зависимость от алкоголя и наркотиков<br style=\"box-sizing: border-box;\" />&mdash; Улучшает состояние клеточных мембран (сохраняет эластичность капилляров и стенок сосудов)<br style=\"box-sizing: border-box;\" />&mdash; Повышает иммунитет, подавляет вирусные и бактериальные инфекции</p>', NULL, NULL, '2019-02-19 03:22:01', '2019-02-21 05:23:52', NULL, 0),
(2, 'clickgood.ru', 'products\\February2019\\3vIKPn0caAMi34YPeger.jpg', 'Мы открываем возможность предварительной регистрации партнеров для получения возможности первыми встать в структуру нашей компании и получить дополнительные возможности к заработку!', '<p>asdfasdf sadfasdfsd sdafsad fsdaf sad</p>', NULL, NULL, '2019-02-21 05:24:10', '2019-02-21 05:24:10', NULL, 0),
(3, 'asdfasdf', 'products\\February2019\\RJflOw0IpxcbzN0i5Bpa.png', 'Открыта предрегистрация партнеров!', '<p>asdfsadfasdf</p>', 44, NULL, '2019-02-28 04:30:28', '2019-02-28 05:51:34', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'user', 'Normal User', '2019-02-12 22:59:27', '2019-02-12 22:59:27');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'IP ONE', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.address', 'Адрес', 'Москва, Россия', NULL, 'text', 1, 'Site'),
(12, 'site.email', 'Почта', 'email@example.com', NULL, 'text', 7, 'Site'),
(13, 'site.phone', 'Телефон', '+7(929)789-79-46', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `slider_id`, `image`, `title`, `description`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 1, 'sliders\\February2019\\ghSDoGMeBmB3FZ6vhvRd.png', 'WATER FOR LIFE', '<p>продлевает жизнь,</p>\r\n<p>замедляет процессы старения,</p>\r\n<p>улучшает состояние клеточных мембран</p>', NULL, '2019-02-20 04:59:10', '2019-02-20 04:59:10', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mini_description` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stocks`
--

INSERT INTO `stocks` (`id`, `title`, `date`, `img`, `mini_description`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asdfasf', '2019-02-13', 'stocks\\February2019\\DsYiPnEWhtiOQfjtA3G6.png', 'Мы открываем возможность предварительной регистрации партнеров для получения возможности первыми встать в структуру нашей компании и получить дополнительные возможности к заработку!', '<p>sadfasdf</p>', '2019-02-28 02:36:37', '2019-02-28 02:36:37', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 8, 'en', 'Slider', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(2, 'data_types', 'display_name_singular', 8, 'cn', '', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(3, 'data_types', 'display_name_plural', 8, 'en', 'Sliders', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(4, 'data_types', 'display_name_plural', 8, 'cn', '', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(5, 'menu_items', 'title', 17, 'en', 'Sliders', '2019-02-13 03:05:11', '2019-02-13 03:05:11'),
(6, 'menu_items', 'title', 17, 'cn', '', '2019-02-13 03:05:11', '2019-02-13 03:05:11'),
(7, 'sliders', 'title', 2, 'en', 'asdf', '2019-02-13 03:08:53', '2019-02-13 03:50:39'),
(8, 'sliders', 'title', 2, 'cn', '', '2019-02-13 03:08:53', '2019-02-13 03:08:53'),
(9, 'sliders', 'description', 2, 'en', '<p>asdfasdf</p>', '2019-02-13 03:08:53', '2019-02-13 03:50:39'),
(10, 'sliders', 'description', 2, 'cn', '', '2019-02-13 03:08:53', '2019-02-13 03:08:53'),
(11, 'sliders', 'title', 3, 'en', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(12, 'sliders', 'title', 3, 'cn', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(13, 'sliders', 'description', 3, 'en', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(14, 'sliders', 'description', 3, 'cn', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(15, 'menu_items', 'title', 20, 'en', '', '2019-02-13 04:41:57', '2019-02-13 04:41:57'),
(16, 'menu_items', 'title', 20, 'cn', '', '2019-02-13 04:41:57', '2019-02-13 04:41:57'),
(17, 'menu_items', 'title', 21, 'en', '', '2019-02-13 04:42:31', '2019-02-13 04:42:31'),
(18, 'menu_items', 'title', 21, 'cn', '', '2019-02-13 04:42:31', '2019-02-13 04:42:31'),
(19, 'menu_items', 'title', 22, 'en', '', '2019-02-13 04:42:47', '2019-02-13 04:42:47'),
(20, 'menu_items', 'title', 22, 'cn', '', '2019-02-13 04:42:47', '2019-02-13 04:42:47'),
(21, 'menu_items', 'title', 23, 'en', '', '2019-02-13 04:43:04', '2019-02-13 04:43:04'),
(22, 'menu_items', 'title', 23, 'cn', '', '2019-02-13 04:43:04', '2019-02-13 04:43:04'),
(23, 'menu_items', 'title', 24, 'en', '', '2019-02-13 04:43:27', '2019-02-13 04:43:27'),
(24, 'menu_items', 'title', 24, 'cn', '', '2019-02-13 04:43:27', '2019-02-13 04:43:27'),
(25, 'menu_items', 'title', 25, 'en', '', '2019-02-13 04:43:44', '2019-02-13 04:43:44'),
(26, 'menu_items', 'title', 25, 'cn', '', '2019-02-13 04:43:44', '2019-02-13 04:43:44'),
(27, 'menu_items', 'title', 2, 'en', 'Media', '2019-02-15 04:59:14', '2019-02-15 04:59:14'),
(28, 'menu_items', 'title', 2, 'cn', '', '2019-02-15 04:59:14', '2019-02-15 04:59:14'),
(29, 'menu_items', 'title', 10, 'en', 'Settings', '2019-02-15 04:59:27', '2019-02-15 04:59:27'),
(30, 'menu_items', 'title', 10, 'cn', '', '2019-02-15 04:59:27', '2019-02-15 04:59:27'),
(31, 'data_types', 'display_name_singular', 10, 'en', 'Новость', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(32, 'data_types', 'display_name_singular', 10, 'cn', '', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(33, 'data_types', 'display_name_plural', 10, 'en', 'Новости', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(34, 'data_types', 'display_name_plural', 10, 'cn', '', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(35, 'sliders', 'title', 5, 'en', 'Готовый бизнес', '2019-02-18 03:09:46', '2019-02-18 03:09:46'),
(36, 'sliders', 'description', 5, 'en', '<p>Спешите успеть заработать вместе с нами! для первых 1000 партнеров открываются уникальные возможности!</p>', '2019-02-18 03:09:46', '2019-02-18 03:09:46'),
(37, 'sliders', 'title', 6, 'en', '', '2019-02-18 03:20:08', '2019-02-18 03:20:08'),
(38, 'sliders', 'description', 6, 'en', '', '2019-02-18 03:20:08', '2019-02-18 03:20:08'),
(39, 'data_types', 'display_name_singular', 11, 'en', 'Контент', '2019-02-18 23:14:11', '2019-02-18 23:14:11'),
(40, 'data_types', 'display_name_plural', 11, 'en', 'Контент', '2019-02-18 23:14:11', '2019-02-18 23:14:11'),
(41, 'contents', 'name', 1, 'en', '', '2019-02-18 23:14:21', '2019-02-18 23:14:21'),
(42, 'contents', 'content', 1, 'en', '', '2019-02-18 23:14:21', '2019-02-18 23:14:21'),
(43, 'menu_items', 'title', 6, 'en', 'Menu Builder', '2019-02-18 23:42:46', '2019-02-18 23:42:46'),
(44, 'menu_items', 'title', 29, 'en', '', '2019-02-18 23:43:33', '2019-02-18 23:43:33'),
(45, 'menu_items', 'title', 30, 'en', '', '2019-02-18 23:43:59', '2019-02-18 23:43:59'),
(47, 'menu_items', 'title', 32, 'en', '', '2019-02-18 23:44:17', '2019-02-18 23:44:17'),
(50, 'contents', 'name', 2, 'en', '', '2019-02-19 00:22:08', '2019-02-19 00:22:08'),
(51, 'contents', 'content', 2, 'en', '', '2019-02-19 00:22:08', '2019-02-19 00:22:08'),
(52, 'menu_items', 'title', 35, 'en', '', '2019-02-19 00:23:50', '2019-02-19 00:23:50'),
(53, 'contents', 'name', 3, 'en', '', '2019-02-19 01:48:00', '2019-02-19 01:48:00'),
(54, 'contents', 'content', 3, 'en', '', '2019-02-19 01:48:00', '2019-02-19 01:48:00'),
(56, 'news', 'title', 1, 'en', '', '2019-02-19 02:19:34', '2019-02-19 02:19:34'),
(57, 'news', 'mini_description', 1, 'en', '', '2019-02-19 02:19:34', '2019-02-19 02:19:34'),
(58, 'news', 'text', 1, 'en', '', '2019-02-19 02:19:34', '2019-02-19 02:19:34'),
(59, 'products', 'name', 1, 'en', '', '2019-02-19 03:22:01', '2019-02-19 03:22:01'),
(60, 'products', 'mini_description', 1, 'en', '', '2019-02-19 03:22:01', '2019-02-19 03:22:01'),
(61, 'products', 'description', 1, 'en', '', '2019-02-19 03:22:01', '2019-02-19 03:22:01'),
(62, 'data_types', 'display_name_singular', 9, 'en', 'Продукт', '2019-02-19 03:24:05', '2019-02-19 03:24:05'),
(63, 'data_types', 'display_name_plural', 9, 'en', 'Продукты', '2019-02-19 03:24:05', '2019-02-19 03:24:05');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'godmanshot', 'godmanshot@gmail.com', 'users/default.png', NULL, '$2y$10$.4fbBHUwSEjkgijSWXgcf.3IDjRCk01re3ZYOiMJhX8GNwakHYEZK', NULL, '{\"locale\":\"ru\"}', '2019-02-12 23:09:00', '2019-02-13 03:05:46');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_slug_index` (`slug`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
