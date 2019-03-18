-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 18 Mars 2019 à 10:42
-- Version du serveur :  10.1.37-MariaDB-0+deb9u1
-- Version de PHP :  7.2.14-1+0~20190113100742.14+stretch~1.gbpd83c69

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `adopte`
--

-- --------------------------------------------------------

--
-- Structure de la table `additional`
--

CREATE TABLE `additional` (
  `id` int(11) NOT NULL,
  `type_info` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `additional`
--

INSERT INTO `additional` (`id`, `type_info`, `content`, `visit_card_id`) VALUES
(1, 'assert', 'Honnête', 1),
(2, 'assert', 'Vaillant', 1),
(3, 'interest', 'Les guerriers géant d\'Elbaf', 1),
(4, 'assert', 'Mignon', 2),
(5, 'assert', 'Doux', 2),
(6, 'interest', 'La barbe à papa', 2),
(7, 'assert', 'Pragmatique', 3),
(8, 'assert', 'Agile', 3),
(9, 'interest', 'Les ponéglyphes', 3),
(10, 'assert', 'Drôle', 4),
(11, 'assert', 'Multi fonction', 4),
(12, 'interest', 'Les bateaux', 4),
(13, 'assert', 'Indispensable', 5),
(14, 'interest', 'La musique', 5),
(15, 'interest', 'Laboon', 5),
(16, 'assert', 'Calme', 6),
(17, 'assert', 'Sérieux', 6),
(18, 'assert', 'Puissant', 7),
(19, 'assert', 'Qui impose le respect', 7),
(20, 'interest', 'Gol D. Roger', 7),
(21, 'interest', 'Monkey D. Luffy', 7),
(22, 'interest', 'L\'or', 9),
(23, 'interest', 'La gloire', 9),
(24, 'assert', 'Leader née', 9),
(25, 'assert', 'Charismatique', 9),
(31, 'assert', 'super', 3),
(32, 'assert', 'coucou2', 3),
(33, 'assert', 'ballon', 3),
(34, 'assert', 'Fort', 29),
(35, 'assert', 'Beau', 29),
(36, 'interest', 'Musique', 29),
(37, 'interest', 'Tests', 31),
(38, 'assert', 'Expériences', 31),
(40, 'assert', 'Fort', 29);

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_order` smallint(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `published_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_story` tinyint(1) NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `list_order`, `status`, `published_at`, `updated_at`, `user_id`, `is_story`, `slug`) VALUES
(1, 'Qu\'est ce que \"Adopte un alternant\" ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus sapien sapien, in ultricies ante aliquet id. Suspendisse pulvinar mi sit amet tellus elementum, eu efficitur mauris suscipit. Quisque varius nisl iaculis commodo blandit. Pellentesque eget ligula condimentum, finibus dolor vel, ultrices leo. Etiam metus justo, lobortis non neque in, mollis consectetur urna. Ut in nisl at tellus tristique ullamcorper. Donec egestas, quam eget vehicula feugiat, felis diam consequat felis, vitae dignissim lacus lorem ac nunc. Vivamus leo sapien, faucibus ut dolor non, consequat maximus nibh. Vestibulum et hendrerit magna, vestibulum faucibus nibh. Mauris eget mi ut sem hendrerit fermentum vel semper libero. Donec euismod sed justo ac elementum. Ut aliquet velit sed aliquam ultricies. Quisque id interdum ligula, non suscipit dui. Suspendisse eros est, bibendum sit amet mattis eget, dapibus ac eros.\r\n\r\nSed ut nisl nec turpis pretium tincidunt. Nulla facilisi. Aenean condimentum sem vel ipsum fringilla venenatis. Pellentesque tempor vitae eros in iaculis. Curabitur porta lectus eget posuere laoreet. Praesent id bibendum nunc. Maecenas scelerisque scelerisque tellus ac tincidunt. Quisque sit amet viverra orci. Fusce non metus odio. Suspendisse nulla massa, bibendum sollicitudin metus id, facilisis pretium nibh. Curabitur non pharetra nibh, eget molestie enim. Vivamus et magna fermentum, faucibus nisi vitae, vulputate purus. Aenean et massa nec nunc placerat molestie.\r\n\r\nMorbi mauris libero, tristique eu tempus pulvinar, blandit et metus. Mauris consectetur efficitur lectus sed varius. Integer sed tempus libero, vel consequat mauris. Etiam congue, risus et sodales bibendum, massa lectus mollis orci, in condimentum arcu ante eu nibh. Sed eu nulla vitae massa imperdiet imperdiet a id urna. Nulla vel orci id eros eleifend rhoncus. Fusce id elit nulla. Donec vestibulum tempus sapien, a ultricies nunc. In hac habitasse platea dictumst. Nulla vitae hendrerit nisi.', 1, 1, '2019-01-21 17:20:41', NULL, 4, 0, 'qu-est-ce-que-adopte-un-alternant'),
(2, 'Comment fonctionne le site ?', 'Morbi mauris libero, tristique eu tempus pulvinar, blandit et metus. Mauris consectetur efficitur lectus sed varius. Integer sed tempus libero, vel consequat mauris. Etiam congue, risus et sodales bibendum, massa lectus mollis orci, in condimentum arcu ante eu nibh. Sed eu nulla vitae massa imperdiet imperdiet a id urna. Nulla vel orci id eros eleifend rhoncus. Fusce id elit nulla. Donec vestibulum tempus sapien, a ultricies nunc. In hac habitasse platea dictumst. Nulla vitae hendrerit nisi.\r\n\r\nNunc at euismod leo, eget mattis tellus. Integer dapibus quam erat, eu rhoncus odio dapibus at. Phasellus eget urna pellentesque, tempus urna sed, rutrum augue. Nunc quis placerat mauris. Nulla et risus tempus tellus sodales placerat sed non quam. Aliquam feugiat ante at elit tincidunt, quis tincidunt lorem auctor. Aliquam ut justo commodo, tempor ligula non, commodo turpis. Etiam a nisi rutrum, dictum metus non, tempus ex. Duis sit amet justo egestas, maximus risus eget, interdum nisi. Aliquam non ultricies elit, in malesuada sapien. Nulla id dapibus ante. Cras porttitor felis sit amet risus aliquet auctor. Nunc eu libero nec risus elementum venenatis. Etiam orci enim, euismod sit amet dolor vel, accumsan laoreet massa.\r\n\r\nCras efficitur nibh purus, et posuere orci fermentum sit amet. Praesent auctor erat leo, sit amet ullamcorper lacus lobortis ac. Donec nunc ante, faucibus a tellus sed, accumsan viverra felis. Mauris odio nisl, suscipit ac ex vitae, bibendum interdum est. Sed dignissim erat ligula, quis tristique nibh fermentum eget. Donec sed eros placerat, imperdiet eros sit amet, pharetra ipsum. Cras eget nunc nec est viverra consectetur. Donec varius, magna vel faucibus iaculis, justo ligula consequat elit, ut convallis est lacus sed metus. Suspendisse nec neque enim. Nunc vel purus vel nisl semper aliquet id ac diam. Nulla facilisi. Vestibulum suscipit velit in feugiat imperdiet. Nullam consectetur, leo eu porttitor interdum, erat urna vulputate velit, quis mollis libero nisi ullamcorper felis.', 2, 1, '2019-01-21 15:16:42', NULL, 4, 0, 'comment-fonctionne-le-site'),
(3, 'Qu\'est ce que l\'alternance ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec dui et neque vulputate posuere. Donec imperdiet arcu id rhoncus venenatis. Pellentesque sapien orci, placerat non orci at, volutpat vehicula neque. Nulla luctus felis in nulla volutpat sodales. Fusce posuere tincidunt volutpat. Sed viverra hendrerit pulvinar. Duis venenatis turpis felis, sed porttitor sem aliquam in. Curabitur id metus lectus. Nam posuere malesuada ipsum in rutrum. Fusce at tristique sapien, ac ornare libero. Praesent sagittis felis id metus lobortis, ac semper augue malesuada. Praesent placerat tellus at turpis posuere semper. Nullam euismod vehicula lacus, eget accumsan tellus elementum ut. Nam sollicitudin eros fermentum nulla tempor facilisis. Curabitur non ullamcorper velit, eu suscipit dui. Vestibulum vitae enim vitae metus semper suscipit.\r\n\r\nVivamus sit amet fermentum eros, in tempus risus. Ut sapien nulla, lacinia ut arcu sit amet, tempus lobortis orci. Mauris consectetur dolor augue, eu viverra neque placerat ut. Donec quis elit fermentum nisi elementum condimentum. Maecenas sodales sit amet leo vel accumsan. Pellentesque arcu ex, tempus eu quam a, faucibus venenatis diam. Phasellus ultrices justo et ex volutpat, at malesuada eros varius. Donec malesuada vestibulum augue porta vestibulum. Maecenas efficitur purus quis dictum auctor. Vivamus porta sapien vitae pellentesque eleifend.\r\n\r\nProin dignissim, orci ac dictum viverra, mi felis convallis lacus, at venenatis dolor velit vel mi. Nullam porttitor nisi et fringilla cursus. In condimentum rutrum tellus vestibulum luctus. Phasellus dictum sit amet mauris nec placerat. Ut sed tristique est. Nullam faucibus lorem justo, quis ultrices risus pulvinar eu. Duis ultricies leo et tellus posuere facilisis. Maecenas non sem erat.\r\n\r\nSed sed dictum ligula. Nullam aliquam magna sit amet egestas mattis. Etiam rhoncus bibendum eros, varius suscipit ex iaculis quis. Sed aliquam sollicitudin dolor, non euismod odio gravida in. Suspendisse eleifend faucibus diam eget fermentum. Pellentesque mi orci, posuere non justo ac, condimentum consequat odio. Nullam vehicula scelerisque purus, quis vulputate orci. Mauris viverra magna ante, vitae consectetur risus suscipit ac. Pellentesque eu finibus nunc, maximus porttitor odio. Quisque bibendum dui sit amet eleifend gravida. Cras ultrices iaculis malesuada. Curabitur consectetur ante eu lacus iaculis, vel cursus tellus ullamcorper. Proin semper luctus porta. Morbi tempus nunc erat, sed consequat lorem vehicula non. Pellentesque ac quam sit amet tortor scelerisque eleifend eget luctus orci.\r\n\r\nAenean fermentum molestie quam ut tincidunt. Sed volutpat eu dui vel lobortis. Quisque vulputate efficitur rhoncus. Sed purus massa, porttitor semper porttitor a, finibus eu nisi. Duis faucibus egestas augue at laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris feugiat tempus augue, vitae lacinia ligula ornare at. Nam cursus nibh quis aliquam convallis. Sed malesuada quis lectus a pulvinar. Quisque efficitur, massa nec euismod euismod, sem dui varius urna, sed scelerisque neque nisi nec lacus. Praesent ac euismod purus. Mauris fermentum lacus ut erat ullamcorper vehicula. Ut vitae porta turpis. Morbi pharetra, urna nec sodales imperdiet, elit nisl ultricies mauris, eu dapibus lectus erat non sapien. Nullam ullamcorper sapien ultricies, bibendum nunc eget, aliquet lacus. Nullam tristique varius enim ac ullamcorper.', 3, 1, '2019-01-21 16:00:39', NULL, 4, 0, 'qu-est-ce-que-l-alternance'),
(4, 'En quelques clic j\'ai trouvé un alternant !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec dui et neque vulputate posuere. Donec imperdiet arcu id rhoncus venenatis. Pellentesque sapien orci, placerat non orci at, volutpat vehicula neque. Nulla luctus felis in nulla volutpat sodales. Fusce posuere tincidunt volutpat. Sed viverra hendrerit pulvinar. Duis venenatis turpis felis, sed porttitor sem aliquam in. Curabitur id metus lectus. Nam posuere malesuada ipsum in rutrum. Fusce at tristique sapien, ac ornare libero. Praesent sagittis felis id metus lobortis, ac semper augue malesuada. Praesent placerat tellus at turpis posuere semper. Nullam euismod vehicula lacus, eget accumsan tellus elementum ut. Nam sollicitudin eros fermentum nulla tempor facilisis. Curabitur non ullamcorper velit, eu suscipit dui. Vestibulum vitae enim vitae metus semper suscipit.', 1, 1, '2019-01-21 19:26:00', NULL, 4, 1, 'en-quelques-clic-j-ai-trouve-un-alternant'),
(5, 'Un tas de nakama à porté de la main !', 'Vivamus sit amet fermentum eros, in tempus risus. Ut sapien nulla, lacinia ut arcu sit amet, tempus lobortis orci. Mauris consectetur dolor augue, eu viverra neque placerat ut. Donec quis elit fermentum nisi elementum condimentum. Maecenas sodales sit amet leo vel accumsan. Pellentesque arcu ex, tempus eu quam a, faucibus venenatis diam. Phasellus ultrices justo et ex volutpat, at malesuada eros varius. Donec malesuada vestibulum augue porta vestibulum. Maecenas efficitur purus quis dictum auctor. Vivamus porta sapien vitae pellentesque eleifend.\r\n\r\nProin dignissim, orci ac dictum viverra, mi felis convallis lacus, at venenatis dolor velit vel mi. Nullam porttitor nisi et fringilla cursus. In condimentum rutrum tellus vestibulum luctus. Phasellus dictum sit amet mauris nec placerat. Ut sed tristique est. Nullam faucibus lorem justo, quis ultrices risus pulvinar eu. Duis ultricies leo et tellus posuere facilisis. Maecenas non sem erat.', 2, 1, '2019-01-21 14:20:00', NULL, 4, 1, 'un-tas-de-nakama-a-porte-de-la-main'),
(6, 'Ça fonctionne ! En 15 jours seulement j\'ai pu trouver une alternance', 'Aenean fermentum molestie quam ut tincidunt. Sed volutpat eu dui vel lobortis. Quisque vulputate efficitur rhoncus. Sed purus massa, porttitor semper porttitor a, finibus eu nisi. Duis faucibus egestas augue at laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris feugiat tempus augue, vitae lacinia ligula ornare at. Nam cursus nibh quis aliquam convallis. Sed malesuada quis lectus a pulvinar. Quisque efficitur, massa nec euismod euismod, sem dui varius urna, sed scelerisque neque nisi nec lacus. Praesent ac euismod purus. Mauris fermentum lacus ut erat ullamcorper vehicula. Ut vitae porta turpis. Morbi pharetra, urna nec sodales imperdiet, elit nisl ultricies mauris, eu dapibus lectus erat non sapien. Nullam ullamcorper sapien ultricies, bibendum nunc eget, aliquet lacus. Nullam tristique varius enim ac ullamcorper.', 3, 1, '2019-01-21 18:53:03', NULL, 4, 1, 'ca-fonctionne-en-15-jours-seulement-j-ai-pu-trouver-une-alternance'),
(7, 'Adieu pôle emploi, grâce à adopte un alternant j\'ai été contacté par une dizaines d\'entreprise en moins d\'un mois !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec dui et neque vulputate posuere. Donec imperdiet arcu id rhoncus venenatis. Pellentesque sapien orci, placerat non orci at, volutpat vehicula neque. Nulla luctus felis in nulla volutpat sodales. Fusce posuere tincidunt volutpat. Sed viverra hendrerit pulvinar. Duis venenatis turpis felis, sed porttitor sem aliquam in. Curabitur id metus lectus. Nam posuere malesuada ipsum in rutrum. Fusce at tristique sapien, ac ornare libero. Praesent sagittis felis id metus lobortis, ac semper augue malesuada. Praesent placerat tellus at turpis posuere semper. Nullam euismod vehicula lacus, eget accumsan tellus elementum ut. Nam sollicitudin eros fermentum nulla tempor facilisis. Curabitur non ullamcorper velit, eu suscipit dui. Vestibulum vitae enim vitae metus semper suscipit.', 4, 1, '2019-01-21 12:39:23', NULL, 4, 1, 'adieu-pole-emploi-grace-a-adopte-un-alternant-j-ai-ete-contacte-par-une-dizaine-d-entreprise-en-moins-d-un-mois');

-- --------------------------------------------------------

--
-- Structure de la table `award_level`
--

CREATE TABLE `award_level` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `award_level`
--

INSERT INTO `award_level` (`id`, `name`) VALUES
(1, 'Brevet des collèges'),
(2, 'Bac'),
(3, 'Bts'),
(4, 'Licence'),
(5, 'Master'),
(6, 'DUT'),
(7, 'IUT'),
(8, 'Bac +2'),
(9, 'Bac +3');

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `department`
--

INSERT INTO `department` (`id`, `name`, `code`) VALUES
(1, 'Ain', '01'),
(2, 'Aisne', '02'),
(3, 'Allier', '03'),
(4, 'Alpes-de-Haute-Provence', '04'),
(5, 'Hautes-alpes', '05'),
(6, 'Alpes-maritimes', '06'),
(7, 'Ardèche', '07'),
(8, 'Ardennes', '08'),
(9, 'Ariège', '09'),
(10, 'Aube', '10'),
(11, 'Aude', '11'),
(12, 'Aveyron', '12'),
(13, 'Bouches-du-Rhône', '13'),
(14, 'Calvados', '14'),
(15, 'Cantal', '15'),
(16, 'Charente', '16'),
(18, 'Cher', '18'),
(19, 'Corrèze', '19'),
(20, 'Corse-du-sud', '2a'),
(21, 'Haute-Corse', '2b'),
(22, 'Côte-d\'Or', '21'),
(23, 'Côtes-d\'Armor', '22'),
(24, 'Creuse', '23'),
(25, 'Dordogne', '24'),
(26, 'Doubs', '25'),
(27, 'Drôme', '26'),
(28, 'Eure', '27'),
(29, 'Eure-et-loir', '28'),
(30, 'Finistère', '29'),
(31, 'Gard', '30'),
(32, 'Haute-garonne', '31'),
(33, 'Gers', '32'),
(34, 'Gironde', '33'),
(35, 'Hérault', '34'),
(36, 'Ille-et-vilaine', '35'),
(37, 'Indre', '36'),
(38, 'Indre-et-loire', '37'),
(39, 'Isère', '38'),
(40, 'Jura', '39'),
(41, 'Landes', '40'),
(42, 'Loir-et-cher', '41'),
(43, 'Loire', '42'),
(44, 'Haute-loire', '43'),
(45, 'Loire-atlantique', '44'),
(46, 'Loiret', '45'),
(47, 'Lot', '46'),
(48, 'Lot-et-garonne', '47'),
(49, 'Lozère', '48'),
(50, 'Maine-et-loire', '49'),
(51, 'Manche', '50'),
(52, 'Marne', '51'),
(53, 'Haute-marne', '52'),
(54, 'Mayenne', '53'),
(55, 'Meurthe-et-moselle', '54'),
(56, 'Meuse', '55'),
(57, 'Morbihan', '56'),
(58, 'Moselle', '57'),
(59, 'Nièvre', '58'),
(60, 'Nord', '59'),
(61, 'Oise', '60'),
(62, 'Orne', '61'),
(63, 'Pas-de-calais', '62'),
(64, 'Puy-de-dôme', '63'),
(65, 'Pyrénées-atlantiques', '64'),
(66, 'Hautes-Pyrénées', '65'),
(67, 'Pyrénées-orientales', '66'),
(68, 'Bas-rhin', '67'),
(69, 'Haut-rhin', '68'),
(70, 'Rhône', '69'),
(71, 'Haute-saône', '70'),
(72, 'Saône-et-loire', '71'),
(73, 'Sarthe', '72'),
(74, 'Savoie', '73'),
(75, 'Haute-savoie', '74'),
(76, 'Paris', '75'),
(77, 'Seine-maritime', '76'),
(78, 'Seine-et-marne', '77'),
(79, 'Yvelines', '78'),
(80, 'Deux-sèvres', '79'),
(81, 'Somme', '80'),
(82, 'Tarn', '81'),
(83, 'Tarn-et-garonne', '82'),
(84, 'Var', '83'),
(85, 'Vaucluse', '84'),
(86, 'Vendée', '85'),
(87, 'Vienne', '86'),
(88, 'Haute-vienne', '87'),
(89, 'Vosges', '88'),
(90, 'Yonne', '89'),
(91, 'Territoire de belfort', '90'),
(92, 'Essonne', '91'),
(93, 'Hauts-de-seine', '92'),
(94, 'Seine-Saint-Denis', '93'),
(95, 'Val-de-marne', '94'),
(96, 'Val-d\'oise', '95'),
(97, 'Guadeloupe', '971'),
(98, 'Martinique', '972'),
(99, 'Guyane', '973'),
(100, 'La réunion', '974'),
(101, 'Mayotte', '976');

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ended_at` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `experience`
--

INSERT INTO `experience` (`id`, `company_name`, `started_at`, `status`, `ended_at`, `description`, `visit_card_id`) VALUES
(1, 'Mermaid coffee', '2017-06-05 00:00:00', 1, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut tellus nisi. Proin arcu ipsum, placerat sit amet imperdiet tempor, maximus vel elit. In pellentesque semper congue.', 1),
(2, 'Neptune shop', '2018-05-03 00:00:00', 1, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut tellus nisi. Proin arcu ipsum, placerat sit amet imperdiet tempor, maximus vel elit. In pellentesque semper congue.', 2),
(3, 'Grand Line store', '2016-05-03 00:00:00', 1, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut tellus nisi. Proin arcu ipsum, placerat sit amet imperdiet tempor, maximus vel elit. In pellentesque semper congue.', 3),
(4, 'Water seven', '2014-01-01 00:00:00', 0, '2017-03-13 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula.', 4),
(5, 'Taiyō no Kaizoku-dan', '2016-01-01 00:00:00', 0, '2018-01-16 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien.', 6),
(6, 'Sabaody', '2018-01-01 00:00:00', 1, NULL, 'Vestibulum sed libero non nisi dictum fermentum ut ultricies lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. In porttitor leo velit, nec rutrum nibh ullamcorper sed. Cras mollis odio non erat sagittis commodo. Maecenas urna augue, venenatis nec egestas rutrum, feugiat non massa', 7),
(7, 'Roger & nakama', '2016-01-01 00:00:00', 0, '2018-03-14 00:00:00', 'Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 9),
(8, 'Marineford', '2014-01-01 00:00:00', 1, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien.', 10),
(10, 'Trololo', '2014-01-01 00:00:00', 1, NULL, 'J\'ai servi des cafés.', 29),
(11, 'entreprise', '2014-01-01 00:00:00', 1, NULL, 'Experience', 19);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `award_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `obtained_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `visit_card_id` int(11) DEFAULT NULL,
  `award_level_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id`, `award_name`, `started_at`, `status`, `obtained_at`, `ended_at`, `visit_card_id`, `award_level_id`, `school_id`) VALUES
(1, 'Apprenti snipper', '2017-09-01 00:00:00', 0, '2018-10-01 00:00:00', '2017-09-01 00:00:00', 1, 1, 1),
(2, 'Apprenti médecin', '2017-09-01 00:00:00', 0, '2018-10-01 00:00:00', '2018-09-01 00:00:00', 2, 2, 2),
(3, 'Apprenti archéologue', '2017-09-01 00:00:00', 1, '2018-10-01 00:00:00', '2024-09-01 00:00:00', 3, 3, 3),
(4, 'Snipper confirmé', '2018-11-01 00:00:00', 1, NULL, '2019-02-01 00:00:00', 1, 4, 4),
(5, 'Médecin confirmé', '2018-11-01 00:00:00', 1, NULL, '2019-02-01 00:00:00', 2, 5, 5),
(6, 'Archéologue confirmé', '2018-11-01 00:00:00', 0, NULL, '2019-02-01 00:00:00', 3, 6, 6),
(7, 'Titre du plus grand sniper de tout les temps', '2019-03-01 00:00:00', 2, NULL, '2020-01-01 00:00:00', 1, 7, 7),
(8, 'Titre du plus grand médecin de tout les temps', '2019-03-01 00:00:00', 2, NULL, '2020-01-01 00:00:00', 2, 8, 8),
(9, 'Titre de la plus grande archéologue de tout les temps', '2019-03-01 00:00:00', 2, NULL, '2020-01-01 00:00:00', 3, 9, 8),
(14, 'Titre du plus grand charpentier de tout les temps', '2019-06-06 00:00:00', 2, NULL, '2022-03-13 00:00:00', 4, 5, 7),
(15, 'Charpentier confirmé', '2015-01-01 00:00:00', 0, '2019-02-01 00:00:00', '2018-01-01 00:00:00', 4, 3, 7),
(16, 'Plus grand musicien de tout les temps', '2019-01-01 00:00:00', 2, NULL, '2020-01-01 00:00:00', 5, 5, 2),
(17, 'Titre du personnage le plus sérieux', '2018-01-01 00:00:00', 2, NULL, '2020-01-01 00:00:00', 6, 6, 6),
(18, 'Corsaire', '2009-01-01 00:00:00', 0, '2019-01-10 00:00:00', '2018-01-01 00:00:00', 6, 5, 7),
(19, 'Grand maître du haki des rois', '2019-01-01 00:00:00', 2, NULL, '2022-01-01 00:00:00', 7, 8, 5),
(20, 'Plus grand conquérant de Grand Line', '2019-01-01 00:00:00', 2, NULL, '2022-01-01 00:00:00', 8, 9, 8),
(21, 'Pirate', '2014-01-01 00:00:00', 0, '2017-03-15 00:00:00', '2017-01-01 00:00:00', 8, 4, 9),
(22, 'Titre du pirate le plus chanceux de tout les temps', '2020-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 9, 6, 1),
(23, 'Apprenti chanceux', '2011-01-01 00:00:00', 0, '2016-09-09 00:00:00', '2015-01-01 00:00:00', 9, 2, 9),
(24, 'Plus grand bretteur du monde', '2019-01-01 00:00:00', 2, NULL, '2021-01-01 00:00:00', 10, 5, 8),
(25, 'Bretteur confirmé', '2012-01-01 00:00:00', 0, '2016-06-08 00:00:00', '2016-01-01 00:00:00', 10, 6, 10),
(26, 'Expert en pacification', '2019-01-01 00:00:00', 2, NULL, '2021-01-01 00:00:00', 11, 1, 7),
(27, 'Apprenti pacifista', '2014-01-01 00:00:00', 0, '2017-08-14 00:00:00', '2017-01-01 00:00:00', 11, 7, 7),
(28, 'Gorgogne', '2019-01-01 00:00:00', 2, NULL, '2023-01-01 00:00:00', 12, 9, 11),
(29, 'Titre de la pirate la plus séduisante', '2011-01-01 00:00:00', 0, '2016-10-16 00:00:00', '2016-01-01 00:00:00', 12, 8, 12),
(30, 'Grand corsaire', '2019-01-01 00:00:00', 2, NULL, '2023-01-01 00:00:00', 13, 4, 9),
(31, 'Apprenti Shishibukai', '2011-01-01 00:00:00', 0, '2018-08-15 00:00:00', '2018-01-01 00:00:00', 13, 9, 8),
(32, 'Savant fou', '2019-01-01 00:00:00', 2, NULL, '2024-10-17 00:00:00', 14, 5, 13),
(33, 'Apprenti savant fou', '2012-01-01 00:00:00', 0, '2015-08-15 00:00:00', '2015-01-01 00:00:00', 14, 5, 13),
(34, 'Grand corsaire', '2019-01-01 00:00:00', 2, NULL, '2022-01-01 00:00:00', 15, 4, 14),
(35, 'Apprenti corsaire', '2014-01-01 00:00:00', 0, '2016-05-14 00:00:00', '2016-01-01 00:00:00', 15, 7, 8),
(36, 'Voleur de fruit du démon', '2020-01-01 00:00:00', 2, NULL, '2021-01-01 00:00:00', 16, 4, 8),
(37, 'Empereur', '2013-01-01 00:00:00', 0, '2017-07-15 00:00:00', '2017-01-01 00:00:00', 16, 6, 8),
(38, 'Agent du gouvernement mondial', '2021-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 17, 2, 15),
(39, 'Maître charpentier', '2013-01-01 00:00:00', 0, '2018-08-10 00:00:00', '2018-01-01 00:00:00', 17, 4, 16),
(40, 'Agent officier', '2021-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 18, 1, 17),
(41, 'Maître de la cire', '2012-01-01 00:00:00', 0, '2014-08-14 00:00:00', '2014-01-01 00:00:00', 18, 2, 17),
(42, 'Commandant de seconde flotte', '2021-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 19, 3, 8),
(43, 'Capitaine', '2013-01-01 00:00:00', 0, '2015-08-16 00:00:00', '2015-01-01 00:00:00', 19, 2, 8),
(44, 'Princesse', '2020-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 20, 3, 18),
(45, 'Apprenti princesse', '2011-01-01 00:00:00', 0, '2014-10-16 00:00:00', '2013-01-01 00:00:00', 20, 1, 18),
(46, 'Tiran', '2021-01-01 00:00:00', 2, NULL, '2023-01-01 00:00:00', 21, 1, 8),
(47, 'Chef takoyaki', '2021-01-01 00:00:00', 2, NULL, '2022-01-01 00:00:00', 22, 4, 9),
(48, 'Arme antique', '2020-01-01 00:00:00', 2, NULL, '2023-01-01 00:00:00', 23, 4, 19),
(49, 'Productrice de clémentine', '2020-01-01 00:00:00', 2, NULL, '2021-01-01 00:00:00', 24, 4, 20),
(50, 'Acolyte des Rumbar', '2021-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 25, 5, 21),
(51, 'Capitaine d\'équipage', '2020-01-01 00:00:00', 2, NULL, '2024-01-01 00:00:00', 26, 3, 8),
(52, 'Musicien', '2012-01-01 00:00:00', 0, '2017-08-15 00:00:00', '2016-01-01 00:00:00', 5, 9, 8),
(53, 'Apprenti du haki des Rois', '2012-01-01 00:00:00', 0, '2015-07-14 00:00:00', '2015-01-01 00:00:00', 7, 8, 6),
(54, 'Roublard professionnel', '2011-01-01 00:00:00', 0, '2013-03-16 00:00:00', '2013-01-01 00:00:00', 26, 7, 10),
(55, 'Apprenti accolyte', '2015-06-03 00:00:00', 0, '2017-09-14 00:00:00', '2017-06-16 00:00:00', 25, 1, 22),
(56, 'Apprenti productrice', '2012-01-01 00:00:00', 0, '2016-09-18 00:00:00', '2016-01-01 00:00:00', 24, 4, 20),
(57, 'Apprenti sirène', '2011-01-01 00:00:00', 0, '2014-08-16 00:00:00', '2014-01-01 00:00:00', 23, 3, 23),
(58, 'Bras droit de Arlong', '2010-01-01 00:00:00', 0, '2014-03-16 00:00:00', '2014-01-01 00:00:00', 22, 2, 20),
(59, 'Maître d\'Arlong Park', '2017-01-01 00:00:00', 0, '2018-02-11 00:00:00', '2018-01-01 00:00:00', 21, 6, 20),
(60, 'Titre pro développement web et web mobile', '2019-05-20 00:00:00', 2, NULL, '2020-05-20 00:00:00', 27, 9, 1),
(61, 'Aménagement paysagers', '2010-09-01 00:00:00', 0, '2013-07-11 00:00:00', '2013-07-01 00:00:00', 27, 2, 24),
(65, 'Bac', '2020-01-01 00:00:00', 2, NULL, '2021-01-01 00:00:00', 29, 4, 20),
(66, 'Développeur Web', '2015-01-01 00:00:00', 0, '2016-01-02 00:00:00', '2016-01-01 00:00:00', 29, 8, 5);

-- --------------------------------------------------------

--
-- Structure de la table `is_apprenticeship`
--

CREATE TABLE `is_apprenticeship` (
  `id` int(11) NOT NULL,
  `academic_pace` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `is_apprenticeship`
--

INSERT INTO `is_apprenticeship` (`id`, `academic_pace`, `formation_id`) VALUES
(1, '2 semaines en entreprise, 1 semaine en formation', 7),
(2, '3 semaines en entreprise, 2 semaines en formation', 8),
(3, '3 jours en entreprise, 2 jours en formation', 9),
(4, '3 jours de cours, 4 jours d\'entreprise', 14),
(5, '2 jours d\'entreprise et 3 jours de cours', 16),
(6, '3 jours cours, 4 jours entreprise', 17),
(7, 'Trois mois en entreprise, un mois en école', 19),
(8, 'Un an en entreprise, deux mois en école', 20),
(9, '3 jours cours, 4 jours entreprise', 22),
(10, '3 jours cours, 4 jours entreprise', 24),
(11, '2 jours d\'entreprise et 3 jours de cours', 26),
(12, '2 jours d\'entreprise et 3 jours de cours', 28),
(13, '2 jours d\'entreprise et 3 jours de cours', 30),
(14, '9 jours entreprise, 6 jours école', 32),
(15, '3 jours cours, 4 jours entreprise', 34),
(16, '6 mois entreprise, 1 mois école', 36),
(17, '3 jours cours, 4 jours entreprise', 38),
(18, '2 jours d\'entreprise et 3 jours de cours', 40),
(19, '3 jours cours, 4 jours entreprise', 42),
(20, 'Entreprise à plein temps', 44),
(21, '3 jours cours, 4 jours entreprise', 46),
(22, '2 jours d\'entreprise et 3 jours de cours', 47),
(23, '3 jours cours, 4 jours entreprise', 48),
(24, '3 jours cours, 4 jours entreprise', 49),
(25, '6 mois en mer, 3 mois à quai', 50),
(26, '2 jours d\'entreprise et 3 jours de cours', 51),
(27, '2 jours cours, 3 jours entreprise', 60),
(29, '1 jour par semaine', 65);

-- --------------------------------------------------------

--
-- Structure de la table `is_candidate`
--

CREATE TABLE `is_candidate` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `is_candidate`
--

INSERT INTO `is_candidate` (`id`, `phone_number`, `picture`, `user_id`, `updated_at`) VALUES
(1, '+33628563341', '', 1, NULL),
(2, '+33664883942', 'chopper.jpeg', 2, NULL),
(3, '+33653084139', '5c8a600bb7bf8606216794.php', 3, '2019-03-14 15:07:08'),
(4, NULL, 'franky.jpg', 9, '2019-02-11 00:00:00'),
(5, '+33628563363', 'brook.jpg', 10, '2019-02-11 00:00:00'),
(6, NULL, 'jinbei.jpg', 11, NULL),
(7, '+33616834962', 'silvers.jpg', 12, NULL),
(8, '+33658364208', 'shanks.jpg', 13, NULL),
(9, NULL, 'baggy.png', 14, NULL),
(10, NULL, 'mihawk.jpeg', 15, NULL),
(11, NULL, 'kuma.jpg', 16, NULL),
(12, NULL, 'boa.jpg', 17, NULL),
(13, NULL, 'crocodile.jpg', 18, NULL),
(14, NULL, 'moria.png', 19, NULL),
(15, NULL, 'law.jpeg', 20, NULL),
(16, NULL, 'teach.jpeg', 21, NULL),
(17, NULL, 'lucci.jpg', 22, NULL),
(18, NULL, 'mr3.png', 23, NULL),
(19, NULL, 'ace.png', 24, NULL),
(20, NULL, 'vivi.jpg', 25, NULL),
(21, NULL, 'arlong.jpg', 26, NULL),
(22, NULL, 'octo.png', 27, NULL),
(23, NULL, 'shirahoshi.jpg', 28, NULL),
(24, NULL, 'belmer.jpg', 29, NULL),
(25, NULL, 'laboon.jpg', 30, NULL),
(26, NULL, 'foxy.jpg', 31, NULL),
(27, '+33628523363', NULL, 32, NULL),
(28, NULL, NULL, 33, NULL),
(29, '0630848511', '5c8636aae6922291189471.jpg', 34, '2019-03-11 11:21:30'),
(30, NULL, NULL, 35, NULL),
(31, NULL, NULL, 37, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `is_candidate_is_recruiter`
--

CREATE TABLE `is_candidate_is_recruiter` (
  `is_candidate_id` int(11) NOT NULL,
  `is_recruiter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `is_candidate_is_recruiter`
--

INSERT INTO `is_candidate_is_recruiter` (`is_candidate_id`, `is_recruiter_id`) VALUES
(1, 3),
(3, 2),
(3, 3),
(19, 1),
(29, 5),
(30, 2),
(31, 6);

-- --------------------------------------------------------

--
-- Structure de la table `is_recruiter`
--

CREATE TABLE `is_recruiter` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_location` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `is_recruiter`
--

INSERT INTO `is_recruiter` (`id`, `company_name`, `phone_number`, `company_location`, `user_id`) VALUES
(1, 'Merry & Nakama', '+33693584460', 'Toulon', 5),
(2, 'Thousand Sunny', '+33638469925', 'Marseille', 6),
(3, 'Grand line ', '+33616830496', 'Lyon', 7),
(4, 'Sunny go & co', '+33646358112', 'Metz', 4),
(5, 'Kaizoku Oni', '+33616835524', 'Lorient', 8),
(6, NULL, NULL, NULL, 36);

-- --------------------------------------------------------

--
-- Structure de la table `is_story`
--

CREATE TABLE `is_story` (
  `id` int(11) NOT NULL,
  `witness_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `is_story`
--

INSERT INTO `is_story` (`id`, `witness_name`, `article_id`) VALUES
(1, 'Sanji Vinsmoke', 4),
(2, 'Monkey D Luffy', 5),
(3, 'Nico Robin', 6),
(4, 'Tony Chopper', 7);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `is_recruiter_id` int(11) DEFAULT NULL,
  `is_candidate_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_at` datetime NOT NULL,
  `send_by` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`id`, `is_recruiter_id`, `is_candidate_id`, `content`, `send_at`, `send_by`) VALUES
(1, 2, 1, 'bonjour', '2019-02-12 14:15:15', 0),
(2, 2, 1, 'coucou', '2019-02-12 14:15:26', 1),
(3, 2, 1, 'recruteur', '2019-02-12 14:15:30', 1),
(4, 2, 1, ':-)', '2019-02-12 14:15:40', 0),
(5, 2, 3, 'coucou', '2019-02-12 17:54:27', 0),
(6, 2, 3, 'Bonjour recruteur', '2019-02-12 17:54:37', 1),
(7, 2, 3, 'comment allez vous', '2019-02-12 17:54:47', 0),
(8, 2, 3, 'Super Comment puis je vous aider?', '2019-02-12 17:54:59', 1),
(9, 2, 4, 'Bonjour, votre profil m’intéresse', '2019-02-28 17:07:03', 0),
(10, 2, 4, 'Suuuuper !', '2019-02-28 17:08:53', 1),
(11, 2, 1, 'Bonjour, je suis un recruteur, êtes-vous disponible pour discuter ?', '2019-03-02 13:58:15', 0),
(12, 2, 1, 'Bonjour,', '2019-03-02 13:58:31', 1),
(13, 2, 1, 'merci de prendre contact avec moi. Je suis disponible, oui.', '2019-03-02 13:58:42', 1),
(14, 2, 1, 'Très bien. Pouvez-vous vous présenter ?', '2019-03-02 13:59:03', 0),
(15, 2, 3, 'Pouvons-nous rencontrer', '2019-03-10 12:08:59', 0),
(16, 2, 3, 'Bien sûr quand vous voulez', '2019-03-10 12:09:16', 1),
(17, 2, 30, 'Bonjour', '2019-03-10 15:29:46', 0),
(18, 2, 30, 'Bonjour', '2019-03-10 15:30:05', 1),
(19, 2, 30, 'Nous serions intéressé par votre profil', '2019-03-10 15:30:40', 0),
(20, 2, 30, 'Bonjour à nouveau', '2019-03-10 17:05:54', 0),
(21, 2, 30, 'Re Bonjour', '2019-03-10 17:06:16', 1),
(22, 2, 29, 'Bonjour', '2019-03-11 09:28:18', 0),
(23, 2, 29, 'Bonjour', '2019-03-11 09:29:31', 1),
(24, 2, 30, 'Bonjour Candidat', '2019-03-11 11:33:13', 0),
(25, 2, 30, 'Bonjour', '2019-03-11 11:33:36', 1),
(26, 2, 30, 'Bonjour encore', '2019-03-11 14:39:26', 0),
(27, 2, 30, 'Embauchez moi!!!', '2019-03-11 14:39:47', 1),
(28, 5, 29, 'Bonjour', '2019-03-12 08:59:41', 0),
(29, 5, 29, 'Bonjour', '2019-03-12 08:59:55', 1),
(30, 5, 29, 'Bonjour', '2019-03-12 15:23:33', 0),
(31, 5, 29, 'Bonjour', '2019-03-12 15:23:54', 1),
(32, 5, 29, 'Bonjour', '2019-03-13 09:44:28', 0),
(33, 5, 29, 'Bonjour', '2019-03-13 09:44:45', 1),
(34, 2, 30, 'Bonjour', '2019-03-13 12:15:14', 0),
(35, 2, 30, 'Hello', '2019-03-13 12:15:26', 1),
(36, 2, 30, 'Bonjour à nouveau', '2019-03-14 09:30:31', 0),
(37, 2, 30, 'Hi', '2019-03-14 09:30:41', 1),
(38, 2, 30, 'Bonjour', '2019-03-14 14:35:32', 0),
(39, 1, 19, 'bonjour', '2019-03-14 14:37:12', 0),
(40, 1, 19, 'Bien le bonjour', '2019-03-14 14:37:33', 1),
(41, 5, 29, 'Bonsoir', '2019-03-14 16:09:19', 0),
(42, 5, 29, 'Bonsoir', '2019-03-14 16:09:34', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190121174649', NULL),
('20190121184658', NULL),
('20190123110338', NULL),
('20190123122356', NULL),
('20190126122417', NULL),
('20190126135443', NULL),
('20190126143219', NULL),
('20190129094512', NULL),
('20190129232613', NULL),
('20190131191421', NULL),
('20190201171134', NULL),
('20190202132320', NULL),
('20190205095510', NULL),
('20190207162110', '2019-02-07 16:21:21'),
('20190207165305', '2019-02-07 16:53:13'),
('20190207184317', '2019-02-07 18:43:21');

-- --------------------------------------------------------

--
-- Structure de la table `mobility`
--

CREATE TABLE `mobility` (
  `id` int(11) NOT NULL,
  `town_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `mobility`
--

INSERT INTO `mobility` (`id`, `town_name`, `department_id`) VALUES
(8, 'Brest', 30),
(9, 'Marseille', 13),
(10, 'Toulon', 84),
(11, 'Aix-en-Provence', 13),
(12, 'Paris', 76),
(13, 'Lille', 60),
(14, 'Bordeaux', 34),
(15, 'Nancy', 55),
(16, 'Angers', 50),
(17, 'Mérignac', 34),
(19, 'Arette', 65),
(20, 'Garons', 31),
(21, 'Luri', 21),
(22, 'Barr', 68),
(23, 'Persan', 96),
(24, 'Bardos', 65),
(25, 'Bois-Jérôme-Saint-Ouen', 28),
(26, 'Marizy-Saint-Mard', 2),
(27, 'Pérols', 35),
(28, 'Bersée', 60),
(29, 'Nersac', 16),
(30, 'Saint-Mexant', 19),
(31, 'Putot-en-Auge', 14),
(32, 'Pouzay', 38),
(33, 'Mériel', 96),
(34, 'Cornas', 7),
(35, 'Tursac', 25),
(36, 'Néron', 29),
(37, 'Moimay', 71),
(38, 'Bréhan', 57),
(39, 'Levallois-Perret', 93),
(40, 'Mahéru', 62),
(41, 'Roubaix', 60),
(42, 'Rônai', 62),
(43, 'Merten', 58),
(44, 'Noisy-le-Sec', 94),
(45, 'Nargis', 46),
(46, 'Nousseviller-lès-Bitche', 58),
(47, 'Wormhout', 60),
(48, 'Voise', 29),
(49, 'Quœux-Haut-Maînil', 63),
(50, 'Gourin', 57),
(51, 'Traize', 74),
(52, 'Saint-Vrain', 92),
(53, 'Bornel', 61),
(54, 'Véretz', 38),
(55, 'Morieux', 23),
(56, 'Bérou-la-Mulotière', 29),
(57, 'Brouchy', 81),
(58, 'Peri', 20),
(59, 'Groix', 57),
(60, 'Saint-Groux', 16),
(61, 'Picarreau', 40),
(62, 'Trouhans', 22),
(63, 'Crevin', 36),
(64, 'Le Moule', 97),
(65, 'Brouck', 58),
(66, 'Mariol', 3),
(67, 'Prouvy', 60),
(68, 'Pordic', 23),
(69, 'Marieux', 81),
(70, 'Saint-Cricq', 33),
(71, 'Brive-la-Gaillarde', 19),
(72, 'Gramat', 47),
(73, 'Courlay', 80),
(74, 'Laon', 2),
(75, 'Sedan', 8),
(76, 'Bourges', 18),
(77, 'Bourg-en-Bresse', 1),
(78, 'Rodez', 12),
(79, 'Valence', 27),
(80, 'Manosque', 4),
(81, 'Troyes', 10),
(82, 'Guéret', 24),
(83, 'Gap', 5),
(84, 'Aigurande', 37),
(85, 'Dax', 41),
(86, 'Nice', 6),
(87, 'Blois', 42),
(88, 'Pontarlier', 26),
(89, 'Foix', 9),
(90, 'Carcassonne', 11),
(91, 'Toulouse', 32),
(92, 'Curis-au-Mont-d\'Or', 70),
(93, 'Lyon', 70),
(94, 'Préseau', 60),
(95, 'Lorient', 57),
(96, 'Versailles', 79),
(97, 'Fouchy', 68),
(98, 'Hiermont', 81);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `code`, `name`) VALUES
(1, 'ROLE_ADMIN', 'Administrateur'),
(2, 'ROLE_RECRUITER', 'Recruteur'),
(3, 'ROLE_CANDIDATE', 'Candidat');

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `school`
--

INSERT INTO `school` (`id`, `name`) VALUES
(1, 'O\'clock'),
(2, 'Web School Factory '),
(3, 'SupdeWeb'),
(4, 'Cifacom'),
(5, 'Coding Academy'),
(6, 'IIM Léonard de Vinci '),
(7, 'Ecole européenne des métiers de l\'internet'),
(8, 'Kaizoku School'),
(9, 'Grand Line'),
(10, 'Kuraigana'),
(11, 'Amazon Lily'),
(12, 'Mero Mero Factory'),
(13, 'Thriller Bark'),
(14, 'Sabaody'),
(15, 'CP9'),
(16, 'Galley-La Company'),
(17, 'Baroque Works'),
(18, 'Alabasta'),
(19, 'Neptune'),
(20, 'Arlong Park'),
(21, 'Reverse Mountain'),
(22, 'Rumbar'),
(23, 'Tour Neptune'),
(24, 'Agricampus'),
(25, 'Notre Dame de Bellegarde');

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `skill`
--

INSERT INTO `skill` (`id`, `name`) VALUES
(1, 'PHP'),
(2, 'Symfony'),
(3, 'Laravel'),
(4, 'Javascript'),
(5, 'React'),
(6, 'Angular'),
(7, 'Node.js'),
(8, 'WordPress'),
(9, 'Java'),
(10, 'C'),
(11, 'C++'),
(12, 'Python'),
(13, 'Ruby'),
(14, 'SQL'),
(15, 'C#'),
(16, 'Cobra'),
(17, 'CSS'),
(18, 'HTML'),
(19, 'Bootstrap'),
(20, 'Bulma'),
(21, 'Delphi'),
(22, 'Pascal'),
(23, 'QuakeC'),
(24, 'Scratch'),
(25, 'TypeScript'),
(26, 'Unix Shell'),
(27, 'xHTML'),
(28, 'CodeIgniter'),
(29, 'PEAR'),
(30, 'Zend');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `token`, `status`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Usopp', 'Sogeking', 'sogeking@gmail.com', '$2y$13$xvb0Cq..xT8riT7pK/NogO1bUZ6PUZxQ.g1AVwAm/jwU9ZVfjH2dy', NULL, 1, '2019-01-21 20:56:06', '2019-01-29 12:07:55', 3),
(2, 'Tony', 'Chopper', 'tonytony@gmail.com', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', NULL, 1, '2019-01-21 19:20:13', NULL, 3),
(3, 'Robin', 'Nico', 'nico.robin@gmail.com', '$2y$13$eVJvgkSNYHeCBwLY1gQWrOMVNJdmesJCOZfEh9ik6o2I//mQr9PSi', NULL, 1, '2019-01-21 21:44:29', '2019-03-14 09:23:56', 3),
(4, 'Nami', 'Belmer', 'treasur@gmail.com', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', NULL, 1, '2019-01-21 22:27:51', NULL, 2),
(5, 'Luffy', 'Monkey D.', 'kaizoku@gmail.com', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', NULL, 1, '2019-01-21 12:20:48', NULL, 2),
(6, 'Zoro', 'Roronoa', 'marimo@gmail.com', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', NULL, 1, '2019-01-21 09:43:05', '2019-03-08 21:11:35', 2),
(7, 'Sanji', 'Vinsmoke', 'namiswaaan@gmail.com', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', NULL, 1, '2019-01-21 14:07:33', NULL, 2),
(8, 'Roger', 'Gol D.', 'jesuisunrecruteur@gmail.com', '$2y$13$Y51qbUemcpvjNNXosi60V.xv7vKfD5DOIN5.aePRTtC.SKob6KEGG', NULL, 1, '2019-02-11 09:53:02', NULL, 2),
(9, 'Franky', 'CuttyFlam', 'suuuuuper@gmail.com', '$2y$13$.oNcljrMIB.CFK/dbSpDVOgsLZFbOlV/jJ9kiK0HWWYIDpqUXGtQC', NULL, 1, '2019-02-11 10:29:08', '2019-02-11 10:31:39', 3),
(10, 'Brook', 'TheSkeleton', 'binksnosake@gmail.com', '$2y$13$Kga8NDrOsn9KxFAOT69QDO3Dtg0qr2j0fM9XNKT8OsSzSW.kLymmq', NULL, 1, '2019-02-11 10:40:44', NULL, 3),
(11, 'Jinbei', 'LePaladinDesMers', 'fishmen@gmail.com', '$2y$13$dmYQyo75CGX5AXgmqsBYB.DI0MBejHNVJMQ8Jz9JdA7yLttgM5CVy', NULL, 1, '2019-02-11 10:50:21', '2019-02-11 10:58:57', 3),
(12, 'Rayleigh', 'Silvers', 'silvers@gmail.com', '$2y$13$vxl1zn0EHBULrZNk4GmBlOhwPZMuvd.7IZVA4ksnbxdXNalow7TwW', NULL, 1, '2019-02-11 11:01:24', NULL, 3),
(13, 'Shanks', 'LeRoux', 'redforce@gmail.com', '$2y$13$rNs8h6y5oGDGqF7cHBGXe.zmfXGFVIyk7C15nkl8E9kMTbGoUFlia', NULL, 1, '2019-02-11 11:11:24', NULL, 3),
(14, 'Baggy', 'LeClown', 'baggy@gmail.com', '$2y$13$Cf4e5zgt99ToE3KobnFM5etE.z99Yr/TKUnSnqAZxZRfhYLTr7fra', NULL, 1, '2019-02-11 11:25:37', NULL, 3),
(15, 'Mihawk', 'Dracule', 'mihawk@gmail.com', '$2y$13$PnZyzll6.qN7eRdNdxleyuyidvk3Ak53xV5XOF0f9tlVkgpWSlOJ2', NULL, 1, '2019-02-11 11:48:32', NULL, 3),
(16, 'Bartholomew', 'Kuma', 'pacifista@gmail.com', '$2y$13$CnbsX1QkCrdTq0Kzb1uFqe6Q82r1m2ugGqm0LmHQVCmx9inSB8moq', NULL, 1, '2019-02-11 11:54:30', NULL, 3),
(17, 'Boa', 'Hancock', 'snake@gmail.com', '$2y$13$u7qnb.RcgDx.t7GDJJ2AyuHVq3XzL7O7RFY7T/4HqtB.v9FS1rE52', NULL, 1, '2019-02-11 12:03:54', NULL, 3),
(18, 'Crocodile', 'Sir', 'baroque@gmail.com', '$2y$13$5aiKYNtLQ.euVOAlRKBclOO/wQhQNmtrc.Yf4WBu2V.CBYlP3A2eO', NULL, 1, '2019-02-11 12:17:09', NULL, 3),
(19, 'Moria', 'Gecko', 'thrillerbark@gmail.com', '$2y$13$jJeCRcWzdUrexASgOzzIheD66J9m4yueJuLQ6Y.QpTSle93Uaf5aa', NULL, 1, '2019-02-11 12:23:21', NULL, 3),
(20, 'Law', 'Trafalgar D. Water', 'heart@gmail.com', '$2y$13$2ynQsujC2TRjKooTXfDDUe/5swJ.JUPGedl5ccxkAu6zb3C1pkEyC', NULL, 1, '2019-02-11 12:31:02', NULL, 3),
(21, 'Marshall', 'D. Teach', 'barbenoir@gmail.com', '$2y$13$JMq9AA.Z5oL.h/wRURP9QuotGYLLmu1xakXZ7YqIpoJNm14DgS8g.', NULL, 1, '2019-02-11 12:57:20', NULL, 3),
(22, 'Lucci', 'Rob', 'cpnine@gmail.com', '$2y$13$TtUzFTJwYTIt/IGSbNoVfePqXZle/NTX6czkdvUrC0o1iCgY2A4X2', NULL, 1, '2019-02-11 13:04:44', NULL, 3),
(23, 'Galdino', 'L\'usurier', 'mr3@gmail.com', '$2y$13$bpUTHFIBS6Lk0A70heOfgeJl8DUolyQS/W.C0.6F/kn1p2pNUFQUi', NULL, 1, '2019-02-11 13:13:22', NULL, 3),
(24, 'Ace', 'Portgas D.', 'ace@gmail.com', '$2y$13$SJgfMtZ5TUTg6U9c6O79zuogpAkXNnJsbxrW7CyS5zp1GfSQeYONm', NULL, 1, '2019-02-11 13:20:14', NULL, 3),
(25, 'Vivi', 'Nefertari', 'alabasta@gmail.com', '$2y$13$3gp1sRA/1TPp9GpbcInCa.sq3c7pldQ7j0EH9D5JQbpjuShdPfnbO', NULL, 1, '2019-02-11 13:30:32', NULL, 3),
(26, 'Arlong', 'La Scie', 'arlongpark@gmail.com', '$2y$13$MOkWOiHXornIqQSsfvjOjev0T.5Ct4WSSEYFGBi9IR05H9j6Lxkgq', NULL, 1, '2019-02-11 13:50:32', NULL, 3),
(27, 'Octy', 'Hatchan', 'fisher@gmail.com', '$2y$13$NenTnWO2pG7jQ3V9.T.TpuaMk/8GuXM3fG7Ry7so2o0lpvE8LAil2', NULL, 1, '2019-02-11 13:56:42', NULL, 3),
(28, 'Shirahoshi', 'Poséidon', 'shira@gmail.com', '$2y$13$T/5F2I1VW9eqW0L9TYHa1ev1Yv0AWXnYLVXHD6pBjsiWsmbSIY2Uq', NULL, 1, '2019-02-11 14:03:15', NULL, 3),
(29, 'Belmer', 'San', 'belmer@gmail.com', '$2y$13$0cYK/.O8PFmQY3IElPofgeokrnIAqtIJjk/ws7LL6UnC3xDTQP8Ta', NULL, 1, '2019-02-11 14:10:23', NULL, 3),
(30, 'Laboon', 'The Whale', 'laboon@gmail.com', '$2y$13$Z3qe.eqiiIU0wl2V6IbDfOSKVh4yblLm8xEjPdnOeOnRTtOLvqcNq', NULL, 1, '2019-02-11 14:16:10', NULL, 3),
(31, 'Foxy', 'Le Renard Argenté', 'foxy@gmail.com', '$2y$13$3PL80I4Y7sEP/0CF2vuS8.q4dToEsXY972hkj/Ii24cbH2MA0rkTy', NULL, 1, '2019-02-11 14:23:26', NULL, 3),
(32, 'John', 'Giant', 'john.giant@hotmail.fr', '$2y$13$HxqEW3NvrgmWmNGIvW9MVOcHNXFNAaP1JTCutSK40ipVtbx.gO.jO', NULL, 1, '2019-02-12 12:27:16', NULL, 3),
(33, 'Van', 'Augur', 'van.augur@gmail.com', '$2y$13$rVVN3o36meI8LGl2pPG9bezmf3rjXCSVCA1u665fxan.CpgMtyITW', NULL, 1, '2019-03-07 10:36:40', NULL, 3),
(34, 'Cyriel', 'Martin', 'cyriel.martin@gmail.com', '$2y$13$SDT4NxA5zCe.dO6pgI.1IuP.F2bEBIPVERDEXs3GgLeFlkmBYrIHS', NULL, 1, '2019-03-07 11:01:57', '2019-03-08 14:28:08', 3),
(35, 'aude', 'millequant', 'aude.millequant@wanadoo.fr', '$2y$13$QXlnVF3hK/kO5K5pnj70pu5omba3vizl49o8lid1u2UIeq8v5G.uS', NULL, 1, '2019-03-10 15:22:22', NULL, 3),
(36, 'Alain', 'SEKRETEV', 'fff@gmail.com', '$2y$13$cZfdrF7RTi1tDntH9Qof6.5kwX3c0B1u40A05F0xTRseOMbwWwxSa', NULL, 1, '2019-03-13 15:38:41', NULL, 2),
(37, 'Irénée', 'SEKRETEV', 'jj@gmail.com', '$2y$13$KkQetE3VoClNC46gl8wF0O/7GMgcZct8J9g8Q56J0U0I0EXozDv/e', NULL, 1, '2019-03-13 15:44:44', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `visit_card`
--

CREATE TABLE `visit_card` (
  `id` int(11) NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `adopted` tinyint(1) NOT NULL,
  `visibility_choice` smallint(6) NOT NULL,
  `is_candidate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `visit_card`
--

INSERT INTO `visit_card` (`id`, `about`, `adopted`, `visibility_choice`, `is_candidate_id`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quam eros, accumsan a augue quis, suscipit ornare nibh. Mauris erat arcu, porttitor a pharetra vel, blandit et dui. Aliquam faucibus est nec ultricies cursus. Phasellus et mattis risus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque mauris elit, varius vitae congue at, tempor et nisi. Proin ex nulla, iaculis in elementum vitae, posuere varius elit. Donec a vestibulum ligula, a tristique nunc. Phasellus auctor imperdiet volutpat. Sed eu nunc non dui tristique cursus vitae et neque. Donec placerat ex ac ante convallis, ac interdum ex eleifend. Suspendisse porttitor enim tortor, sed aliquam ligula sodales eu.\r\n\r\nCurabitur ultricies dolor eu felis aliquet mattis. Maecenas at volutpat nibh. Pellentesque id commodo nisl. Nullam felis ante, imperdiet at nunc ac, ornare mollis libero. Sed gravida in risus id sagittis. Morbi in neque velit. Cras eu est sapien. Sed condimentum justo magna, ut dictum tortor ornare id. Mauris condimentum nibh eget mattis rutrum. Nam volutpat, odio tempor blandit finibus, orci lorem sollicitudin lorem, a malesuada nibh lectus at erat. Maecenas lobortis dictum justo eu facilisis. Nam eu ultrices ligula. Nulla nec dolor a ante interdum viverra id in risus. Aliquam ligula odio, faucibus nec ex ac, tincidunt lacinia purus. Nam maximus eu ligula convallis iaculis. Aliquam erat volutpat.', 0, 1, 1),
(2, 'Vivamus at lacinia leo, in bibendum ipsum. Sed elit augue, volutpat id blandit quis, vulputate quis magna. Fusce malesuada lobortis tortor, vitae lobortis velit. Nam in imperdiet ligula. Maecenas eget tristique dolor, ut efficitur quam. Etiam rhoncus, enim at egestas tempor, erat mi laoreet erat, eu euismod libero mi eget lorem. Cras sed fringilla magna. Pellentesque euismod lectus vitae augue accumsan fermentum. Praesent sit amet malesuada leo. Duis turpis elit, molestie quis posuere id, convallis vel dui. Donec nec iaculis nisl. Pellentesque odio leo, suscipit quis erat quis, sagittis sagittis eros. Mauris diam arcu, mollis fringilla feugiat quis, venenatis quis odio. Maecenas ut ex nec turpis eleifend accumsan sagittis nec leo.', 1, 2, 2),
(3, 'Ut vitae malesuada velit. Vestibulum sed nisl finibus, blandit libero nec, finibus ex. Nulla congue placerat nisl in molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam varius eros lacus, vitae molestie mi suscipit at. Aenean ac justo sed nisi elementum iaculis sed sed sapien. Nulla tincidunt placerat turpis, vel imperdiet orci convallis a. Proin pulvinar semper ultrices. Maecenas id tincidunt dolor, sit amet euismod ante. Fusce felis justo, tincidunt vel nisi et, porttitor feugiat nisi. Praesent et neque non ligula suscipit convallis.\r\n\r\nUt scelerisque massa ac suscipit scelerisque. Aenean ut sollicitudin ligula. Proin porttitor dignissim diam sit amet rutrum. Ut justo turpis, auctor et ullamcorper non, molestie pellentesque eros. Suspendisse varius placerat lorem sed gravida. Phasellus sed ante lacus. Nulla ipsum eros, scelerisque ac porttitor sed, ultrices sit amet erat.', 0, 0, 3),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 0, 0, 4),
(5, 'Vestibulum sed libero non nisi dictum fermentum ut ultricies lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. In porttitor leo velit, nec rutrum nibh ullamcorper sed. Cras mollis odio non erat sagittis commodo. Maecenas urna augue, venenatis nec egestas rutrum, feugiat non massa.', 0, 2, 5),
(6, 'Mauris rhoncus varius eros at tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst. Nam a auctor diam. Donec iaculis dignissim lacus id dapibus. Phasellus vitae neque neque. Mauris molestie turpis quis est ornare, sit amet cursus nulla porta. Etiam sollicitudin vel justo quis ornare.', 0, 2, 6),
(7, 'Vestibulum sed libero non nisi dictum fermentum ut ultricies lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. In porttitor leo velit, nec rutrum nibh ullamcorper sed. Cras mollis odio non erat sagittis commodo. Maecenas urna augue, venenatis nec egestas rutrum, feugiat non massa', 0, 0, 7),
(8, 'Vestibulum pulvinar egestas tortor, sit amet ullamcorper arcu eleifend id. Sed et nisi ex. Ut ut ipsum vitae purus bibendum facilisis et vitae purus. Duis iaculis, turpis ut pulvinar luctus, orci purus cursus urna, in tristique nibh nulla efficitur mi. Fusce tristique auctor laoreet. Ut euismod dui vitae porttitor mollis.', 0, 1, 8),
(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit. Quisque at enim eu odio blandit viverra quis at leo. Aenean ornare ac ipsum et commodo. Donec iaculis laoreet felis sed tincidunt.', 0, 2, 9),
(10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien.', 0, 0, 10),
(11, 'Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit. Quisque at enim eu odio blandit viverra quis at leo. Aenean ornare ac ipsum et commodo. Donec iaculis laoreet felis sed tincidunt.', 0, 0, 11),
(12, 'Maecenas id nunc aliquet ex luctus viverra. In sodales mi et tortor lacinia, non ornare leo rhoncus. Aenean eu turpis egestas, pulvinar massa eget, molestie ante. Donec luctus orci at lectus fringilla euismod.\r\nVestibulum sed libero non nisi dictum fermentum ut ultricies lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. In porttitor leo velit, nec rutrum nibh ullamcorper sed. Cras mollis odio non erat sagittis commodo.', 0, 1, 12),
(13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis.', 0, 2, 13),
(14, 'Vestibulum sed libero non nisi dictum fermentum ut ultricies lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. In porttitor leo velit, nec rutrum nibh ullamcorper sed. Cras mollis odio non erat sagittis commodo. Maecenas urna augue, venenatis nec egestas rutrum, feugiat non massa.', 0, 0, 14),
(15, 'Mauris rhoncus varius eros at tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst. Nam a auctor diam. Donec iaculis dignissim lacus id dapibus. Phasellus vitae neque neque. Mauris molestie turpis quis est ornare, sit amet cursus nulla porta. Etiam sollicitudin vel justo quis ornare. Mauris feugiat eleifend neque vel sodales. Sed suscipit ante erat, vitae tempor felis ornare in. Maecenas vitae dui libero.', 0, 1, 15),
(16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit. Quisque at enim eu odio blandit viverra quis at leo. Aenean ornare ac ipsum et commodo. Donec iaculis laoreet felis sed tincidunt. Maecenas id nunc aliquet ex luctus viverra. In sodales mi et tortor lacinia, non ornare leo rhoncus.', 0, 0, 16),
(17, 'Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit. Quisque at enim eu odio blandit viverra quis at leo. Aenean ornare ac ipsum et commodo. Donec iaculis laoreet felis sed tincidunt.', 0, 2, 17),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 0, 1, 18),
(19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit', 0, 0, 19),
(20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit', 0, 0, 20),
(21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit', 0, 2, 21),
(22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit', 0, 1, 22),
(23, 'Donec iaculis laoreet felis sed tincidunt. Maecenas id nunc aliquet ex luctus viverra. In sodales mi et tortor lacinia, non ornare leo rhoncus. Aenean eu turpis egestas, pulvinar massa eget, molestie ante. Donec luctus orci at lectus fringilla euismod.\r\nVestibulum sed libero non nisi dictum fermentum ut ultricies lorem.', 0, 2, 23),
(24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 0, 2, 24),
(25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 0, 2, 25),
(26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar maximus ex, ut euismod enim lobortis imperdiet. Fusce non posuere sapien, in sodales sapien. Morbi ac felis ligula. Pellentesque tincidunt a tellus eget elementum. Etiam suscipit turpis in arcu lobortis tristique eu quis felis. Nullam quis sem velit.', 0, 1, 26),
(27, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate id enim et elementum. Sed in laoreet sem. Nulla facilisi. In commodo ornare consequat. Fusce arcu justo, cursus non condimentum nec, aliquet et erat. Donec euismod vitae elit a pharetra. Morbi accumsan malesuada odio, a tempor tortor fringilla ut.', 0, 0, 27),
(28, NULL, 0, 0, 28),
(29, 'Je m\'présente, je m\'appelle Henri. J\'voudrais bien réussir ma vie, être aimé. Être beau gagner de l\'argent. Puis surtout être intelligent. Mais pour tout ça il faudrait que j\'bosse à plein temps.', 0, 0, 29),
(30, NULL, 0, 0, 30),
(31, 'azert yuiuop', 0, 0, 31);

-- --------------------------------------------------------

--
-- Structure de la table `visit_card_mobility`
--

CREATE TABLE `visit_card_mobility` (
  `visit_card_id` int(11) NOT NULL,
  `mobility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `visit_card_mobility`
--

INSERT INTO `visit_card_mobility` (`visit_card_id`, `mobility_id`) VALUES
(1, 10),
(1, 11),
(3, 9),
(3, 12),
(3, 93),
(4, 14),
(4, 15),
(4, 16),
(5, 19),
(6, 20),
(6, 21),
(6, 22),
(7, 23),
(7, 24),
(8, 25),
(8, 27),
(8, 28),
(9, 29),
(9, 30),
(9, 31),
(10, 32),
(10, 33),
(10, 34),
(11, 35),
(11, 36),
(11, 37),
(12, 38),
(12, 39),
(12, 40),
(13, 41),
(13, 43),
(13, 44),
(14, 45),
(14, 49),
(14, 50),
(15, 51),
(15, 52),
(15, 53),
(16, 55),
(16, 57),
(16, 58),
(17, 59),
(17, 60),
(17, 61),
(18, 62),
(18, 63),
(18, 64),
(19, 12),
(19, 77),
(19, 98),
(20, 71),
(20, 72),
(20, 73),
(21, 74),
(21, 75),
(21, 76),
(22, 77),
(22, 78),
(22, 79),
(23, 80),
(23, 81),
(23, 82),
(24, 83),
(24, 84),
(24, 85),
(25, 86),
(25, 87),
(25, 88),
(26, 89),
(26, 90),
(26, 91),
(27, 9),
(27, 10),
(27, 77),
(29, 12),
(29, 92),
(29, 94),
(30, 12),
(31, 96);

-- --------------------------------------------------------

--
-- Structure de la table `visit_card_skill`
--

CREATE TABLE `visit_card_skill` (
  `visit_card_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `visit_card_skill`
--

INSERT INTO `visit_card_skill` (`visit_card_id`, `skill_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 29),
(1, 30),
(2, 4),
(2, 5),
(2, 6),
(2, 27),
(2, 28),
(3, 3),
(3, 7),
(3, 8),
(3, 25),
(3, 26),
(4, 8),
(4, 9),
(4, 10),
(4, 23),
(4, 24),
(5, 9),
(5, 10),
(5, 11),
(5, 21),
(5, 22),
(6, 5),
(6, 6),
(6, 7),
(6, 18),
(6, 20),
(7, 10),
(7, 11),
(7, 12),
(7, 17),
(7, 19),
(8, 12),
(8, 13),
(8, 14),
(8, 21),
(8, 22),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(10, 1),
(10, 4),
(10, 6),
(10, 8),
(10, 10),
(11, 4),
(11, 8),
(11, 12),
(11, 17),
(11, 29),
(12, 3),
(12, 7),
(12, 12),
(12, 15),
(12, 21),
(13, 6),
(13, 9),
(13, 13),
(13, 25),
(13, 28),
(14, 2),
(14, 8),
(14, 20),
(14, 22),
(14, 29),
(15, 6),
(15, 8),
(15, 12),
(15, 24),
(15, 30),
(16, 2),
(16, 5),
(16, 16),
(16, 17),
(16, 20),
(17, 1),
(17, 11),
(17, 14),
(17, 21),
(17, 27),
(18, 3),
(18, 7),
(18, 16),
(18, 23),
(18, 30),
(19, 2),
(19, 7),
(19, 15),
(19, 19),
(19, 24),
(20, 6),
(20, 13),
(20, 18),
(20, 23),
(20, 27),
(21, 3),
(21, 13),
(21, 17),
(21, 20),
(21, 23),
(22, 1),
(22, 4),
(22, 7),
(22, 18),
(22, 25),
(23, 2),
(23, 8),
(23, 13),
(23, 18),
(23, 25),
(24, 1),
(24, 8),
(24, 19),
(24, 25),
(24, 27),
(25, 3),
(25, 5),
(25, 8),
(25, 12),
(25, 17),
(26, 18),
(26, 21),
(26, 23),
(26, 26),
(26, 27),
(27, 1),
(27, 2),
(27, 4),
(27, 10),
(27, 19),
(29, 1),
(29, 2),
(29, 3),
(29, 19),
(31, 10),
(31, 14),
(31, 17),
(31, 22),
(31, 26);

-- --------------------------------------------------------

--
-- Structure de la table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `website`
--

INSERT INTO `website` (`id`, `name`, `link`, `visit_card_id`) VALUES
(1, 'Les vérités de Usopp', 'http://lecoinmanga-fr.over-blog.com/2017/08/les-mensonges-d-usopp.html', 1),
(2, 'Journal d\'un tanuki', 'http://fr.onepiece.wikia.com/wiki/Tony_Tony_Chopper', 2),
(3, 'Histoire de ponéglyphe', 'http://fr.onepiece.wikia.com/wiki/Nico_Robin', 3),
(4, 'Mon suuuuuper site', 'https://fr.wikipedia.org/wiki/Franky', 4),
(5, 'Le site du king', 'https://fr.wikipedia.org/wiki/Brook_(One_Piece)', 5),
(6, 'Le bras droit du seigneur des pirates', 'https://onepiece.fandom.com/fr/wiki/Silvers_Rayleigh', 7),
(7, 'Conquérant de Grand Line', 'https://onepiece.fandom.com/fr/wiki/Shanks', 8),
(8, 'Comment je suis devenu la légende de Marineford', 'https://onepiece.fandom.com/fr/wiki/Baggy', 9),
(9, 'Bretteur', 'https://onepiece.fandom.com/fr/wiki/Dracule_Mihawk', 10),
(10, 'L\'histoire d\'un pacifista', 'https://onepiece.fandom.com/fr/wiki/Bartholomew_Kuma', 11),
(11, 'Histoire de princesse', 'https://onepiece.fandom.com/fr/wiki/Boa_Hancock', 12),
(12, 'Alabasta et moi', 'https://onepiece.fandom.com/fr/wiki/Crocodile', 13),
(13, 'Mes petits monstres', 'https://onepiece.fandom.com/fr/wiki/Gecko_Moria', 14),
(14, 'Law', 'https://onepiece.fandom.com/fr/wiki/Trafalgar_D._Water_Law', 15),
(15, 'Barbe noire', 'https://onepiece.fandom.com/fr/wiki/Marshall_D._Teach', 16),
(17, 'LinkedIn', 'https://www.linkedin.com/in/cyriel-martin', 29);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `additional`
--
ALTER TABLE `additional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8BD05CE61C459EE7` (`visit_card_id`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `award_level`
--
ALTER TABLE `award_level`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_590C1031C459EE7` (`visit_card_id`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_404021BF1C459EE7` (`visit_card_id`),
  ADD KEY `IDX_404021BF5D231872` (`award_level_id`),
  ADD KEY `IDX_404021BFC32A47EE` (`school_id`);

--
-- Index pour la table `is_apprenticeship`
--
ALTER TABLE `is_apprenticeship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4FBCC8985200282E` (`formation_id`);

--
-- Index pour la table `is_candidate`
--
ALTER TABLE `is_candidate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CF4AE32BA76ED395` (`user_id`);

--
-- Index pour la table `is_candidate_is_recruiter`
--
ALTER TABLE `is_candidate_is_recruiter`
  ADD PRIMARY KEY (`is_candidate_id`,`is_recruiter_id`),
  ADD KEY `IDX_55CA0D17B103645F` (`is_candidate_id`),
  ADD KEY `IDX_55CA0D1735D5019D` (`is_recruiter_id`);

--
-- Index pour la table `is_recruiter`
--
ALTER TABLE `is_recruiter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D97E5EB7A76ED395` (`user_id`);

--
-- Index pour la table `is_story`
--
ALTER TABLE `is_story`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A7AAE7487294869C` (`article_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307F35D5019D` (`is_recruiter_id`),
  ADD KEY `IDX_B6BD307FB103645F` (`is_candidate_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `mobility`
--
ALTER TABLE `mobility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D650201CAE80F5DF` (`department_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D93D649D60322AC` (`role_id`);

--
-- Index pour la table `visit_card`
--
ALTER TABLE `visit_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C94C6511B103645F` (`is_candidate_id`);

--
-- Index pour la table `visit_card_mobility`
--
ALTER TABLE `visit_card_mobility`
  ADD PRIMARY KEY (`visit_card_id`,`mobility_id`),
  ADD KEY `IDX_6E6CCDE01C459EE7` (`visit_card_id`),
  ADD KEY `IDX_6E6CCDE08D92EAA4` (`mobility_id`);

--
-- Index pour la table `visit_card_skill`
--
ALTER TABLE `visit_card_skill`
  ADD PRIMARY KEY (`visit_card_id`,`skill_id`),
  ADD KEY `IDX_2E16BA21C459EE7` (`visit_card_id`),
  ADD KEY `IDX_2E16BA25585C142` (`skill_id`);

--
-- Index pour la table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_476F5DE71C459EE7` (`visit_card_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `additional`
--
ALTER TABLE `additional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `award_level`
--
ALTER TABLE `award_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `is_apprenticeship`
--
ALTER TABLE `is_apprenticeship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `is_candidate`
--
ALTER TABLE `is_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `is_recruiter`
--
ALTER TABLE `is_recruiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `is_story`
--
ALTER TABLE `is_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `mobility`
--
ALTER TABLE `mobility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `visit_card`
--
ALTER TABLE `visit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `additional`
--
ALTER TABLE `additional`
  ADD CONSTRAINT `FK_8BD05CE61C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`);

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `FK_590C1031C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`);

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `FK_404021BF1C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`),
  ADD CONSTRAINT `FK_404021BF5D231872` FOREIGN KEY (`award_level_id`) REFERENCES `award_level` (`id`),
  ADD CONSTRAINT `FK_404021BFC32A47EE` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`);

--
-- Contraintes pour la table `is_apprenticeship`
--
ALTER TABLE `is_apprenticeship`
  ADD CONSTRAINT `FK_4FBCC8985200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`);

--
-- Contraintes pour la table `is_candidate`
--
ALTER TABLE `is_candidate`
  ADD CONSTRAINT `FK_CF4AE32BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `is_candidate_is_recruiter`
--
ALTER TABLE `is_candidate_is_recruiter`
  ADD CONSTRAINT `FK_55CA0D1735D5019D` FOREIGN KEY (`is_recruiter_id`) REFERENCES `is_recruiter` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_55CA0D17B103645F` FOREIGN KEY (`is_candidate_id`) REFERENCES `is_candidate` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `is_recruiter`
--
ALTER TABLE `is_recruiter`
  ADD CONSTRAINT `FK_D97E5EB7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `is_story`
--
ALTER TABLE `is_story`
  ADD CONSTRAINT `FK_A7AAE7487294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307F35D5019D` FOREIGN KEY (`is_recruiter_id`) REFERENCES `is_recruiter` (`id`),
  ADD CONSTRAINT `FK_B6BD307FB103645F` FOREIGN KEY (`is_candidate_id`) REFERENCES `is_candidate` (`id`);

--
-- Contraintes pour la table `mobility`
--
ALTER TABLE `mobility`
  ADD CONSTRAINT `FK_D650201CAE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `visit_card`
--
ALTER TABLE `visit_card`
  ADD CONSTRAINT `FK_C94C6511B103645F` FOREIGN KEY (`is_candidate_id`) REFERENCES `is_candidate` (`id`);

--
-- Contraintes pour la table `visit_card_mobility`
--
ALTER TABLE `visit_card_mobility`
  ADD CONSTRAINT `FK_6E6CCDE01C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6E6CCDE08D92EAA4` FOREIGN KEY (`mobility_id`) REFERENCES `mobility` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `visit_card_skill`
--
ALTER TABLE `visit_card_skill`
  ADD CONSTRAINT `FK_2E16BA21C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2E16BA25585C142` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `FK_476F5DE71C459EE7` FOREIGN KEY (`visit_card_id`) REFERENCES `visit_card` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
