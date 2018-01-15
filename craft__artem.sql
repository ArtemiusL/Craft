-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Янв 15 2018 г., 09:08
-- Версия сервера: 5.6.35
-- Версия PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `craft`
--

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 1, 1, 'work-1.jpg', 'image', 542, 470, 51295, '2018-01-14 22:58:21', '2018-01-14 22:58:22', '2018-01-14 22:58:22', 'e0c82dc7-edbd-4b08-9bce-05f4407825d2'),
(10, 1, 1, '067KX0SNMKg-1.jpg', 'image', 720, 1080, 154294, '2018-01-14 23:07:19', '2018-01-14 23:07:21', '2018-01-14 23:07:21', '80897fcc-f525-4a7f-86c2-505e67a5a1ff'),
(11, 1, 1, 'work-4.jpg', 'image', 542, 470, 36901, '2018-01-15 07:28:57', '2018-01-15 07:28:57', '2018-01-15 07:28:57', '7006e22f-7590-44d3-88c9-93e87d6cedd3'),
(12, 1, 1, 'work-todo.jpg', 'image', 542, 470, 22021, '2018-01-15 07:59:13', '2018-01-15 07:59:14', '2018-01-15 07:59:14', '3b1847c5-167b-483a-98f6-ea5bd37599b3');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2018-01-14 22:29:32', '2018-01-14 22:29:32', '9e2b3aa8-4427-4421-b80f-33bc47c3011f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'images', 'Local', '{\"path\":\"static\\/images\\/\",\"publicURLs\":\"1\",\"url\":\"http:\\/\\/localhost\\/static\\/images\\/\"}', 1, 20, '2018-01-14 22:29:32', '2018-01-14 22:59:43', '4ea811c5-2902-46c8-8836-71f95dc6d0af');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 10, '067KX0SNMKg-1.jpg', NULL, '_forPhone', 1, 1, 0, '2018-01-15 06:34:57', '2018-01-15 06:34:57', '2018-01-15 06:34:58', '6871bb5e-e957-4401-b750-33bcf0b00e55'),
(2, 10, '067KX0SNMKg-1.jpg', NULL, '_forFullscreen', 1, 1, 0, '2018-01-15 06:46:09', '2018-01-15 06:46:09', '2018-01-15 06:46:12', 'd4ea1263-92b9-4eb6-9247-533f3d5b3aa7'),
(3, 10, '067KX0SNMKg-1.jpg', NULL, '_forDesktop', 1, 1, 0, '2018-01-15 06:46:09', '2018-01-15 06:46:09', '2018-01-15 06:46:12', '616f472a-3b3a-4776-8b04-d32af606b001'),
(4, 10, '067KX0SNMKg-1.jpg', NULL, '_forTablet', 1, 1, 0, '2018-01-15 06:46:09', '2018-01-15 06:46:09', '2018-01-15 06:46:13', '4fbeb474-333b-4157-838d-155253c8ff06');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'for FullScreen', 'forFullscreen', 'crop', 'center-center', NULL, 1400, NULL, 82, '2018-01-15 05:27:59', '2018-01-15 05:27:59', '2018-01-15 05:27:59', '66a13554-c91e-4b87-9bc4-be43ee8bcdd0'),
(2, 'for Desktop', 'forDesktop', 'crop', 'center-center', NULL, 1024, NULL, 82, '2018-01-15 05:28:32', '2018-01-15 05:28:32', '2018-01-15 05:28:32', '2b88d2f9-b9ea-41f8-810a-37f713571927'),
(3, 'for Tablet', 'forTablet', 'crop', 'center-center', NULL, 780, NULL, 82, '2018-01-15 05:28:50', '2018-01-15 05:28:50', '2018-01-15 05:28:50', '2c4cf04c-9d09-4a00-a7d2-56ea33b6b7a4'),
(4, 'for phone', 'forPhone', 'crop', 'center-center', NULL, 340, NULL, NULL, '2018-01-15 05:29:12', '2018-01-15 05:29:12', '2018-01-15 06:34:45', '3184f50a-3490-4d18-9a33-42202b0caa08');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_table` text COLLATE utf8_unicode_ci,
  `field_mainmenu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_widgetHeadline` text COLLATE utf8_unicode_ci,
  `field_widgetBody` text COLLATE utf8_unicode_ci,
  `field_slogan` text COLLATE utf8_unicode_ci,
  `field_address` text COLLATE utf8_unicode_ci,
  `field_simpleNavigation` text COLLATE utf8_unicode_ci,
  `field_sliderLink` text COLLATE utf8_unicode_ci,
  `field_linkTitle` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_table`, `field_mainmenu`, `field_widgetHeadline`, `field_widgetBody`, `field_slogan`, `field_address`, `field_simpleNavigation`, `field_sliderLink`, `field_linkTitle`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-10 20:53:57', '2018-01-10 20:53:57', '9e4ed224-830a-4ad4-b63d-125e09183c33'),
