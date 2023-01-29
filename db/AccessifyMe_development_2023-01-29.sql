# ************************************************************
# Sequel Ace SQL dump
# Version 20035
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.31)
# Database: AccessifyMe_development
# Generation Time: 2023-01-29 12:42:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ar_internal_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ar_internal_metadata`;

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`)
VALUES
	('environment','development','2022-08-09 09:58:32.813951','2022-08-09 09:58:32.813951');

/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;

INSERT INTO `clients` (`id`, `name`, `contact`, `notes`, `created_at`, `updated_at`)
VALUES
	(1,'Presserat','Susan Boos <sboos@woz.ch>',NULL,'2022-11-09 17:34:45.000000','2022-11-09 17:34:45.000000'),
	(2,'PublicBeta / WeCollect','Samuel Raymann <samuel.raymann@publicbeta.ch>',NULL,'2022-11-09 17:35:02.000000','2022-11-09 17:35:02.000000');

/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table insights
# ------------------------------------------------------------

DROP TABLE IF EXISTS `insights`;

CREATE TABLE `insights` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `virtue_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `general_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_insights_on_virtue_id` (`virtue_id`),
  CONSTRAINT `fk_rails_cca645e907` FOREIGN KEY (`virtue_id`) REFERENCES `virtues` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



# Dump of table patterns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `patterns`;

CREATE TABLE `patterns` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `insight_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_examples_on_insight_id` (`insight_id`),
  CONSTRAINT `fk_rails_cca645e906` FOREIGN KEY (`insight_id`) REFERENCES `insights` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



# Dump of table personas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personas`;

CREATE TABLE `personas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prototype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `icon`, `name`, `mission`, `description`, `logo`, `created_at`, `updated_at`)
VALUES
	(1,'🎨','Design','Accessibility starts with the _first pixel_ you draw. Be aware that _you will set the course_ for many important matters long before any code is written.\n\n**Make wise decisions!**',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),
	(2,'⌨️','Development','Everything _stands and falls_ with you: usually developers are expected to just _magically implement_ all the ~~great~~ crazy ideas handed down from above.\n\n**May the force be with you!**',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),
	(3,'✍️','Writing','Two thirds of _text is too complex_ for the majority of the population! Even a masterpiece of content is useless when no one is able to _get its point_.\n\n**Use simple(r) language!**',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),
	(4,'🎞🎶','Multimedia','Many users will appreciate a proper text transcript of your _audio_ documents, as well as closed captioning (CC) in _videos_.\n\n**Make yourself heard!**',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20220809095726'),
	('20220823112115'),
	('20220823113657'),
	('20220823130827'),
	('20220824133639'),
	('20220824134234'),
	('20220824140700'),
	('20220925143134'),
	('20220925143153'),
	('20220926103000'),
	('20220926131834'),
	('20220926131845'),
	('20220926170234'),
	('20220927195411'),
	('20220927195558'),
	('20220928192230'),
	('20220928201159'),
	('20220930122255'),
	('20221109163351'),
	('20221109165559'),
	('20221109200005'),
	('20221109204655'),
	('20221109205201'),
	('20221115120408'),
	('20221115160501'),
	('20221129145303'),
	('20221129150220'),
	('20221129152357'),
	('20221129154251'),
	('20221129154302'),
	('20221202071421'),
	('20221202071422'),
	('20221202123314'),
	('20221207060147');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tools`;

CREATE TABLE `tools` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;