(2, 2, 'ru', 'Главная', '<p>Верстаю на крупных проектах с использованием шаблонизатора pug и препроцессора Sass, сборщик - Gulp, умею с Bootstrap, могу WordPress, работаю с git, хорошо разбираюсь в HTML5 и CSS3, отлично ориентируюсь в чистом JS, активно изучаю React, Redux и Webpack прошёл курс <a href=\"https://assets.htmlacademy.ru/certificates/intensive/51/297399.pdf\" class=\"link-content\">\"Продвинутый JS\"</a> от HtmlAcademy.</p>', NULL, NULL, 'Это отличный виджет!', '<p>Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Инициал от всех первую реторический скатился парадигматическая за, по всей сих о большого страна журчит мир что, буквенных! Собрал сих, имени всеми.</p>', NULL, NULL, NULL, '[{\"col1\":\"Zdorov Face\",\"col2\":\"http:\\/\\/localhost\\/portfolio\\/zdorovface\"},{\"col1\":\"Todo List\",\"col2\":\"http:\\/\\/localhost\\/portfolio\\/todolist\"}]', NULL, '2018-01-10 20:54:01', '2018-01-15 08:01:28', '37d19394-8b71-4bfe-8d77-70ac36bea54e'),
(3, 3, 'ru', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</p><!--pagebreak--><p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p><p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-10 20:54:01', '2018-01-11 21:50:26', '952968c1-4429-44f1-911b-96cfb67e9d03'),
(5, 5, 'ru', 'Интернет-магазин - ZdorovFace', '<p>Верстка и создание темы для WordPress. Pug, Sass, Gulp, Js</p>', '[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]', '[\"Main\",\"about\",\"portfolio\"]', NULL, NULL, NULL, NULL, NULL, NULL, 'zdorovface', '2018-01-11 21:10:11', '2018-01-15 07:45:34', 'fcda8055-5f89-4414-a895-9e27b1514b44'),
(6, 6, 'ru', 'TodoList на ванильном js', '<p>Учебный проект. С использованием синтаксиса ES2015, сборщика gulp, транспилятора babel и реализацией сохранения данных в localStorage</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'todolist', '2018-01-11 21:10:28', '2018-01-15 07:59:53', '60fcb017-fa53-404a-b9b3-32d64d8de3ae'),
(7, 7, 'ru', NULL, NULL, NULL, '[]', NULL, NULL, 'Качественная разработка вашего проекта!', NULL, '[{\"col1\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"col2\":\"\"},{\"col1\":\"\\u041f\\u043e\\u0440\\u0442\\u0444\\u043e\\u043b\\u0438\\u043e\",\"col2\":\"portfolio\"}]', NULL, NULL, '2018-01-14 18:44:35', '2018-01-15 08:05:56', '11fc8bc2-3666-4440-bd57-e0974a3167d1'),
(8, 8, 'ru', NULL, NULL, NULL, '[]', NULL, NULL, NULL, '<p>Тверь, петеребургское шоссе 93, кор.2, офис 117</p>', NULL, NULL, NULL, '2018-01-14 18:48:14', '2018-01-15 07:53:56', '51737803-69a0-4b93-87c6-d942b7cb7d40'),
(9, 9, 'ru', 'Portfolio Pankreatit Landing', '', NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-14 22:58:21', '2018-01-14 22:59:11', 'dd03d23a-a725-44f5-833a-393f5ae1a666'),
(10, 10, 'ru', 'My Avatar', NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-14 23:07:20', '2018-01-14 23:09:17', '4d06f3fe-3bb1-4464-90fa-c9f2f2d10c6b'),
(11, 11, 'ru', 'ZdorovFace', NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-15 07:28:57', '2018-01-15 07:29:07', 'c862d6c7-9085-4245-9108-dce3302b20ec'),
(12, 12, 'ru', 'TodoList', NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-15 07:59:14', '2018-01-15 07:59:25', '6e81cbd8-7b65-47f8-a8f0-da8f22f70989');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_deprecationerrors`
--

INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `class`, `method`, `template`, `templateLine`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'BaseElementModel::getChildren()_for_relations', './static/templates/portfolio/_entry.twig:21', '2018-01-12 11:37:13', '/Users/artemkonovalov/Sites/craft/craft/app/models/BaseElementModel.php', 534, 'Craft\\BaseElementModel', 'getChildren', './static/templates/portfolio/_entry.twig', 21, 'Calling getChildren() to fetch an element’s target relations has been deprecated. Use the <a href=\"http://craftcms.com/docs/relations#the-relatedTo-param\">relatedTo</a> param instead.', '[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":534,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"BaseElementModel::getChildren()_for_relations\\\", \\\"Calling getChildren() to fetch an element\\u2019s target relations h...\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":688,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"getChildren\",\"args\":\"2\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":64,\"class\":\"Twig_Template\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"getChildren\\\", array(2), \\\"method\\\"\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/storage\\/runtime\\/compiled_templates\\/72\\/7258e27ff9400c8dd5666b33350e7142027dc8f7d2bf8ebe2b64b7d5bd939242.php\",\"line\":38,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"getChildren\\\", array(2), \\\"method\\\"\",\"template\":\"portfolio\\/_entry\",\"templateLine\":21},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"method\":\"block_main\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/storage\\/runtime\\/compiled_templates\\/70\\/704b1797db1702a0b3c63c5d4954b8228c57a2262e562688282f2110d0c225d7.php\",\"line\":82,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\",\"template\":\"_webpack.templates\\/_webpack.template.wrapper\",\"templateLine\":57},{\"objectClass\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_3b0f8709e0eb1af59a086ae19df0ac47f1b4e56e2e6633a526083e7f6dd95e1f\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/storage\\/runtime\\/compiled_templates\\/ae\\/ae5abdcf8e410f824e151ad752553c7b5d0029da15b8a27b5d8e1f4c5244e996.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\",\"template\":\"_webpack.templates\\/_webpack.template.wrapper\",\"templateLine\":16},{\"objectClass\":\"__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"header\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_header\\\"), \\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"), \\\"footer\\\" => array(__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181, \\\"block_footer\\\"))\"},{\"objectClass\":\"__TwigTemplate_9c8e7a465aed7eac1e21b22d7a89bc550d8ee09a614a962cecf50b133c4d6181\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/storage\\/runtime\\/compiled_templates\\/72\\/7258e27ff9400c8dd5666b33350e7142027dc8f7d2bf8ebe2b64b7d5bd939242.php\",\"line\":24,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"))\",\"template\":\"_layout\",\"templateLine\":1},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"))\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"))\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"main\\\" => array(__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447, \\\"block_main\\\"))\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_0d7186199cc68a56a450b12d1f841aab2410dc99789125e591d1c0af842d8447\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"portfolio\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"portfolio\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"portfolio\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"portfolio\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"portfolio\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"portfolio\\/\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"portfolio\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"portfolio\\/\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"portfolio\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/index.php\",\"line\":62,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/public\\/index.php\",\"line\":67,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/artemkonovalov\\/Sites\\/craft\\/craft\\/app\\/index.php\\\"\"}]', '2018-01-12 11:36:53', '2018-01-12 11:37:13', '33b6c0a0-cd1c-43b2-8064-64855c4e98e9');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elementindexsettings`
--

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Entry', '{\"sourceOrder\":[[\"key\",\"*\"],[\"key\",\"singles\"],[\"heading\",\"\\u041a\\u0430\\u043d\\u0430\\u043b\\u044b\"],[\"key\",\"section:2\"],[\"heading\",\"Homepage\"]],\"sources\":{\"section:2\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"expiryDate\",\"3\":\"link\"}}}}', '2018-01-10 20:57:26', '2018-01-10 20:57:26', '211a8d7e-1b08-48dd-abea-92061b238cd6');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2018-01-10 20:53:57', '2018-01-10 20:53:57', 'af11eebf-4c3a-44d7-b0da-8664d8ffc717'),
(2, 'Entry', 1, 0, '2018-01-10 20:54:01', '2018-01-15 08:01:28', '28b7fed7-6a72-45eb-a615-9ebfbcc43b11'),
(3, 'Entry', 1, 0, '2018-01-10 20:54:01', '2018-01-11 21:50:26', '2f996428-bb3b-4824-a4c5-4b861332a611'),
(5, 'Entry', 1, 0, '2018-01-11 21:10:11', '2018-01-15 07:45:34', 'c2c6a5c9-46e2-487f-8ee5-b4b1645a4c11'),
(6, 'Entry', 1, 0, '2018-01-11 21:10:28', '2018-01-15 07:59:53', 'b08726c7-38e1-4e60-b6b3-84697e909d92'),
(7, 'GlobalSet', 1, 0, '2018-01-14 18:44:35', '2018-01-15 08:05:56', 'da142942-ca2d-47a0-93a2-aa212f1937e5'),
(8, 'GlobalSet', 1, 0, '2018-01-14 18:48:14', '2018-01-15 07:53:56', '8db8b616-a7ce-4fb2-bb84-4da16201e771'),
(9, 'Asset', 1, 0, '2018-01-14 22:58:21', '2018-01-14 22:59:11', 'fccceeb6-cf71-4a1b-a74d-1c72834d4c49'),
(10, 'Asset', 1, 0, '2018-01-14 23:07:20', '2018-01-14 23:09:17', 'c11746ce-f1a3-4aae-adeb-1861f68f427d'),
(11, 'Asset', 1, 0, '2018-01-15 07:28:57', '2018-01-15 07:29:07', '24001324-3e7c-4e25-81c1-0f66e777b63c'),
(12, 'Asset', 1, 0, '2018-01-15 07:59:14', '2018-01-15 07:59:25', 'dfe1fcf9-e6f1-4402-9fa1-4d4859095eaf');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', '', NULL, 1, '2018-01-10 20:53:57', '2018-01-10 20:53:57', '2d885d43-ad3c-43de-a4a4-1d0dbc64d321'),
(2, 2, 'ru', 'homepage', '__home__', 1, '2018-01-10 20:54:01', '2018-01-15 08:01:28', '9d864429-586e-49a8-91be-41d7a1c52aa9'),
(3, 3, 'ru', 'we-just-installed-craft', 'news/2018/we-just-installed-craft', 1, '2018-01-10 20:54:01', '2018-01-11 21:50:26', '9697a480-c846-4a6b-9d71-f03ef96e877e'),
(5, 5, 'ru', 'лендинг-здоров', 'portfolio/zdorovface', 1, '2018-01-11 21:10:12', '2018-01-15 07:45:35', '35fb664c-a8ae-4ed8-942c-c4889eae1de1'),
(6, 6, 'ru', 'прелндинг', 'portfolio/todolist', 1, '2018-01-11 21:10:28', '2018-01-15 07:59:53', '46a9ba29-5999-4bc7-b5e9-1574cc2ebf89'),
(7, 7, 'ru', '', NULL, 1, '2018-01-14 18:44:35', '2018-01-15 08:05:56', '330fe313-2757-4d69-84c1-1237a5734c86'),
(8, 8, 'ru', '', NULL, 1, '2018-01-14 18:48:14', '2018-01-15 07:53:56', '9d2486cb-5741-4069-a9f6-18e60d3ee670'),
(9, 9, 'ru', 'work-1', NULL, 1, '2018-01-14 22:58:21', '2018-01-14 22:59:11', 'c34d155f-be72-45ee-ac11-3553468828bf'),
(10, 10, 'ru', '067-kx0-snmkg-1', NULL, 1, '2018-01-14 23:07:21', '2018-01-14 23:09:17', '7fb5a525-d4d7-41c3-bf98-69e32db4f828'),
(11, 11, 'ru', 'work-4', NULL, 1, '2018-01-15 07:28:57', '2018-01-15 07:29:07', '87f53f8c-4608-4993-addd-28aedec9cbf9'),
(12, 12, 'ru', 'work-todo', NULL, 1, '2018-01-15 07:59:14', '2018-01-15 07:59:25', '8d4debd7-a67c-4282-8c97-ee760a6f824d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, NULL, '2018-01-10 22:18:24', NULL, '2018-01-10 20:54:01', '2018-01-15 08:01:29', '90d210bc-1773-4391-87da-d7ab0eb273a0'),
(3, 2, 2, 1, '2018-01-10 20:54:01', NULL, '2018-01-10 20:54:01', '2018-01-10 20:54:01', 'af7c84b4-1a7d-40c2-a2c5-a0a618cf6295'),
(5, 3, 3, 1, '2018-01-11 21:10:00', NULL, '2018-01-11 21:10:12', '2018-01-15 07:42:04', 'cacdf6d2-e0d0-4198-8321-93e04d41168b'),
(6, 3, 3, 1, '2018-01-11 21:10:00', NULL, '2018-01-11 21:10:28', '2018-01-15 07:59:53', '558bf8dc-aecc-4c6b-a9b4-17fa631d682d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 25, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2018-01-10 20:54:01', '2018-01-15 07:41:36', 'a28c2c52-b324-4b80-ac1a-fd9eadf373d8'),
(2, 2, 5, 'News', 'news', 1, 'Название', NULL, 1, '2018-01-10 20:54:01', '2018-01-10 20:54:01', '9843d32d-b9bf-471d-8363-0b1b91d9ff27'),
(3, 3, 26, 'Portfolio', 'portfolio', 1, 'Название', NULL, 1, '2018-01-11 21:07:07', '2018-01-15 07:41:48', '4a667521-9d80-4b00-8a1a-1a8546178c7e');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'ru', 1, NULL, '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1515617641,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-10 20:54:01', '2018-01-10 20:54:01', '67ccdff7-21da-4ebc-9d17-d1a9a77bcb96'),
(2, 2, 1, 1, 'ru', 2, NULL, '{\"typeId\":null,\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1515617641,\"expiryDate\":null,\"enabled\":\"1\",\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\"}}', '2018-01-10 20:54:01', '2018-01-10 20:54:01', '0b01830c-3ec6-4ada-b184-2f767e541556'),
(3, 3, 2, 1, 'ru', 1, NULL, '{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"We just installed Craft!\",\"slug\":\"we-just-installed-craft\",\"postDate\":1515617641,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-10 20:54:01', '2018-01-10 20:54:01', '198074dc-2cc8-4d63-a181-58f21c433455'),
(4, 5, 3, 1, 'ru', 1, NULL, '{\"typeId\":null,\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705011,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-11 21:10:12', '2018-01-11 21:10:12', 'e79d6b89-c161-411e-9674-a0743bb00ab9'),
(5, 6, 3, 1, 'ru', 1, '', '{\"typeId\":null,\"authorId\":\"1\",\"title\":\"\\u041f\\u0420\\u0435\\u043b\\u043d\\u0434\\u0438\\u043d\\u0433\",\"slug\":\"\\u043f\\u0440\\u0435\\u043b\\u043d\\u0434\\u0438\\u043d\\u0433\",\"postDate\":1515705028,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"5\",\"fields\":[]}', '2018-01-11 21:10:28', '2018-01-11 21:10:28', '8401a3e7-c7eb-4c43-b18e-49249da63e97'),
(6, 5, 3, 1, 'ru', 2, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":[]}', '2018-01-11 21:10:38', '2018-01-11 21:10:38', '3a49e467-d02e-47a4-a315-d338df5d55ac'),
(7, 5, 3, 1, 'ru', 3, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-11 21:12:16', '2018-01-11 21:12:16', '4feca527-8025-48cf-99de-b1b9ac86964c'),
(8, 5, 3, 1, 'ru', 4, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-11 22:03:45', '2018-01-11 22:03:45', 'caf087ce-9e52-4260-9a0c-24264f307076'),
(9, 6, 3, 1, 'ru', 2, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041f\\u0420\\u0435\\u043b\\u043d\\u0434\\u0438\\u043d\\u0433\",\"slug\":\"\\u043f\\u0440\\u0435\\u043b\\u043d\\u0434\\u0438\\u043d\\u0433\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0432\\u0441\\u044f\\u043a\\u0438\\u0435 \\u043c\\u0430\\u043b\\u0430\\u0445\\u043e\\u0432\\u044b<\\/p>\",\"2\":\"\",\"3\":\"\"}}', '2018-01-11 22:04:10', '2018-01-11 22:04:10', '9187a840-6764-413f-837d-5aef00dfcfcd'),
(10, 5, 3, 1, 'ru', 5, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"4\":[\"Main\"],\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-12 11:29:27', '2018-01-12 11:29:27', '71e4b4ea-0e02-4f7a-8ef2-0d226a7779ce'),
(11, 2, 1, 1, 'ru', 3, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis laboriosam totam perspiciatis quas, ratione, esse eum eaque explicabo illo earum molestias fugiat praesentium sequi ea tempore vel suscipit. Inventore, similique.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 16:35:30', '2018-01-14 16:35:30', '4387e8da-94f5-4f33-9969-a93301ec5b08'),
(12, 2, 1, 1, 'ru', 4, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis laboriosam totam perspiciatis quas, ratione, esse eum eaque explicabo illo earum molestias fugiat praesentium sequi ea tempore vel suscipit. Inventore, similique.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 16:35:34', '2018-01-14 16:35:34', 'f45f29ae-6366-43f6-aaed-87e3942abb9d'),
(13, 2, 1, 1, 'ru', 5, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis laboriosam totam perspiciatis quas, ratione, esse eum eaque explicabo illo earum molestias fugiat praesentium sequi ea tempore vel suscipit. Inventore, similique.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 16:36:29', '2018-01-14 16:36:29', 'f90d4839-6951-4981-b000-078f3ea9b795'),
(14, 2, 1, 1, 'ru', 6, 'Черновик “Черновик 1” опубликован.', '{\"typeId\":null,\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":null,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis laboriosam totam perspiciatis quas, ratione, esse eum eaque explicabo illo earum molestias fugiat praesentium sequi ea tempore vel suscipit. Inventore, similique.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 16:38:29', '2018-01-14 16:38:29', 'c6d6e265-0a1a-4d8f-af0a-655b100ed846'),
(15, 5, 3, 1, 'ru', 6, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"4\":[\"about\"],\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-14 17:27:45', '2018-01-14 17:27:45', 'f337c899-ce21-4358-b59a-595ea7d269c6'),
(16, 5, 3, 1, 'ru', 7, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"4\":[\"Main\"],\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-14 17:35:25', '2018-01-14 17:35:25', '6273eb05-f273-493a-8b82-1be3398afa97'),
(17, 5, 3, 1, 'ru', 8, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"4\":[\"Main\",\"about\",\"portfolio\"],\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-14 17:36:09', '2018-01-14 17:36:09', '78b922db-a8ce-475e-b4cd-8b180a0c1f84'),
(18, 2, 1, 1, 'ru', 7, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 18:35:18', '2018-01-14 18:35:18', 'bbab818d-6c9e-49fd-a1cf-d48349115e9a'),
(19, 2, 1, 1, 'ru', 8, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 18:35:20', '2018-01-14 18:35:20', '00e359a8-97fb-4a35-8855-229a79320be7'),
(20, 2, 1, 1, 'ru', 9, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"11\":[\"10\"],\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-14 23:09:44', '2018-01-14 23:09:44', 'd019a063-c266-48cc-a1d0-d9b6055968fd'),
(21, 2, 1, 1, 'ru', 10, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u0430\\u044e \\u043d\\u0430 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445 \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u0430 pug \\u0438 \\u043f\\u0440\\u0435\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440\\u0430 Sass, \\u0441\\u0431\\u043e\\u0440\\u0449\\u0438\\u043a - Gulp, \\u0443\\u043c\\u0435\\u044e \\u0441 Bootstrap, \\u043c\\u043e\\u0433\\u0443 WordPress, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e \\u0441 git, \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0440\\u0430\\u0437\\u0431\\u0438\\u0440\\u0430\\u044e\\u0441\\u044c \\u0432 HTML5 \\u0438 CSS3, \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0441\\u044c \\u0432 \\u0447\\u0438\\u0441\\u0442\\u043e\\u043c JS, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0438\\u0437\\u0443\\u0447\\u0430\\u044e React, Redux \\u0438 Webpack \\u043f\\u0440\\u043e\\u0448\\u0451\\u043b \\u043a\\u0443\\u0440\\u0441&nbsp;<a href=\\\"https:\\/\\/assets.htmlacademy.ru\\/certificates\\/intensive\\/51\\/297399.pdf\\\" class=\\\"link-content\\\">\\\"\\u041f\\u0440\\u043e\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u044b\\u0439 JS\\\"<\\/a>&nbsp;\\u043e\\u0442 HtmlAcademy.<\\/p>\",\"11\":[\"10\"],\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-15 06:55:58', '2018-01-15 06:55:58', 'f89ada90-3c92-4c41-a720-a97e3cd668bd'),
(22, 2, 1, 1, 'ru', 11, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u0430\\u044e \\u043d\\u0430 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445 \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u0430 pug \\u0438 \\u043f\\u0440\\u0435\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440\\u0430 Sass, \\u0441\\u0431\\u043e\\u0440\\u0449\\u0438\\u043a - Gulp, \\u0443\\u043c\\u0435\\u044e \\u0441 Bootstrap, \\u043c\\u043e\\u0433\\u0443 WordPress, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e \\u0441 git, \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0440\\u0430\\u0437\\u0431\\u0438\\u0440\\u0430\\u044e\\u0441\\u044c \\u0432 HTML5 \\u0438 CSS3, \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0441\\u044c \\u0432 \\u0447\\u0438\\u0441\\u0442\\u043e\\u043c JS, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0438\\u0437\\u0443\\u0447\\u0430\\u044e React, Redux \\u0438 Webpack \\u043f\\u0440\\u043e\\u0448\\u0451\\u043b \\u043a\\u0443\\u0440\\u0441&nbsp;<a href=\\\"https:\\/\\/assets.htmlacademy.ru\\/certificates\\/intensive\\/51\\/297399.pdf\\\" class=\\\"link-content\\\">\\\"\\u041f\\u0440\\u043e\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u044b\\u0439 JS\\\"<\\/a>&nbsp;\\u043e\\u0442 HtmlAcademy.<\\/p>\",\"11\":[\"10\"],\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-15 06:56:26', '2018-01-15 06:56:26', '13dcd03a-007c-47a2-9659-3d2933155980'),
(23, 2, 1, 1, 'ru', 12, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u0430\\u044e \\u043d\\u0430 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445 \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u0430 pug \\u0438 \\u043f\\u0440\\u0435\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440\\u0430 Sass, \\u0441\\u0431\\u043e\\u0440\\u0449\\u0438\\u043a - Gulp, \\u0443\\u043c\\u0435\\u044e \\u0441 Bootstrap, \\u043c\\u043e\\u0433\\u0443 WordPress, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e \\u0441 git, \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0440\\u0430\\u0437\\u0431\\u0438\\u0440\\u0430\\u044e\\u0441\\u044c \\u0432 HTML5 \\u0438 CSS3, \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0441\\u044c \\u0432 \\u0447\\u0438\\u0441\\u0442\\u043e\\u043c JS, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0438\\u0437\\u0443\\u0447\\u0430\\u044e React, Redux \\u0438 Webpack \\u043f\\u0440\\u043e\\u0448\\u0451\\u043b \\u043a\\u0443\\u0440\\u0441&nbsp;<a href=\\\"https:\\/\\/assets.htmlacademy.ru\\/certificates\\/intensive\\/51\\/297399.pdf\\\" class=\\\"link-content\\\">\\\"\\u041f\\u0440\\u043e\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u044b\\u0439 JS\\\"<\\/a>&nbsp;\\u043e\\u0442 HtmlAcademy.<\\/p>\",\"11\":[\"10\"],\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-15 07:08:13', '2018-01-15 07:08:13', 'c9926efe-9b85-42fc-aab3-9701b13f090f'),
(24, 5, 3, 1, 'ru', 9, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433 \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432 \\u041f\\u0430\\u043d\\u043a\\u0440\\u0435\\u0430\\u0442\\u0438\\u0442\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u042d\\u0442\\u043e \\u044f \\u0434\\u0435\\u043b\\u0430\\u043b<\\/p>\",\"4\":[\"Main\",\"about\",\"portfolio\"],\"2\":\"\",\"3\":[{\"col1\":\"\\u0410\\u0440\\u0442\\u0451\\u043c\",\"col5\":\"1\"}]}}', '2018-01-15 07:19:57', '2018-01-15 07:19:57', '3ac1609a-22f0-4847-b382-2fbec9a3909c'),
(25, 5, 3, 1, 'ru', 10, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - ZdorovFace\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u043a\\u0430 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0442\\u0435\\u043c\\u044b \\u0434\\u043b\\u044f WordPress. Pug, Sass, Gulp, Js<\\/p>\",\"12\":[\"9\"]}}', '2018-01-15 07:23:41', '2018-01-15 07:23:41', 'd098d7d6-f1dd-4324-9e27-4a025a96ab63'),
(26, 5, 3, 1, 'ru', 11, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - ZdorovFace\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u043a\\u0430 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0442\\u0435\\u043c\\u044b \\u0434\\u043b\\u044f WordPress. Pug, Sass, Gulp, Js<\\/p>\",\"12\":[\"11\"]}}', '2018-01-15 07:29:22', '2018-01-15 07:29:22', '9476528a-c44f-4eab-8405-eaff7c4b82b3'),
(27, 5, 3, 1, 'ru', 12, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - ZdorovFace\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u043a\\u0430 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0442\\u0435\\u043c\\u044b \\u0434\\u043b\\u044f WordPress. Pug, Sass, Gulp, Js<\\/p>\",\"12\":[\"11\"]}}', '2018-01-15 07:36:31', '2018-01-15 07:36:31', '9bfc0a6d-0b7f-4bc5-abbe-50c3f5cea7cc'),
(28, 5, 3, 1, 'ru', 13, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - ZdorovFace\",\"slug\":\"\\u043b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433-\\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u043a\\u0430 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0442\\u0435\\u043c\\u044b \\u0434\\u043b\\u044f WordPress. Pug, Sass, Gulp, Js<\\/p>\",\"12\":[\"11\"],\"15\":\"zdorovface\"}}', '2018-01-15 07:42:04', '2018-01-15 07:42:04', '3e251425-8b86-47a6-b3a9-83cfb4422df1'),
(29, 6, 3, 1, 'ru', 3, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"TodoList \\u043d\\u0430 \\u0432\\u0430\\u043d\\u0438\\u043b\\u044c\\u043d\\u043e\\u043c js\",\"slug\":\"\\u043f\\u0440\\u0435\\u043b\\u043d\\u0434\\u0438\\u043d\\u0433\",\"postDate\":1515705000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0423\\u0447\\u0435\\u0431\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442. \\u0421 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0441\\u0438\\u043d\\u0442\\u0430\\u043a\\u0441\\u0438\\u0441\\u0430 ES2015, \\u0441\\u0431\\u043e\\u0440\\u0449\\u0438\\u043a\\u0430 gulp, \\u0442\\u0440\\u0430\\u043d\\u0441\\u043f\\u0438\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430 babel \\u0438 \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0435\\u0439 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u044f \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0432 localStorage<\\/p>\",\"12\":[\"12\"],\"15\":\"todolist\"}}', '2018-01-15 07:59:54', '2018-01-15 07:59:54', 'e1cc979a-4b10-44d2-b81d-cdc96aa710bf'),
(30, 2, 1, 1, 'ru', 13, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"slug\":\"homepage\",\"postDate\":1515622704,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>\\u0412\\u0435\\u0440\\u0441\\u0442\\u0430\\u044e \\u043d\\u0430 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445 \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u0430 pug \\u0438 \\u043f\\u0440\\u0435\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440\\u0430 Sass, \\u0441\\u0431\\u043e\\u0440\\u0449\\u0438\\u043a - Gulp, \\u0443\\u043c\\u0435\\u044e \\u0441 Bootstrap, \\u043c\\u043e\\u0433\\u0443 WordPress, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e \\u0441 git, \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0440\\u0430\\u0437\\u0431\\u0438\\u0440\\u0430\\u044e\\u0441\\u044c \\u0432 HTML5 \\u0438 CSS3, \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0441\\u044c \\u0432 \\u0447\\u0438\\u0441\\u0442\\u043e\\u043c JS, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0438\\u0437\\u0443\\u0447\\u0430\\u044e React, Redux \\u0438 Webpack \\u043f\\u0440\\u043e\\u0448\\u0451\\u043b \\u043a\\u0443\\u0440\\u0441&nbsp;<a href=\\\"https:\\/\\/assets.htmlacademy.ru\\/certificates\\/intensive\\/51\\/297399.pdf\\\" class=\\\"link-content\\\">\\\"\\u041f\\u0440\\u043e\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u044b\\u0439 JS\\\"<\\/a>&nbsp;\\u043e\\u0442 HtmlAcademy.<\\/p>\",\"11\":[\"10\"],\"13\":[{\"col1\":\"Zdorov Face\",\"col2\":\"http:\\/\\/localhost\\/portfolio\\/zdorovface\"},{\"col1\":\"Todo List\",\"col2\":\"http:\\/\\/localhost\\/portfolio\\/todolist\"}],\"14\":[\"11\",\"12\"],\"7\":\"<p>\\u0414\\u0430\\u043b\\u0435\\u043a\\u043e-\\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0435\\u0441\\u043d\\u044b\\u043c\\u0438 \\u0433\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0432 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435, \\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0440\\u044b\\u0431\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043a\\u0441\\u0442\\u044b. \\u0418\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0440\\u0435\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0442\\u0438\\u043b\\u0441\\u044f \\u043f\\u0430\\u0440\\u0430\\u0434\\u0438\\u0433\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0437\\u0430, \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0438\\u0445 \\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0433\\u043e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u0436\\u0443\\u0440\\u0447\\u0438\\u0442 \\u043c\\u0438\\u0440 \\u0447\\u0442\\u043e, \\u0431\\u0443\\u043a\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445! \\u0421\\u043e\\u0431\\u0440\\u0430\\u043b \\u0441\\u0438\\u0445, \\u0438\\u043c\\u0435\\u043d\\u0438 \\u0432\\u0441\\u0435\\u043c\\u0438.<\\/p>\",\"6\":\"\\u042d\\u0442\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\\u0436\\u0435\\u0442!\"}}', '2018-01-15 08:01:29', '2018-01-15 08:01:29', '5561340e-3446-4589-aa6a-7418dd63ba03');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2018-01-10 20:54:00', '2018-01-10 20:54:00', 'fe50cdc1-a519-4248-92a3-e8466cedbfea'),
(2, 'Widget', '2018-01-14 16:24:43', '2018-01-14 16:24:43', 'aab850ba-467f-41d4-8f5c-67a544133e39'),
(3, 'Globals', '2018-01-14 18:45:11', '2018-01-14 18:45:11', '6ea42bc1-d25a-4fb6-b9ef-0406f5bd7848'),
(4, 'Portfolio', '2018-01-15 07:21:02', '2018-01-15 07:21:02', '8d29765f-9e2c-4d4a-b0a3-ff67eba717c8'),
(5, 'Home Slider', '2018-01-15 07:30:17', '2018-01-15 07:30:17', '2387d82a-c9dc-40e9-8daa-2126e37506b9'),
(6, 'Link title', '2018-01-15 07:40:28', '2018-01-15 07:40:28', '72f5793c-5fd5-442f-a41b-23670a729d5f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 2, 1, 1, 1, '2018-01-10 20:54:01', '2018-01-10 20:54:01', 'a9949137-03f9-4b44-b0ff-f27b7713ef6f'),
(3, 5, 2, 2, 0, 2, '2018-01-10 20:54:01', '2018-01-10 20:54:01', '67b75696-7887-4834-9324-15f2e43ebbbe'),
(21, 16, 11, 9, 0, 1, '2018-01-14 18:48:34', '2018-01-14 18:48:34', '0d55854c-828b-4ae0-b1e3-567dc4f7fe55'),
(23, 18, 13, 8, 0, 1, '2018-01-14 21:35:03', '2018-01-14 21:35:03', '4d7917d0-e830-4bcb-8b12-fc4ca75eaad3'),
(24, 18, 13, 10, 0, 2, '2018-01-14 21:35:03', '2018-01-14 21:35:03', '319aa57f-a1a5-4ed5-be50-827379d1387c'),
(45, 25, 24, 1, 1, 1, '2018-01-15 07:41:36', '2018-01-15 07:41:36', '06c3d836-0a17-4c9a-8869-f0dd34470191'),
(46, 25, 24, 11, 0, 2, '2018-01-15 07:41:36', '2018-01-15 07:41:36', 'ef434de7-01ae-44a1-8030-336642cb5097'),
(47, 25, 25, 6, 0, 1, '2018-01-15 07:41:36', '2018-01-15 07:41:36', '08fbae85-b82a-43c3-a15e-c8b06145a859'),
(48, 25, 25, 7, 0, 2, '2018-01-15 07:41:36', '2018-01-15 07:41:36', '3a41ae2b-2773-4960-8dd7-633a76896824'),
(49, 25, 26, 13, 0, 1, '2018-01-15 07:41:36', '2018-01-15 07:41:36', '7fa5c900-6be0-4a67-b7cf-dface3b885f8'),
(50, 25, 26, 14, 0, 2, '2018-01-15 07:41:36', '2018-01-15 07:41:36', 'b749d8fa-f17a-4ee7-b314-8afcf57ff9fb'),
(51, 26, 27, 15, 0, 1, '2018-01-15 07:41:48', '2018-01-15 07:41:48', '394bb334-32b0-4ad0-8462-5c86c9ca6ac5'),
(52, 26, 27, 12, 0, 2, '2018-01-15 07:41:48', '2018-01-15 07:41:48', '48ceae0f-7374-4e4d-ba1a-f1d5da86ecaf'),
(53, 26, 27, 1, 0, 3, '2018-01-15 07:41:48', '2018-01-15 07:41:48', 'c4eef703-d7c7-4595-a3d3-dd55eae3a2ad');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2018-01-10 20:54:00', '2018-01-10 20:54:00', '2293b82d-390b-4cd7-9dae-400d78e4c821'),
(5, 'Entry', '2018-01-10 20:54:01', '2018-01-10 20:54:01', '95dbdad8-a059-4128-8cf0-c88c6204280d'),
(6, 'Asset', '2018-01-10 22:15:07', '2018-01-10 22:15:07', '8de52d40-3d5a-4a34-be91-8936e0304654'),
(16, 'GlobalSet', '2018-01-14 18:48:34', '2018-01-14 18:48:34', '2bf1fa46-5edb-4f40-9dc5-452538157802'),
(18, 'GlobalSet', '2018-01-14 21:35:03', '2018-01-14 21:35:03', '643a70db-752d-4496-ac6d-69930d542211'),
(20, 'Asset', '2018-01-14 22:59:43', '2018-01-14 22:59:43', '14b8ebd6-4f33-4ed6-a210-d208ff8dea42'),
(25, 'Entry', '2018-01-15 07:41:36', '2018-01-15 07:41:36', 'e0601ab6-4f6d-4ffe-a8a5-711b924b1db1'),
(26, 'Entry', '2018-01-15 07:41:47', '2018-01-15 07:41:47', '5ce06239-2429-4b71-be5a-a2abc1346e2a');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 'Content', 1, '2018-01-10 20:54:01', '2018-01-10 20:54:01', '495e4ad8-a403-4aaa-9555-8b3eb7e41412'),
(11, 16, 'Контент', 1, '2018-01-14 18:48:34', '2018-01-14 18:48:34', 'b586c026-1d7d-4833-8293-3029afd6ee6a'),
(13, 18, 'Контент', 1, '2018-01-14 21:35:03', '2018-01-14 21:35:03', 'bb25423d-736e-4f94-98b9-58098319c862'),
(24, 25, 'Content', 1, '2018-01-15 07:41:36', '2018-01-15 07:41:36', 'e4899067-f122-442a-bb50-ef39a8a9a201'),
(25, 25, 'Widget', 2, '2018-01-15 07:41:36', '2018-01-15 07:41:36', 'e5d68774-3c3e-4a44-8747-cd50df72ee7a'),
(26, 25, 'Home Slider', 3, '2018-01-15 07:41:36', '2018-01-15 07:41:36', '273d04ba-faa7-4239-8f2e-2a7782f13bd8'),
(27, 26, 'Tab 1', 1, '2018-01-15 07:41:47', '2018-01-15 07:41:47', 'c9f1e207-4dc7-436a-88b9-0248cfd8711d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{\"configFile\":\"Standard.json\",\"columnType\":\"text\"}', '2018-01-10 20:54:00', '2018-01-10 20:54:00', 'f3b357a7-bec1-46f4-9d4f-9ac701713491'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{\"source\":\"taggroup:1\"}', '2018-01-10 20:54:00', '2018-01-10 20:54:00', 'abf31c6f-4569-44c9-a2d7-1f838a6ef04e'),
(3, 1, 'Таблица', 'table', 'global', 'Создайте таблицу', 0, 'Table', '{\"columns\":{\"col1\":{\"heading\":\"\\u0418\\u043c\\u044f\",\"handle\":\"\\u0438\\u043c\\u044f \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430\",\"width\":\"\",\"type\":\"singleline\"},\"col5\":{\"heading\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0435\",\"handle\":\"\\u041e\\u0431\\u043b\\u0430\\u0434\\u0430\\u0435\\u0442 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e\\u043c \\u0438\\u043b\\u0438 \\u043d\\u0435\\u0442\",\"width\":\"\",\"type\":\"checkbox\"}},\"defaults\":[]}', '2018-01-10 22:17:58', '2018-01-10 22:28:10', '413c3178-1836-4be3-9391-d36aa1f942ce'),
(4, 1, 'MainMenu', 'mainmenu', 'global', 'Главное меню', 0, 'MultiSelect', '{\"options\":[{\"label\":\"\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"value\":\"Main\",\"default\":\"\"},{\"label\":\"About\",\"value\":\"about\",\"default\":\"\"},{\"label\":\"portfolio\",\"value\":\"portfolio\",\"default\":\"\"}]}', '2018-01-12 11:26:14', '2018-01-12 11:26:14', 'de9d8bc8-04e9-4f82-9560-3b90ea7135d1'),
(6, 2, 'Widget Headline', 'widgetHeadline', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-14 16:24:10', '2018-01-14 16:25:04', '793ac04e-e1d2-4f64-8176-710bab6b88da'),
(7, 2, 'Widget Body', 'widgetBody', 'global', '', 0, 'RichText', '{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}', '2018-01-14 16:28:00', '2018-01-14 16:28:00', '96b3f4db-05ea-44a1-9120-594f54aba96d'),
(8, 3, 'Slogan', 'slogan', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-14 18:46:18', '2018-01-14 18:46:18', 'b823c9d5-afba-4e3b-905e-1b9acd9f6cab'),
(9, 3, 'Address', 'address', 'global', '', 0, 'RichText', '{\"configFile\":\"Simple.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}', '2018-01-14 18:47:43', '2018-01-14 18:47:43', '98216610-5789-458c-8d53-97322e884275'),
(10, 3, 'Simple Navigation', 'simpleNavigation', 'global', '', 0, 'Table', '{\"columns\":{\"col1\":{\"heading\":\"Name\",\"handle\":\"menuName\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Link\",\"handle\":\"menuLink\",\"width\":\"\",\"type\":\"singleline\"}},\"defaults\":{\"row1\":{\"col1\":\"\",\"col2\":\"\"}}}', '2018-01-14 21:25:13', '2018-01-14 21:25:13', '93f7f68b-c1eb-448b-a9fa-2efb1fdd2a1a'),
(11, 1, 'Hero Image', 'heroImage', 'global', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-14 23:05:40', '2018-01-14 23:08:09', '1c6bfa14-2a85-496f-be75-b5ad7b5174f5'),
(12, 4, 'PortfolioImage', 'portfolioimage', 'global', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-15 07:21:51', '2018-01-15 07:21:51', '10274b17-e9ba-44a0-be6f-d709b8a0d7ea'),
(13, 5, 'Slider link', 'sliderLink', 'global', '', 0, 'Table', '{\"columns\":{\"col1\":{\"heading\":\"Name\",\"handle\":\"name\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Link\",\"handle\":\"link\",\"width\":\"\",\"type\":\"singleline\"}},\"defaults\":{\"row1\":{\"col1\":\"\",\"col2\":\"\"}}}', '2018-01-15 07:32:13', '2018-01-15 07:36:00', 'e48c109f-45bc-41c9-af0f-ccecf86749c0'),
(14, 5, 'Slider Photo', 'sliderPhoto', 'global', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-15 07:32:34', '2018-01-15 07:35:06', 'f4fecbdb-03b4-4c83-bd68-ff9f62da3f72'),
(15, 6, 'Название ссылки', 'linkTitle', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-15 07:40:57', '2018-01-15 07:40:57', '0fa6b67b-ebbb-40a3-9831-c5a15a983dca');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 'Header', 'header', 18, '2018-01-14 18:44:35', '2018-01-14 21:35:03', '31b318ff-5893-4a93-8970-00424c6d9249'),
(8, 'Footer', 'footer', 16, '2018-01-14 18:48:14', '2018-01-14 18:48:34', 'c2a105f6-3756-46c4-940c-43b9916ca6b0');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.3003', '2.6.13', 0, 'Портфолио Артёма Коновалова', 'http://localhost', 'Europe/Moscow', 1, 0, '2018-01-10 20:53:52', '2018-01-15 06:48:49', '273852c8-9348-4d76-8917-8a89f88ca9ce');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('ru', 1, '2018-01-10 20:53:55', '2018-01-10 20:53:55', '09dc070d-776c-403a-a470-89aab990aa24');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '1da23ea8-822a-4d4a-9074-355417640947'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '0e241a22-8f02-4d14-acac-123dcbba6e7b'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '74d7f1b1-8842-4ab2-b974-754017adbf74'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '601ef6a7-cb4a-41d4-91df-5c40dafa56ad'),
(5, NULL, 'm140829_000001_single_title_formats', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'fc8ebec6-690d-4063-bb4f-38bf86eb6427'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'e1c98842-918b-4e84-80ed-b250b5a7a60b'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'ba2f948b-edb1-4209-83fc-413a14a6bdc0'),
(8, NULL, 'm141008_000001_elements_index_tune', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2f36801f-6b68-4444-836b-1b4b8cc26426'),
(9, NULL, 'm141009_000001_assets_source_handle', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '5034e419-6f47-456b-be8e-f35360d6e0dd'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '65de6c92-cf8d-46cb-9482-b88b5ffd2a19'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'ebbe5540-be5d-4476-b773-a02dba5a032f'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'a053d87d-6b84-4281-a1f8-f75bb25babaa'),
(13, NULL, 'm141103_000001_tag_titles', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '5ecde92b-5523-490f-b69e-77ee59ddcfa8'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'a0541ef4-bc07-4a5b-8389-e17d5b8b8f21'),
(15, NULL, 'm141126_000001_user_week_start_day', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '74839815-cda8-4b41-b06f-08862af78fe6'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '562d229c-d5c8-4113-8c88-c527597b9b7d'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '48f56a74-0f3d-4890-adcd-0aa93f516a42'),
(18, NULL, 'm150827_000000_element_index_settings', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'e5d53856-a058-43ff-b108-7854889e3e8f'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '1b729606-dd31-42a2-a0dc-4eb367fa4cd2'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '657ddca2-3539-4573-aded-b8eb50d15405'),
(21, NULL, 'm151109_000000_text_url_formats', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '9cd34bb0-a655-476c-a987-1efdb0338f1c'),
(22, NULL, 'm151110_000000_move_logo', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '5c8c860f-9039-4d8b-90e9-5c1176d33591'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '3d7d8f68-007f-487d-96ff-46ad0e08740d'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'a5e9a184-eeea-4cf9-b2ff-6000d1ccef32'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '4a3c17ca-f8f4-49a4-b51a-af9a171ff0c4'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '93a73ef2-5f15-4e65-98eb-37432b45c6f4'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'ff2d931d-a7f2-4047-927c-f1711be4f7cf'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '7873131b-3f7a-4dcf-8fe1-6bc5b7e6ae78'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '902455c7-fb20-430d-9600-92be410b157f'),
(30, NULL, 'm160304_000000_client_permissions', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'd24e5dc7-7422-4568-bc84-a27d53543413'),
(31, NULL, 'm160322_000000_asset_filesize', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'ef801790-1da4-489d-ae10-0e861918cae1'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'b9e61583-8b58-4ba5-b0aa-5fdc25b4926f'),
(33, NULL, 'm160510_000000_tasksettings', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '771699eb-b825-490e-a98d-2d7e9a072cfd'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'c383b89b-194d-4383-bfe4-5fe710d298e4'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'c524066b-01fd-46ca-8ace-21d26e9b0dbe'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'd08304be-6126-449c-836c-7a9c760ec124'),
(37, NULL, 'm161108_000000_new_version_format', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'd9a5fa4f-d9fa-451d-8623-0a3f1f5c33a6'),
(38, NULL, 'm161109_000000_index_shuffle', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '47a16c86-d533-47f0-bfa9-da7cac9ea709'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'f3e10ab7-bf26-4e6b-b538-44b31361556a'),
(40, NULL, 'm171107_000000_assign_group_permissions', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '0dbb8e8f-e228-4027-92c7-604d36cc054c'),
(41, NULL, 'm171117_000001_templatecache_index_tune', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'cd1fec84-379b-4096-9cef-7967b62dd10f'),
(42, NULL, 'm171204_000001_templatecache_index_tune_deux', '2018-01-10 20:53:54', '2018-01-10 20:53:54', '2018-01-10 20:53:54', 'd63fd3ac-196d-4002-81b9-130ab602cd4c');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'CheatSheet', '1.2.1', NULL, NULL, 'unknown', 1, NULL, '2018-01-14 16:57:46', '2018-01-14 16:57:46', '2018-01-14 16:57:46', 'bd6c7cba-84e5-4b0a-a05d-f2e7ba467e68');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 12, 5, NULL, 11, 1, '2018-01-15 07:42:04', '2018-01-15 07:42:04', 'd5307265-ce47-4857-8017-fca2d68f58a9'),
(9, 12, 6, NULL, 12, 1, '2018-01-15 07:59:53', '2018-01-15 07:59:53', 'f61b0b66-4877-467d-b164-f36d2dec64ae'),
(10, 11, 2, NULL, 10, 1, '2018-01-15 08:01:29', '2018-01-15 08:01:29', '42d2761f-f084-4d58-bc0c-712729bed2a5'),
(11, 14, 2, NULL, 11, 1, '2018-01-15 08:01:29', '2018-01-15 08:01:29', '6f0b49f2-9711-42a5-ac88-b8e948502243'),
(12, 14, 2, NULL, 12, 2, '2018-01-15 08:01:29', '2018-01-15 08:01:29', 'ec7af98a-8e1c-4e82-a92d-8879c2f6ea66');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'ru', ' artem '),
(1, 'firstname', 0, 'ru', ''),
(1, 'lastname', 0, 'ru', ''),
(1, 'fullname', 0, 'ru', ''),
(1, 'email', 0, 'ru', ' lamber95 icloud com '),
(1, 'slug', 0, 'ru', ''),
(2, 'slug', 0, 'ru', ' homepage '),
(2, 'title', 0, 'ru', ' главная '),
(2, 'field', 1, 'ru', ' верстаю на крупных проектах с использованием шаблонизатора pug и препроцессора sass сборщик gulp умею с bootstrap могу wordpress работаю с git хорошо разбираюсь в html5 и css3 отлично ориентируюсь в чистом js активно изучаю react redux и webpack прошёл курс продвинутый js от htmlacademy '),
(3, 'field', 1, 'ru', ' craft is the cms that s powering localhost it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'ru', ''),
(3, 'slug', 0, 'ru', ' we just installed craft '),
(3, 'title', 0, 'ru', ' we just installed craft '),
(8, 'field', 9, 'ru', ' тверь петеребургское шоссе 93 кор 2 офис 117 '),
(7, 'slug', 0, 'ru', ''),
(8, 'slug', 0, 'ru', ''),
(5, 'slug', 0, 'ru', ' лендинг здоров '),
(5, 'title', 0, 'ru', ' интернет магазин zdorovface '),
(6, 'slug', 0, 'ru', ' прелндинг '),
(6, 'title', 0, 'ru', ' todolist на ванильном js '),
(5, 'field', 1, 'ru', ' верстка и создание темы для wordpress pug sass gulp js '),
(5, 'field', 2, 'ru', ''),
(5, 'field', 3, 'ru', ' артём 1 артём 1 '),
(6, 'field', 1, 'ru', ' учебный проект с использованием синтаксиса es2015 сборщика gulp транспилятора babel и реализацией сохранения данных в localstorage '),
(6, 'field', 2, 'ru', ''),
(6, 'field', 3, 'ru', ''),
(5, 'field', 4, 'ru', ' main about portfolio '),
(2, 'field', 6, 'ru', ' это отличный виджет '),
(2, 'field', 7, 'ru', ' далеко далеко за словесными горами в стране гласных и согласных живут рыбные тексты инициал от всех первую реторический скатился парадигматическая за по всей сих о большого страна журчит мир что буквенных собрал сих имени всеми '),
(7, 'field', 8, 'ru', ' качественная разработка вашего проекта '),
(7, 'field', 10, 'ru', ' главная главная портфолио portfolio портфолио portfolio '),
(9, 'field', 1, 'ru', ''),
(9, 'filename', 0, 'ru', ' work 1 jpg '),
(9, 'extension', 0, 'ru', ' jpg '),
(9, 'kind', 0, 'ru', ' image '),
(9, 'slug', 0, 'ru', ' work 1 '),
(9, 'title', 0, 'ru', ' portfolio pankreatit landing '),
(10, 'filename', 0, 'ru', ' 067kx0snmkg 1 jpg '),
(10, 'extension', 0, 'ru', ' jpg '),
(10, 'kind', 0, 'ru', ' image '),
(10, 'slug', 0, 'ru', ' 067 kx0 snmkg 1 '),
(10, 'title', 0, 'ru', ' my avatar '),
(2, 'field', 11, 'ru', ' my avatar '),
(5, 'field', 12, 'ru', ' zdorovface '),
(11, 'filename', 0, 'ru', ' work 4 jpg '),
(11, 'extension', 0, 'ru', ' jpg '),
(11, 'kind', 0, 'ru', ' image '),
(11, 'slug', 0, 'ru', ' work 4 '),
(11, 'title', 0, 'ru', ' zdorovface '),
(5, 'field', 15, 'ru', ' zdorovface '),
(6, 'field', 15, 'ru', ' todolist '),
(6, 'field', 12, 'ru', ' todolist '),
(12, 'filename', 0, 'ru', ' work todo jpg '),
(12, 'extension', 0, 'ru', ' jpg '),
(12, 'kind', 0, 'ru', ' image '),
(12, 'slug', 0, 'ru', ' work todo '),
(12, 'title', 0, 'ru', ' todolist '),
(2, 'field', 13, 'ru', ' zdorov face http localhost portfolio zdorovface zdorov face http localhost portfolio zdorovface todo list http localhost portfolio todolist todo list http localhost portfolio todolist '),
(2, 'field', 14, 'ru', ' zdorovface todolist ');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2018-01-10 20:54:00', '2018-01-10 22:18:24', '8139843c-fc6d-49d6-b71a-5dc7bdb5e267'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2018-01-10 20:54:01', '2018-01-11 21:30:51', '761ec6d2-071e-486a-b152-62b4d39e828f'),
(3, NULL, 'Portfolio', 'portfolio', 'channel', 1, 'portfolio/_entry', 1, '2018-01-11 21:07:07', '2018-01-15 07:45:32', '2ebdcc73-0439-4041-9c23-6199b6af0f52');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', 1, '__home__', NULL, '2018-01-10 20:54:00', '2018-01-10 20:54:00', 'fc4ad536-3f59-4c09-b57a-6486d6182b1f'),
(2, 2, 'ru', 1, 'news/{{now.year()}}/{slug}', NULL, '2018-01-10 20:54:01', '2018-01-11 21:30:51', '21cf0d4e-5194-41de-bd38-450e2475b8ed'),
(3, 3, 'ru', 1, 'portfolio/{linkTitle}', NULL, '2018-01-11 21:07:07', '2018-01-15 07:45:32', '108eb176-f95a-436b-ac88-94b0eede6fe7');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '197063aeaeebad77bf7b62ced31400a8575066a6czozMjoidWdYYkpXWW1fMTdEMllkMVIxcDBycG54cHNPVkI3M1kiOw==', '2018-01-10 20:54:00', '2018-01-10 20:54:00', '0ee05326-e210-4653-91a5-126e37c61639'),
(2, 1, '0b936775af31150c666b09d19f09d03349947012czozMjoiUEdJbnlQQm0xVVlRcXE5MjlIU2x3NlNLZWZRV2paOTIiOw==', '2018-01-11 20:36:12', '2018-01-11 20:36:12', 'adb1db94-c4b8-4a54-8c5d-4307788c3dae'),
(3, 1, 'be1883d20c4895069fb308500e04e37ef788a3a6czozMjoiTHZWUmdyNHBpclhtVWc5azN6cXhPWDBNUFk2TmZvNkUiOw==', '2018-01-12 11:21:00', '2018-01-12 11:21:00', '7b2aecf7-7c6f-4c99-ac2e-9bd214fe91cb'),
(4, 1, 'd093db8afbf141f3a672eacbbae64cab36118b39czozMjoiRlgwRnJ1OGpyT3U1RGhESUcyNlZzZkgyUTF2OTFrU3QiOw==', '2018-01-13 14:12:30', '2018-01-13 14:12:30', '5de9b5ba-be25-42a7-a080-3ea7f02a36fd'),
(5, 1, 'e487196e0b02fc8bea7c46854bb1c4fdbd3de514czozMjoiUU9ad1FTcFRFVENVMF9KVlc4TndmZn5DfmVSWjRJVHMiOw==', '2018-01-14 08:36:15', '2018-01-14 08:36:15', '54c3fee1-6cb6-4d60-864e-727a3f4eecb9'),
(6, 1, '62e619c3480e2cd5a0cb092326d66dd6dedcfc26czozMjoieHc2ZWUxd0c2WVpWcGIwcWh4b0syTEFTNE5aVk0xQU0iOw==', '2018-01-14 08:36:18', '2018-01-14 08:36:18', 'f8d1beb9-404f-4acb-a3f8-de5d0cf23bfa'),
(7, 1, '9467c1d7b1da1dbafb6183e00b31dbb97e057df3czozMjoiWnNFS1BwTm85NHRRdnlmNHg0UWVSQ3g1T2ZYc2p2R3QiOw==', '2018-01-14 13:42:43', '2018-01-14 13:42:43', 'be8d788c-1f9f-4d5d-bd8f-3c943caeca69'),
(8, 1, '93c8434e8cd80d210f06deae6bcf8de99be75ff8czozMjoiemR2SUZHUGE2dU1DRkNValh6bVpiejgxc3J3TnpTWGkiOw==', '2018-01-14 14:14:07', '2018-01-14 14:14:07', 'b06ccaf0-ec3c-4a8a-ac34-3b5d44e3dbe6'),
(9, 1, '2bc056d8a2d5237835fb560938e02a4261b36d83czozMjoiaEN1bXlSQUE2NUlJbEJYWFlOSH5ORWVOQjhHRVRlZzIiOw==', '2018-01-14 21:23:27', '2018-01-14 21:23:27', '923730e6-9c97-4493-9aea-34ca038d0a08'),
(10, 1, 'c11765382f53c3b98337dc70892db835433ad762czozMjoiR2d2VERVaThOQlNoVVVubUdsRTJySjNCMWRqYWFMZW4iOw==', '2018-01-15 04:31:10', '2018-01-15 04:31:10', '15fabb4c-ec54-428e-a1b0-7fd5a904afe5');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{\"protocol\":\"php\",\"emailAddress\":\"lamber95@icloud.com\",\"senderName\":\"Portfolio\"}', '2018-01-10 20:54:00', '2018-01-10 20:54:00', 'f5bb5eae-31ec-4900-9e04-cf86bff591e1');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2018-01-10 20:54:00', '2018-01-10 20:54:00', '799502d4-7efe-4a23-941a-37405cba757b');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'artem', NULL, NULL, NULL, 'lamber95@icloud.com', '$2y$13$0/nWiHrFAhF6AHQzAXfTLenhATH32PlOLkAxj/9lS7bC1hiV2l1X2', NULL, 0, 1, 0, 0, 0, 0, 0, '2018-01-15 04:31:10', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-10 20:53:57', '2018-01-10 20:53:58', '2018-01-15 04:31:11', '90bc5079-4cc7-421b-b22b-9381836feb6f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2018-01-10 20:54:43', '2018-01-10 20:54:43', '7ea1e0b2-02e6-409e-bd15-e86c4f408b53'),
(2, 1, 'GetHelp', 2, 2, NULL, 1, '2018-01-10 20:54:43', '2018-01-14 16:20:27', '6a49f198-a792-431f-9980-d6391c1629d6'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2018-01-10 20:54:43', '2018-01-10 20:54:43', '64b2fd0b-2d6a-41aa-88d4-73071ac02953'),
(4, 1, 'Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}', 1, '2018-01-10 20:54:43', '2018-01-10 20:54:43', '31c901c5-8d20-4601-84e1-0a8162952b24');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Индексы таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Индексы таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Индексы таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Индексы таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Индексы таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Индексы таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Индексы таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Индексы таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Индексы таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Индексы таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Индексы таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Индексы таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Индексы таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_locale_idx` (`locale`),
  ADD KEY `craft_routes_urlPattern_idx` (`urlPattern`);

--
-- Индексы таблицы `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Индексы таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Индексы таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Индексы таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Индексы таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Индексы таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Индексы таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Индексы таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Индексы таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