INSERT INTO `tools` (`id`, `name`, `short_name`, `description`, `created_at`, `updated_at`, `icon`)
VALUES
	(1,'Desktop browser',NULL,'Web browsers probably belong to the most used kinds of software today. And also as an accessibility expert, the web browser is your best friend.','2022-08-23 13:22:45.000000','2022-08-23 12:39:41.903421','laptop'),
	(2,'Keyboard',NULL,'All of us use keyboards when writing things on our computer. But for many people with disabilities, keyboards are also the main tool to control the computer.','2022-08-23 13:23:20.000000','2022-08-23 12:42:21.660644','keyboard'),
	(3,'NerdeFocus (Chrome extension)','NerdeFocus','URL: <https://chrome.google.com/webstore/detail/nerdefocus/lpfiljldhgjecfepfljnbjnbjfhennpd>','2022-08-23 13:23:37.000000','2022-08-23 13:23:37.000000','crop_free'),
	(4,'What has focus? (bookmarklet)','What has focus?','URL: <https://codepen.io/svinkle/pen/WgYRxq>','2022-08-23 13:24:07.000000','2022-08-23 13:24:07.000000','filter_tilt_shift'),
	(5,'Focus order (bookmarklet)','Focus order','URL: <https://labs.levelaccess.com/index.php/Focus_Order_Favlet>','2022-08-23 13:24:07.000000','2022-08-23 13:24:07.000000','format_list_numbered'),
	(6,'Mobile screen reader',NULL,'','2022-08-23 13:30:45.000000','2022-08-23 13:30:45.000000',NULL),
	(7,'Desktop screen reader',NULL,'Reading / interaction (browse / focus mode)\n\nVoiceOver/macOS?','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL),
	(8,'Colour contrast analyser',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL),
	(9,'WAVE toolbar',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL),
	(10,'Tenon.io',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL),
	(11,'Lighthouse',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL),
	(12,'ESLint',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000',NULL);

/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `sign_in_count` int NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime(6) DEFAULT NULL,
  `last_sign_in_at` datetime(6) DEFAULT NULL,
  `current_sign_in_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmation_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `confirmation_sent_at` datetime(6) DEFAULT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `failed_attempts` int NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



# Dump of table virtues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `virtues`;

CREATE TABLE `virtues` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `intent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `inspires_design` tinyint(1) DEFAULT NULL,
  `inspires_development` tinyint(1) DEFAULT NULL,
  `inspires_writing` tinyint(1) DEFAULT NULL,
  `inspires_multimedia` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `virtues` WRITE;
/*!40000 ALTER TABLE `virtues` DISABLE KEYS */;

INSERT INTO `virtues` (`id`, `name`, `short_name`, `intent`, `description`, `notes`, `image`, `inspires_design`, `inspires_development`, `inspires_writing`, `inspires_multimedia`, `created_at`, `updated_at`)
VALUES
	(1,'Offer good color contrast','Color contrast','We colorize content so that it stands out clearly against the background.','Many users have difficulty perceiving color nuances. For them, a light gray text on a white background may not be visible at all. Similarly, inside a form, a text input with a light gray border on a white background will hardly be recognised as an input.','# Thoughts\n\n- With \"content\" we do not only mean text etc., but also visual attributes that have meaning (i.e. the underline of a link)!\n\n# Further information\n\n- https://www.w3.org/WAI/test-evaluate/preliminary/#contrast\n- https://webaim.org/articles/contrast/\n- https://accessibility.blog.gov.uk/2016/06/17/colour-contrast-why-does-it-matter/\n- https://design-system.service.gov.uk/styles/colour/\n- https://accessibility.blog.gov.uk/2017/03/27/how-users-change-colours-on-websites/',NULL,1,1,0,1,'2022-09-27 21:58:34.000000','2022-09-27 21:58:34.000000'),
	(2,'Complement meaningful colors with visual cues','Meaningful color','When color carries meaning, we add a visual cue like a label, icon, or pattern.',NULL,'Bezug auf sensorische Merkmale, siehe https://ergebnis.bitvtest.de/pruefschritt/bitv-20-web/9-1-3-3-ohne-bezug-auf-sensorische-merkmale-nutzbar\n\nhttps://ergebnis.bitvtest.de/pruefschritt/bitv-20-web/9-1-4-1-ohne-farben-nutzbar\n\nWhat about 2-sense principle? → Maybe we just stick to the Pareto-rule (we cannot take into account each and everything)\n\nhttps://colorblindaccessibilitymanifesto.com/',NULL,1,1,0,1,'2022-09-27 21:58:34.000000','2022-09-27 21:58:34.000000'),
	(3,'Describe graphics through text alternatives','Text alternatives','We implement graphical elements correctly and provide meaningful text alternatives.',NULL,NULL,NULL,1,1,1,1,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(4,'Ensure keyboard-only operability','Keyboard-only','We make sure that websites can be operated by keyboard alone (without mouse).',NULL,'Alternative für komplexe Zeigergesten: https://ergebnis.bitvtest.de/pruefschritt/bitv-20-web/9-2-5-1-alternativen-fuer-komplexe-zeiger-gesten\n\nZeigergesten-Eingaben können abgebrochen oder widerrufen werden: https://ergebnis.bitvtest.de/pruefschritt/bitv-20-web/9-2-5-2-zeigergesten-eingaben-koennen-abgebrochen-oder-widerrufen-werden\n\nKeine unvorhergesehene Kontext-Veränderung','keyboard-only',1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(5,'Apply semantics to structure content (HTML 101)','Semantics','We mark up content with inherent meaning through semantics.',NULL,'Meaningful pieces of info: Ansich alles, was mit korrektem Markup zu tun hat!\n\nAdditional labeling mechanisms: title, aria-label, ggf. auch Formuar-Labels (?), etc.\n\nDocument structure (header, main, footer...) vs. content structure (section, article...)\n\nListen, Zitate\n\nSinnvolle Reihenfolge\n\nAussagekräftige Link/Button-Texte\n\nSprache, Sprache von Teilen',NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(6,'Define a coherent page structure and headings','Structure & headings','We organise a page into meaningful parts with a coherent heading hierarchy.',NULL,'',NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(7,'Mark up tabular data as tables','Tables','We implement solid tables with proper headers.',NULL,NULL,NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(8,'Build robust forms and validations','Forms & validations','We implement solid forms and provide meaningful instruction and validation mechanisms.',NULL,'autocomplete-Attribut!\n\nSichtbare Beschriftung Teil des zugänglichen Namens: https://ergebnis.bitvtest.de/pruefschritt/bitv-20-web/9-2-5-3-sichtbare-beschriftung-teil-des-zugaenglichen-namens → oder besser zu Keyboard-only?\n\nAuf Verknüpftheit einiger Elemente hinweisen, z.B. dass LEGEND angesagt wird beim Hineinspringen in ein FIELDSET',NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(9,'Optimise screen reader compatibility','Screen reader','We validate that screen readers can understand, navigate, and interact with the website.',NULL,'aria-current, invisible content, alerts, page title?\n\n→ Unsicher, ob das vor oder nach \"Information structure and headings\" kommen soll. Einerseits wird es zum Sicherstellen davon benötigt, andererseits sind aria-current, invisible content, alerts etc. bereits \"advanced\" Knowledge',NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(10,'Choose accessible web components','Components','We make sure that third party web components are fully accessible.',NULL,'Soll da auch sensilbe ARIA usage rein? Oder bei SR operability?',NULL,1,1,0,0,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(11,'Provide audio transcripts and video subtitles','Audio & video','We add text transcripts to audio and closed captioning (CC, subtitles) to video elements.',NULL,NULL,NULL,1,1,0,1,'2022-09-27 22:40:07.000000','2022-09-27 22:40:07.000000'),
	(12,'Build a robust yet flexible experience','Robust & flexible','We write code that is as strict as necessary, yet as interpretable and adaptable as possible.',NULL,'Kein ungültiger Code, keine unnötigen Einschränkungen für z.B. User Styles oder Hoch- vs. Querformat\n\nSession timeouts\n\nCaptchas\n\nPausieren, beenden, ausblenden?\n\nTon abschaltbar\n\nText vergrösserbar\n\nText Reflow, keine Überlappungen\n\nKein Flackern\n\nResponsive',NULL,1,1,0,0,'2022-09-27 23:39:32.000000','2022-09-27 23:39:32.000000');

/*!40000 ALTER TABLE `virtues` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wcag_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wcag_elements`;

CREATE TABLE `wcag_elements` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `lead_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `explains_why_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `explains_why_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `parent_id` bigint DEFAULT NULL,
  `position` int DEFAULT NULL,
  `wcag_version` float DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_wcag_elements_on_slug` (`slug`),
  KEY `index_parent_id_on_wcag_elements_fk` (`parent_id`),
  CONSTRAINT `success_criteria_parent_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `wcag_elements` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `wcag_elements` WRITE;
/*!40000 ALTER TABLE `wcag_elements` DISABLE KEYS */;

INSERT INTO `wcag_elements` (`id`, `slug`, `name_en`, `name_de`, `level`, `lead_en`, `lead_de`, `description_de`, `description_en`, `explains_why_en`, `explains_why_de`, `notes`, `parent_id`, `position`, `wcag_version`, `type`, `created_at`, `updated_at`)
VALUES
	(1,'1.1.1','Non-text Content','Nicht-Text-Inhalt','a','Informative graphic elements must be described with an alternative text that is as equivalent as possible. This enables people with visual impairments to process those graphic elements as well.','Informative grafische Elemente müssen mit einem möglichst gleichwertigen Alternativtext beschrieben sein. Dies ermöglicht Menschen mit Sehbehinderungen, jene grafischen Elemente ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,63,1,2,'WcagCriterion','2015-08-04 14:35:59.000000','2020-02-20 11:26:14.000000'),
	(2,'1.2.1','Audio-only and Video-only (Prerecorded)','Reine Audio- und Videoinhalte (aufgezeichnet)','a','For recorded video-only content (i.e., video without sound, such as silent films) and audio-only content (such as podcasts), the information contained therein must be available in an alternative format. This enables visually or hearing impaired people to process this information as well.','Für aufgezeichnete reine Video-Inhalte (also Video ohne Ton, etwa Stummfilme) sowie reine Audio-Inhalte (etwa Podcasts) müssen die darin enthaltenen Informationen in einem alternativen Format zur Verfügung stehen. Dies ermöglicht seh- bzw. hörbeeinträchtigten Menschen, jene Informationen ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,64,1,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(3,'1.2.2','Captions (Prerecorded)','Untertitel (aufgezeichnet)','a','Subtitles must be available for recorded videos with audio (such as feature films). This enables hearing-impaired people to process speech as well.','Für aufgezeichnete Videos mit Audio (etwa Spielfilme) müssen Untertitel zur Verfügung stehen. Dies ermöglicht es hörbeeinträchtigten Menschen, Sprache ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,64,2,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(4,'1.2.3','Audio Description or Media Alternative (Prerecorded)','Audiodeskription oder Medienalternative (aufgezeichnet)','a','For recorded videos with audio (such as feature films), a text transcript (Level A) or an audio description (Level AA) must be available, which also describes purely visual action that is relevant to the content. This enables people with visual impairments to process the purely visual information as well.','Für aufgezeichnete Videos mit Audio (etwa Spielfilme) muss eine Textabschrift (Level A) oder eine Audiodeskription (Level AA) zur Verfügung stehen, welche auch rein visuelle, für den Inhalt aber relevante Handlung beschreibt. Dies ermöglicht es Menschen mit Sehbehinderungen, jene rein visuellen Informationen ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,64,3,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(5,'1.2.4','Captions (Live)','Untertitel (Live)','aa','Subtitles must be provided for live video content with audio. This enables hearing-impaired people to process speech as well.','Für live Videoinhalte mit Audio müssen Untertitel zur Verfügung gestellt werden. Dies ermöglicht es hörbeeinträchtigten Menschen, Sprache ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,64,4,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(6,'1.2.5','Audio Description (Prerecorded)','Audiodeskription (aufgezeichnet)','aa','For recorded videos with audio (such as feature films), an audio description must be available that also describes purely visual action that is relevant to the content. This enables people with visual impairments to process the purely visual information as well.','Für aufgezeichnete Videos mit Audio (etwa Spielfilme) muss eine Audiodeskription zur Verfügung stehen, welche auch rein visuelle, für den Inhalt aber relevante Handlung beschreibt. Dies ermöglicht Menschen mit Sehbehinderungen, jene rein visuellen Informationen ebenfalls verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,64,5,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(7,'1.2.6','Sign Language (Prerecorded)','Gebärdensprache (aufgezeichnet)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,6,2,'WcagCriterion','2015-08-04 14:35:59.000000','2019-10-23 14:41:01.000000'),
	(8,'1.2.7','Extended Audio Description (Prerecorded)','Erweiterte Audiodeskription (aufgezeichnet)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,7,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(9,'1.2.8','Media Alternative (Prerecorded)','Medienalternative (aufgezeichnet)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,8,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(10,'1.2.9','Audio-only (Live)','Reiner Audioinhalt (Live)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,9,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(11,'1.3.1','Info and Relationships','Info und Beziehungen','a',NULL,'TODO',NULL,NULL,NULL,NULL,NULL,65,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 11:43:38.000000'),
	(12,'1.3.2','Meaningful Sequence','Bedeutungstragende Reihenfolge','a','All content must be arranged in the document (DOM) in a meaningful order (independent of CSS). This allows assisting devices (e.g. screen readers) to correctly attach the visually two-dimensionally arranged content to each other and output it one-dimensionally as text.','Alle Inhalte müssen im Dokument (DOM) in sinnvoller Reihenfolge angeordnet sein (unabhängig von CSS). Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), die visuell zweidimensional angeordneten Inhalte korrekt aneinander zu hängen und eindimensional als Text auszugeben.',NULL,NULL,NULL,NULL,NULL,65,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(13,'1.3.3','Sensory Characteristics','Sensorische Eigenschaften','a','Information must be conveyed in such a way that it is not limited to a single sensory perception ability (e.g. color vision). This enables people who lack this perceptual ability to still be able to process all information.','Informationen müssen so vermittelt werden, dass sie sich nicht auf eine einzelne sensorische Wahrnehmungsfähigkeit beschränken (z.B. farbliches Sehvermögen). Dies ermöglicht es Menschen, welchen diese Wahrnehmungsfähigkeit fehlt, trotzdem alle Informationen verarbeiten zu können.',NULL,NULL,NULL,NULL,NULL,65,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 13:59:46.000000'),
	(14,'1.4.1','Use of Color','Benutzung von Farbe','a','Content must adapt to the viewport minimum dimensions (so-called reflow). This allows people with visual impairments to use all content even at high magnification without having to scroll in more than one direction.','Inhalt muss sich den Viewport-Mindestdimensionen anpassen (sog. Reflow). Dies ermöglicht Menschen mit Sehbehinderungen, alle Inhalte auch bei hoher Vergrösserung nutzen zu können, ohne in mehr als eine Richtung scrollen zu müssen.',NULL,NULL,NULL,NULL,NULL,66,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 14:01:03.000000'),
	(15,'1.4.2','Audio Control','Audio-Steuerelement','a','Automatically playing audio content must either stop after three seconds, or it must be possible to stop it manually. This allows undisturbed use of the content.','Automatisch abspielender Audioinhalt muss entweder nach drei Sekunden stoppen, oder er muss manuell gestoppt werden können. Dies ermöglicht ungestörtes Nutzen des Inhalts.',NULL,NULL,NULL,NULL,NULL,66,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(16,'1.4.3','Contrast (Minimum)','Kontrast (Minimum)','aa','Texts and symbols must stand out from the background in color with sufficient contrast. This enables people with visual impairments to recognize and read text.','Texte und Symbole müssen sich farblich durch genügend Kontrast vom Hintergrund abheben. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, Text erkennen und lesen zu können.',NULL,NULL,NULL,NULL,NULL,66,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 14:10:48.000000'),
	(17,'1.4.4','Resize text','Textgröße ändern','aa','Contents must be able to be enlarged up to 200%. This enables people with visual impairments to recognize and read them.','Inhalte müssen auf bis zu 200% vergrössert werden können. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, diese erkennen und lesen zu können.',NULL,NULL,NULL,NULL,NULL,66,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-11-18 13:14:57.000000'),
	(18,'1.4.5','Images of Text','Bilder eines Textes','aa','Texts are not included as font graphics. This allows unrestricted processing and presentation of them.','Texte sind nicht als Schriftgrafiken eingebunden. Dies ermöglicht die uneingeschränkte Verarbeitung und Präsentation derselben.',NULL,NULL,NULL,NULL,NULL,66,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 14:13:05.000000'),
	(19,'1.4.6','Contrast (Enhanced)','Kontrast (erhöht)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,6,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(20,'1.4.7','Low or No Background Audio','Leiser oder kein Hintergrund-Audioinhalt','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,7,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(21,'1.4.8','Visual Presentation','Visuelle Präsentation','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,8,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(22,'1.4.9','Images of Text (No Exception)','Bilder eines Textes (keine Ausnahme)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,9,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(23,'2.1.1','Keyboard','Tastatur','a','Content and functionalities must be accessible and operable with the keyboard alone. This enables people who cannot operate pointing devices (such as a mouse or touchscreen) to reach all content and use all functions.','Inhalte und Funktionalitäten müssen mit der Tastatur alleine erreicht und bedient werden können. Dies ermöglicht es Menschen, die keine Zeigegeräte (etwa Maus oder Touchscreen) bedienen können, sämtliche Inhalte erreichen und alle Funktionen nutzen zu können.',NULL,NULL,'explains why keyboard-operability is a cornerstone in creating accessible websites.',NULL,NULL,68,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(24,'2.1.2','No Keyboard Trap','Keine Tastaturfalle','a','Content and functionalities must not block the keyboard focus. This makes it possible to leave reached elements again.','Inhalte und Funktionalitäten dürfen den Tastaturfokus nicht blockieren. Dies ermöglicht es, erreichte Elemente auch wieder zu verlassen.',NULL,NULL,'explains why the keyboard must not be restricted in focusing elements.',NULL,NULL,68,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(25,'2.1.3','Keyboard (No Exception)','Tastatur (keine Ausnahme)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(26,'2.2.1','Timing Adjustable','Zeiteinteilung anpassbar','a',NULL,'Vorhandene zeitliche Begrenzungen (etwa Session-Logouts) müssen verlängert oder deaktiviert werden können. Dies ermöglicht es Menschen, ununterbrochen arbeiten zu können, auch wenn sie länger brauchen für das Interagieren mit Eingabegeräten (etwa motorisch Eingeschränkte, welche die Tastatur nur mit einem einzelnen Finger bedienen können) oder mehr Zeit für das Verstehen von Software benötigen (etwa Menschen mit Leseschwierigkeiten).',NULL,NULL,NULL,NULL,NULL,69,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(27,'2.2.2','Pause, Stop, Hide','Pausieren, beenden, ausblenden','a',NULL,'Sich bewegender, blinkender oder sonstwie verändernder Inhalt (etwa Werbung) muss gestoppt oder ausgeblendet werden können. Dies ermöglicht es Menschen, die davon abgelenkt werden (etwa bei Aufmerksamkeitsdefiziten), Inhalte störungsfrei zu nutzen.',NULL,NULL,NULL,NULL,NULL,69,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(28,'2.2.3','No Timing','Keine Zeiteinteilung','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:01.000000'),
	(29,'2.2.4','Interruptions','Unterbrechungen','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(30,'2.2.5','Re-authenticating','Erneute Authentifizierung','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(31,'2.3.1','Three Flashes or Below Threshold','Grenzwert von dreimaligem Blitzen oder weniger','a','Animations may flash no more than three times per second. This allows people with light-sensitive seizure disorders (such as epilepsy) to use content safely.','Animationen dürfen höchstens dreimal blitzen pro Sekunde. Dies ermöglicht es Menschen mit lichtempfindlichen Anfallsleiden (etwa Epilepsie), Inhalte gefahrlos zu nutzen.',NULL,NULL,NULL,NULL,NULL,70,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(32,'2.3.2','Three Flashes','Drei Blitze','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(33,'2.4.1','Bypass Blocks','Blöcke umgehen','a','It must be possible to skip repetitive elements (such as the header area) on each page (for example, with a \"Jump to content\" link). This enables immediate interaction with the content of the page, without having to navigate to it in a lengthy manner beforehand.','Sich auf jeder Seite wiederholende Elemente (etwa der Kopfbereich) müssen übersprungen werden können (etwa mit einem Link \"Zum Inhalt springen\"). Dies ermöglicht die sofortige Interaktion mit dem Inhalt der Seite, ohne dass zuvor langwierig dahin navigiert werden muss.',NULL,NULL,'explains why keyboard-only users must be supported to avoid unnecessary keystrokes.',NULL,NULL,71,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 14:23:00.000000'),
	(34,'2.4.10','Section Headings','Abschnittsüberschriften','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,71,10,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(35,'2.4.2','Page Titled','Seite mit Titel versehen','a','Every page needs a unique, meaningful title. This enables assistive technologies (e.g. screen readers) to quickly identify pages and improves orientation when navigating within a website.','Jede Seite benötigt einen eindeutigen, aussagekräftigen Titel. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die schnelle Identifizierung von Seiten und verbessert die Orientierung beim Navigieren innerhalb eines Webauftritts.',NULL,NULL,NULL,NULL,NULL,71,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(36,'2.4.3','Focus Order','Fokus-Reihenfolge','a','Focusable elements must be lined up in a meaningful order. This allows people who only use a keyboard to intuitively and quickly navigate between these elements and interact with them.','Fokussierbare Elemente müssen in einer sinnvollen Reihenfolge aneinander gereiht sein. Dies ermöglicht es Menschen, die nur eine Tastatur benutzen, intuitiv und schnell zwischen diesen Elementen navigieren und mit ihnen interagieren zu können.',NULL,NULL,'explains why it is crucial to arrange focusable elements in an intuitive sequence.',NULL,NULL,71,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(37,'2.4.4','Link Purpose (In Context)','Linkzweck (im Kontext)','a','Links must be labeled in such a way that their goal and purpose are clearly recognizable. This enables assistive technologies (e.g. screen readers) to announce links in a meaningful way even outside their immediate context (e.g. in a listing of all links).','Links müssen so beschriftet werden, dass ihr Ziel und Zweck klar erkennbar ist. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), Links auch ausserhalb ihres unmittelbaren Kontexts (etwa in einer Auflistung aller Links) aussagekräftig anzusagen.',NULL,NULL,NULL,NULL,NULL,71,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(38,'2.4.5','Multiple Ways','Verschiedene Methoden','aa','Navigating within the website is possible both via navigation and via a search and/or sitemap. This allows people to choose which type of navigation best suits their particular needs.','Navigieren innerhalb des Webauftritts ist möglich sowohl über die Navigation als auch über eine Suche und/oder Sitemap. Dies ermöglicht es Menschen, zu wählen, welche Art der Navigation ihren besonderen Bedürfnissen am besten entspricht.',NULL,NULL,NULL,NULL,NULL,71,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(39,'2.4.6','Headings and Labels','Überschriften und Beschriftungen (Labels)','aa','Headings and labels must be meaningful. This enables good navigation within the content and the target-oriented use of the same.','Überschriften und Labels müssen aussagekräftig sein. Dies ermöglicht eine gute Navigation innerhalb der Inhalte und die zielführende Nutzung derselben.',NULL,NULL,NULL,NULL,NULL,71,6,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-25 13:23:22.000000'),
	(40,'2.4.7','Focus Visible','Fokus sichtbar','aa','The keyboard focus must be clearly visible at all times. This enables people with visual impairments to navigate with the keyboard.','Der Tastaturfokus muss jederzeit gut sichtbar sein. Dies ermöglicht es Menschen mit Sehbehinderungen, mit der Tastatur zu navigieren.',NULL,NULL,'explains why the keyboard focus must always be clearly visible.',NULL,NULL,71,7,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(41,'2.4.8','Location','Position','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,71,8,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(42,'2.4.9','Link Purpose (Link Only)','Linkzweck (reiner Link)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,71,9,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(43,'3.1.1','Language of Page','Sprache der Seite','a','Web pages must have a correct language declaration (lang attribute). This enables assistive devices (e.g. screen readers) to read out content with correct pronunciation.','Webseiten müssen über eine korrekte Sprachdeklaration (lang-Attribut) verfügen. Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), Inhalte mit korrekter Aussprache vorzulesen.',NULL,NULL,NULL,NULL,NULL,73,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(44,'3.1.2','Language of Parts','Sprache von Teilen','aa','Language changes (such as an English quote on an otherwise German-language page) must have a correct language declaration (lang attribute). This enables assistive devices (e.g. screen readers) to read out this content with correct pronunciation as well.','Sprachwechsel (etwa ein englisches Zitat auf einer ansonsten deutschsprachigen Seite) müssen über eine korrekte Sprachdeklaration (lang-Attribut) verfügen. Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), diese Inhalte ebenfalls mit korrekter Aussprache vorzulesen.',NULL,NULL,NULL,NULL,NULL,73,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(45,'3.1.3','Unusual Words','Ungewöhnliche Wörter','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,73,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(46,'3.1.4','Abbreviations','Abkürzungen','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,73,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(47,'3.1.5','Reading Level','Leseniveau','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,73,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(48,'3.1.6','Pronunciation','Aussprache','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,73,6,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(49,'3.2.1','On Focus','Bei Fokus','a','Focusing an element alone must not cause a change in its context (such as reloading the entire page). This prevents unpredictable, unintended behavior.','Fokussieren eines Elements alleine darf keine Änderung von dessen Kontext bewirken (etwa Neuladen der gesamten Seite). Dies verhindert unvorhersehbares, unbeabsichtigtes Verhalten.',NULL,NULL,NULL,NULL,NULL,74,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(50,'3.2.2','On Input','Bei Eingabe','a','Interaction with an element (such as selecting an item from a combo box) alone must not cause a change in its context (such as reloading the entire page). This prevents unpredictable, unintended behavior.','Interaktion mit einem Element (etwa das Wählen eines Eintrags aus einer Combobox) alleine darf keine Änderung von dessen Kontext bewirken (etwa Neuladen der gesamten Seite). Dies verhindert unvorhersehbares, unbeabsichtigtes Verhalten.',NULL,NULL,NULL,NULL,NULL,74,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(51,'3.2.3','Consistent Navigation','Konsistente Navigation','aa','The navigation elements must be implemented consistently within a web presence. This enables optimal orientation and navigation.','Die Navigationselemente müssen innerhalb eines Webauftritts konsistent umgesetzt sein. Dies ermöglicht eine optimale Orientierung und Navigation.',NULL,NULL,NULL,NULL,NULL,74,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(52,'3.2.4','Consistent Identification','Konsistente Erkennung','aa','Similar elements must be implemented consistently within a web presence. This enables optimal interaction with the same.','Gleichartige Elemente müssen innerhalb eines Webauftritts konsistent umgesetzt sein. Dies ermöglicht eine optimale Interaktion mit denselben.',NULL,NULL,NULL,NULL,NULL,74,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(53,'3.2.5','Change on Request','Änderung auf Anfrage','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(54,'3.3.1','Error Identification','Fehlererkennung','a','Error messages for form entries must be linked to the corresponding input fields. This enables assistive technologies (e.g. screen readers) to output error messages (independent of the visual level) so that visually impaired people can also perceive the errors.','Fehlermeldungen bei Formulareingaben müssen mit den entsprechenden Eingabefeldern verknüpft sein. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die Ausgabe von Fehlermeldungen (unabhängig von der visuellen Ebene), so dass auch visuell beeinträchtigte Menschen die Fehler wahrnehmen können.',NULL,NULL,NULL,NULL,NULL,75,1,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-07-13 14:42:23.000000'),
	(55,'3.3.2','Labels or Instructions','Beschriftungen (Labels) oder Anweisungen','a','Labels and instructions in forms must be meaningful and linked to the corresponding input fields. This enables assistive technologies (e.g. screen readers) to output the same (independently of the visual level), so that visually impaired people can also fill in the input fields as required.','Beschriftungen und Anweisungen in Formularen müssen aussagekräftig und mit den entsprechenden Eingabefeldern verknüpft sein. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die Ausgabe derselben (unabhängig von der visuellen Ebene), so dass auch visuell beeinträchtigte Menschen die Eingabefelder anforderungsgemäss ausfüllen können.',NULL,NULL,NULL,NULL,NULL,75,2,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(56,'3.3.3','Error Suggestion','Fehlerempfehlung','aa','Error messages for form entries must be meaningful and (if possible) offer assistance in correcting them. This enables the purposeful correction of input errors, which benefits people with cognitive disabilities in particular.','Fehlermeldungen bei Formulareingaben müssen aussagekräftig sein und (wenn möglich) Hilfestellung zu deren Behebung bieten. Dies ermöglicht die zielgerichtete Korrektur von Eingabefehlern, was vor allem Menschen mit kognitiven Behinderungen zugutekommt.',NULL,NULL,NULL,NULL,NULL,75,3,2,'WcagCriterion','2015-08-04 14:36:00.000000','2020-01-18 06:45:12.000000'),
	(57,'3.3.4','Error Prevention (Legal, Financial, Data)','Fehlervermeidung (rechtliche, finanzielle, Daten)','aa','Before completing processes with legal or financial consequences (such as online shopping), it must be possible for users to check and, if necessary, correct their entries. This makes it possible to identify and avoid incorrect entries.','Vor Abschluss von Prozessen mit rechtlichen bzw. finanziellen Konsequenzen (etwa Onlineshopping) muss eine Überprüfung und allfällige Korrektur der Eingaben durch die Nutzenden möglich sein. Dies ermöglicht das Erkennen und Vermeiden von fehlerhaften Eingaben.',NULL,NULL,NULL,NULL,NULL,75,4,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(58,'3.3.5','Help','Hilfe','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,5,2,'WcagCriterion','2015-08-04 14:36:00.000000','2019-10-23 14:41:02.000000'),
	(59,'3.3.6','Error Prevention (All)','Fehlervermeidung (alle)','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,6,2,'WcagCriterion','2015-08-04 14:36:01.000000','2019-10-23 14:41:02.000000'),
	(60,'4.1.1','Parsing','Syntaxanalyse','a','The HTML code of a web presence must not contain any errors relevant to accessibility. This enables assistive technologies (e.g. screen readers) to interpret the page reliably.','Der HTML-Code eines Webauftritts darf keine für die Barrierefreiheit relevanten Fehler aufweisen. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die Seite zuverlässig zu interpretieren.',NULL,NULL,NULL,NULL,NULL,77,1,2,'WcagCriterion','2015-08-04 14:36:01.000000','2020-08-28 07:32:22.000000'),
	(61,'4.1.2','Name, Role, Value','Name, Rolle, Wert','a','Advanced controls (such as JavaScript widgets) must be programmed in such a way that their purpose, operation, and corresponding states can be recognized by software. This enables unrestricted operation of these elements by assistive technologies (e.g. screen readers).','Erweiterte Steuerelemente (etwa JavaScript-Widgets) müssen so programmiert sein, dass ihr Zweck, ihre Bedienung und die entsprechenden Zustände durch Software erkannt werden können. Dies ermöglicht die uneingeschränkte Bedienung dieser Elemente durch assistierende Technologien (z.B. Screenreader).',NULL,NULL,NULL,NULL,NULL,77,2,2,'WcagCriterion','2015-08-04 14:36:01.000000','2020-07-13 16:09:23.000000'),
	(62,'1','Perceivable','Wahrnehmbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2,'WcagPrinciple','2016-01-12 15:09:33.000000','2019-10-23 14:41:01.000000'),
	(63,'1.1','Text Alternatives','Textalternativen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,1,2,'WcagGuideline','2016-01-12 15:09:33.000000','2019-10-23 14:41:01.000000'),
	(64,'1.2','Time-based Media','Zeitbasierte Medien',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,2,2,'WcagGuideline','2016-01-12 15:09:33.000000','2019-10-23 14:41:01.000000'),
	(65,'1.3','Adaptable','Anpassbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,3,2,'WcagGuideline','2016-01-12 15:09:33.000000','2019-10-23 14:41:01.000000'),
	(66,'1.4','Distinguishable','Unterscheidbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,4,2,'WcagGuideline','2016-01-12 15:09:33.000000','2019-10-23 14:41:01.000000'),
	(67,'2','Operable','Bedienbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,'WcagPrinciple','2016-01-12 15:09:34.000000','2019-10-23 14:41:01.000000'),
	(68,'2.1','Keyboard Accessible','Per Tastatur zugänglich',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,1,2,'WcagGuideline','2016-01-12 15:09:34.000000','2020-07-13 14:21:28.000000'),
	(69,'2.2','Enough Time','Ausreichend Zeit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,2,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:01.000000'),
	(70,'2.3','Seizures','Anfälle und physische Reaktionen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,3,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(71,'2.4','Navigable','Navigierbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,4,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(72,'3','Understandable','Verständlich',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,2,'WcagPrinciple','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(73,'3.1','Readable','Lesbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,1,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(74,'3.2','Predictable','Vorhersehbar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,2,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(75,'3.3','Input Assistance','Hilfestellung bei der Eingabe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,3,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(76,'4','Robust','Robust',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,2,'WcagPrinciple','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(77,'4.1','Compatible','Kompatibel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76,1,2,'WcagGuideline','2016-01-12 15:09:34.000000','2019-10-23 14:41:02.000000'),
	(78,'1.3.1b','Lists','Listen',NULL,'Groups of similar elements must be correctly marked as lists. This enables assistive technologies (e.g. screen readers) to capture them and provide a quick overview as well as navigation within them.','Gruppen von ähnlichen Elementen müssen korrekt als Listen ausgezeichnet sein. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), diese zu erfassen und eine schnelle Übersicht sowie Navigation darin anzubieten.',NULL,NULL,NULL,NULL,NULL,11,2,NULL,'WcagCriterion','2016-01-22 11:03:47.000000','2020-08-24 11:01:02.000000'),
	(79,NULL,'Display property of elements','Display-Eigenschaft von Elementen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TODO: Das sollten wir entfernen, ist Wunschdenken (flex-inline und grid-inline verhalten sich nicht wie gehofft)',23,1,NULL,'WcagCriterion','2016-01-22 11:03:47.000000','2019-10-23 14:41:01.000000'),
	(80,'1.3.1c','Forms','Formulare',NULL,'Form fields must have correctly connected captions (labels); in addition, sections of more extensive forms and related radio buttons and checkboxes should be grouped together. This allows assistive technologies (e.g. screen readers) to correctly announce the individual elements so that they can be interacted with.','Formularfelder müssen über korrekt verbundene Beschriftungen (Labels) verfügen; zudem sollen Abschnitte von umfangreicheren Formularen sowie zusammengehörige Radiobuttons und Checkboxen gruppiert werden. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), die einzelnen Elemente korrekt anzukündigen, damit mit ihnen interagiert werden kann.',NULL,NULL,NULL,NULL,NULL,11,3,NULL,'WcagCriterion','2016-01-22 11:03:47.000000','2020-07-13 10:17:52.000000'),
	(83,'1.3.1d','Data tables','Daten-Tabellen',NULL,'Tabular data must be labeled as such, including row/column titles and, if applicable, labels and summaries. This enables assistive technologies (e.g. screen readers) to relate the individual elements to each other, to announce the data in a meaningful way, and to offer navigation within it.','Tabellarische Daten müssen als solche ausgezeichnet werden, inkl. Zeilen-/Spaltentitel sowie ggf. Beschriftung und Zusammenfassung. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), die einzelnen Elemente miteinander in Bezug zu setzen, die Daten sinnvoll anzukündigen sowie Navigation darin anzubieten.',NULL,NULL,NULL,NULL,NULL,11,4,NULL,'WcagCriterion','2016-01-22 11:03:47.000000','2020-07-13 12:04:36.000000'),
	(84,'1.3.1a','Headings outline','Überschriften-Struktur',NULL,'All content blocks on a page must have correctly nested headings. This enables assistive technologies (e.g. screen readers) to grasp the structure and content of the page and provide a quick overview as well as navigation within it.','Alle Inhaltsblöcke einer Seite müssen mit korrekt verschachtelten Überschriften versehen sein. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), die Struktur und Inhalte der Seite zu erfassen und eine schnelle Übersicht sowie Navigation darin anzubieten.',NULL,NULL,NULL,NULL,NULL,11,1,NULL,'WcagCriterion','2016-01-22 11:03:47.000000','2020-07-14 07:50:11.000000'),
	(87,NULL,'Advanced controls (components)','Erweiterte Steuerungselemente (Komponenten)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,1,NULL,'WcagCriterion','2016-01-28 13:28:43.000000','2020-08-28 07:42:57.000000'),
	(88,'1.3.4','Orientation','Bildschirmausrichtung','aa','Content must be able to be displayed and operated in both portrait and landscape format. This makes it possible to decide for yourself whether content in portrait or landscape format is preferred.','Inhalte müssen sowohl in Hoch- wie auch Querformat angezeigt und bedient werden können. Dies ermöglicht selber zu entscheiden, ob Inhalte im Hoch- oder im Querformat bevorzugt werden.',NULL,NULL,NULL,NULL,NULL,65,4,2.1,'WcagCriterion','2019-11-10 20:18:36.000000','2020-02-28 13:44:39.000000'),
	(89,'1.3.5','Identify Input Purpose','Bestimmung des Eingabezwecks','aa','In the case of forms containing personal data, the purpose of the corresponding form fields must be machine-readable (autocomplete attribute). This enables them to be filled in automatically, which benefits people with cognitive and motor disabilities in particular.','Bei Formularen mit Angaben zur eigenen Person muss der Eingabezweck der entsprechenden Formularfelder maschinenlesbar sein (autocomplete-Attribut). Dies ermöglicht das automatische Ausfüllen derselben, was insbesondere Menschen mit kognitiven und motorischen Behinderungen zugutekommt.',NULL,NULL,NULL,NULL,NULL,65,5,2.1,'WcagCriterion','2019-11-10 20:19:06.000000','2020-02-28 13:45:07.000000'),
	(90,'1.3.6','Identify Purpose','Bestimmung des Zwecks','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,6,2.1,'WcagCriterion','2019-11-10 20:19:26.000000','2019-11-10 20:19:26.000000'),
	(91,'1.4.10','Reflow','Umfluss (Reflow)','aa','Content must adapt to the viewport minimum dimensions (so-called reflow). This allows people with visual impairments to use all content even at high magnification without having to scroll in more than one direction.','Inhalt muss sich den Viewport-Mindestdimensionen anpassen (sog. Reflow). Dies ermöglicht Menschen mit Sehbehinderungen, alle Inhalte auch bei hoher Vergrösserung nutzen zu können, ohne in mehr als eine Richtung scrollen zu müssen.',NULL,NULL,NULL,NULL,NULL,66,10,2.1,'WcagCriterion','2019-11-10 20:19:46.000000','2020-02-28 13:46:19.000000'),
	(92,'1.4.11','Non-Text Contrast','Nicht-Text-Kontrast','aa','Control elements (e.g. text fields, radio buttons, check boxes, switches, tabs) and graphical elements (e.g. lines of a diagram) must stand out from the background in terms of color with sufficient contrast. This enables people with visual impairments to perceive the same.','Bedienelemente (z.B. Textfelder, Radiobuttons, Checkboxen, Schalter, Tabs) und grafische Elemente (z.B. Linien eines Diagramms) müssen sich farblich durch genügend Kontrast vom Hintergrund abheben. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, dieselben wahrnehmen zu können.',NULL,NULL,NULL,NULL,NULL,66,11,2.1,'WcagCriterion','2019-11-10 20:20:15.000000','2020-02-28 13:46:36.000000'),
	(93,'1.4.12','Text Spacing','Textabstand','aa','Spacing adjustments for text must be possible without losing content or functionality. This allows people with visual impairments or cognitive disabilities to improve the readability of text (for example, using custom CSS).','Abstandsanpassungen für Text müssen möglich sein, ohne dass Inhalt oder Funktionalität verloren gehen. Dies ermöglicht es Menschen mit Sehbehinderungen oder kognitiven Behinderungen, die Lesbarkeit von Texten zu verbessern (etwa mittels eigenem CSS).',NULL,NULL,NULL,NULL,NULL,66,12,2.1,'WcagCriterion','2019-11-10 20:20:34.000000','2020-02-28 13:47:12.000000'),
	(94,'1.4.13','Content on Hover or Focus','Inhalt bei Überfahren mit dem Zeiger oder Tastaturfokus („Hover“ oder „Focus“)','aa','Fade-in content that is displayed when elements receive mouse cursor or keyboard focus (e.g. custom tooltips or dropdown navigations) must be dismissible, hoverable, and persistent. This allows unrestricted interaction with both these and surrounding content.','Einblendbare Inhalte, die angezeigt werden, wenn Elemente den Mauszeiger- oder Tastaturfokus erhalten (z.B. benutzerdefinierte Tooltips oder Dropdown-Navigationen), müssen ausblendbar, hoverbar und dauerhaft sein. Dies ermöglicht die uneingeschränkte Interaktion sowohl mit diesen als auch mit den umgebenden Inhalten.',NULL,NULL,NULL,NULL,NULL,66,13,2.1,'WcagCriterion','2019-11-10 20:20:52.000000','2020-02-28 13:47:24.000000'),
	(95,'2.1.4','Character Key Shortcuts','Zeichentastenbefehle','a','Keyboard shortcuts must not be activated via individual keys (e.g. **`s`**, **`/`**, **`?`**), or they must be modifiable or deactivatable. This prevents keyboard shortcuts from being triggered by mistake, e.g. by voice input.','Tastaturkurzbefehle dürfen nicht über Einzeltasten (z.B. \"`s`\", \"`/`\", \"`?`\") aktiviert werden, oder sie müssen veränderbar oder deaktivierbar sein. Dies verhindert, dass fälschlicherweise Tastaturkurzbefehle ausgelöst werden, z.B. durch Spracheingabe.',NULL,NULL,'explains why single letter keyboard shortcuts are not allowed.',NULL,NULL,68,4,2.1,'WcagCriterion','2019-11-10 20:22:06.000000','2020-02-28 13:47:40.000000'),
	(96,'2.2.6','Timeouts','Zeitüberschreitung','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,6,2.1,'WcagCriterion','2019-11-10 20:22:44.000000','2019-11-10 20:22:44.000000'),
	(97,'2.3.3','Animation from Interactions','Animation durch Interaktionen','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,3,2.1,'WcagCriterion','2019-11-10 20:23:07.000000','2019-11-10 20:23:07.000000'),
	(98,'2.5','Input Modalities','Eingabemodalitäten',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,5,2.1,'WcagGuideline','2019-11-10 20:23:53.000000','2020-02-28 13:49:19.000000'),
	(99,'2.5.1','Pointer Gestures','Zeigergesten','a','For web content that is operated via path-based pointer or multi-point gestures, there must be alternative input options using simple pointer input. This makes it possible for people with limited freedom of movement to operate this content as well.','Für Web-Inhalte, die über pfadbasierte Zeiger- oder über Mehrpunktgesten bedient werden, muss es alternative Eingabemöglichkeiten geben mittels einfacher Zeigereingabe. Dies ermöglicht es Menschen, die in ihrer Bewegungsfreiheit eingeschränkt sind, jene Inhalte ebenfalls zu bedienen.',NULL,NULL,NULL,NULL,NULL,98,1,2.1,'WcagCriterion','2019-11-10 20:24:09.000000','2020-02-28 13:48:33.000000'),
	(100,'2.5.2','Pointer Cancellation','Zeigeraufhebung','a','It must be possible to cancel pointer entries while they are still being entered, or to undo them. This makes it possible to cancel unintentional inputs, minimizing the risk that functionalities are executed accidentally.','Zeigereingaben müssen noch während der Eingabe abgebrochen werden können, oder es muss möglich sein, sie rückgängig zu machen. Dies ermöglicht das Abbrechen von unbeabsichtigten Eingaben, wodurch das Risiko minimiert wird, dass Funktionalitäten versehentlich ausgeführt werden.',NULL,NULL,NULL,NULL,'TODO: Hatten wir damals mit \"Abbruch von Zeigereingaben\" übersetzt',98,2,2.1,'WcagCriterion','2019-11-10 20:24:28.000000','2020-08-27 15:31:33.000000'),
	(101,'2.5.3','Label in Name','Beschriftung (Label) im Namen','a','The labeling of a control element that is accessible to assistive technologies (e.g., screen readers) must be the same as, or contain, the visually perceivable labeling. This allows people who see the controls visually but interact with them, e.g., via voice control, to operate them intuitively.','Die für assistierende Technologien (z.B. Screenreader) zugänglich verfügbare Beschriftung eines Bedienelements muss gleich sein wie die visuell sichtbare Beschriftung, oder sie muss diese enthalten. Dies ermöglicht es Menschen, welche die Bedienelemente visuell sehen, aber z.B. über eine Sprachsteuerung mit ihnen interagieren, die intuitive Bedienung derselben.',NULL,NULL,NULL,NULL,'TODO: Hatten wir damals mit \"Sichtbare Beschriftung im zugänglichen Namen\" übersetzt',98,3,2.1,'WcagCriterion','2019-11-10 20:24:51.000000','2020-02-28 13:48:47.000000'),
	(102,'2.5.4','Motion Actuation','Auslösen durch Bewegung','a','Functionality that is triggered by device movement (such as shaking the device) must also be able to be executed via an alternative, easy-to-use input. In addition, it must be possible to deactivate such functionality. This makes it possible for people with motor impairments to use these functionalities if necessary.','Funktionalität, die durch Gerätebewegung (etwa Schütteln des Geräts) ausgelöst wird, muss ebenfalls über eine alternative, einfach bedienbare Eingabe ausgeführt werden können. Ausserdem muss eine solche Funktionalität deaktiviert werden können. Dies ermöglicht es motorisch eingeschränkten Menschen, jene Funktionalitäten bei Bedarf auch zu nutzen.',NULL,NULL,NULL,NULL,'TODO: Auslösen, nicht Ausführen (alle deutschen Übersetzungen von 2.1 nochmal abgleichen mit https://outline-rocks.github.io/wcag/translations/WCAG21-de/, wir hatten diese damals selber übersetzt)',98,4,2.1,'WcagCriterion','2019-11-10 20:25:15.000000','2020-02-28 13:48:54.000000'),
	(103,'2.5.5','Target Size','Zielgröße','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,5,2.1,'WcagCriterion','2019-11-10 20:25:32.000000','2019-11-10 20:25:32.000000'),
	(104,'2.5.6','Concurrent Input Mechanisms','Gleichzeitig verfügbare Eingabemechanismen','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,6,2.1,'WcagCriterion','2019-11-10 20:25:49.000000','2019-11-10 20:25:49.000000'),
	(105,'4.1.3','Status Messages','Statusmeldungen','aa','Status messages (information about success, progress or result of an action, or also about occurring errors) must be able to be recognized by assistive technologies (e.g. screen readers). This allows the automatic output of those messages without having to search for them manually and potentially overlooking them.','Statusmeldungen (Informationen über Erfolg, Fortschritt oder Ergebnis einer Aktion, oder auch über auftretende Fehler) müssen erkannt werden können von assistierenden Technologien (z.B. Screenreader). Dies erlaubt die automatische Ausgabe jener Meldungen, ohne dass sie manuell gesucht werden müssen und potenziell übersehen werden.',NULL,NULL,NULL,NULL,NULL,77,3,2.1,'WcagCriterion','2019-11-10 20:26:08.000000','2020-02-28 13:49:38.000000'),
	(106,'1.3.1e','Proper Semantic Markup','Zeichenverwendung',NULL,'Different types of content must be semantically labeled as such, such as paragraphs, citations, or code. This enables assistive technologies (e.g. screen readers) to announce the elements meaningfully as well as provide navigation within them.','Unterschiedliche Arten von Inhalt müssen semantisch als solche ausgezeichnet werden, etwa als Paragraphen, Zitate, oder Code. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), die Elemente sinnvoll anzukündigen sowie Navigation innerhalb derselben anzubieten.',NULL,NULL,NULL,NULL,'TODO: Warum heisst das in der A11y Checkliste \"Zeichenverwendung\"? Wäre etwas wie \"Angemessene semantische Auszeichnung\" nicht viel besser?!',11,5,NULL,'WcagCriterion','2020-07-13 11:46:23.000000','2020-07-13 11:56:04.000000');

/*!40000 ALTER TABLE `wcag_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table websites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `websites`;

CREATE TABLE `websites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_client_id` (`client_id`),
  CONSTRAINT `fk_rails_8d9657cec3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `websites` WRITE;
/*!40000 ALTER TABLE `websites` DISABLE KEYS */;

INSERT INTO `websites` (`id`, `client_id`, `name`, `url`, `notes`, `created_at`, `updated_at`)
VALUES
	(1,1,'Presserat.ch','https://presserat.ch','Accessibility Starter Kit: Kurz-Review (ca. 5-8 Seiten) plus Demo-Video (ca. 5min)\n\nCHF 1000.- 😊','2022-11-09 17:46:02.000000','2022-11-09 17:46:02.000000'),
	(2,2,'Strikingly.com','https://www.strikingly.com/','Mini-Review des Frontends (um zu entscheiden, ob nutzbar für Interim-Website der Inklusions-Initiative)','2022-11-09 17:51:15.000000','2022-11-09 17:51:15.000000');

/*!40000 ALTER TABLE `websites` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
