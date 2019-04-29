-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2019 a las 00:09:13
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aux_perfiles_menus`
--

CREATE TABLE `aux_perfiles_menus` (
  `id_aux` int(2) NOT NULL,
  `perfil_id` int(1) NOT NULL,
  `menu_id` int(1) NOT NULL,
  `p_crear` tinyint(1) NOT NULL DEFAULT '0',
  `p_leer` tinyint(1) NOT NULL DEFAULT '0',
  `p_editar` tinyint(1) NOT NULL DEFAULT '0',
  `p_eliminar` tinyint(1) NOT NULL DEFAULT '0',
  `p_imprimir` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `aux_perfiles_menus`
--

INSERT INTO `aux_perfiles_menus` (`id_aux`, `perfil_id`, `menu_id`, `p_crear`, `p_leer`, `p_editar`, `p_eliminar`, `p_imprimir`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(18, 1, 3, 1, 1, 1, 1, 1),
(20, 1, 9, 0, 0, 0, 0, 0),
(21, 2, 9, 0, 0, 0, 0, 0),
(22, 3, 9, 0, 0, 0, 0, 0),
(23, 4, 9, 0, 0, 0, 0, 0),
(25, 1, 10, 0, 0, 0, 0, 0),
(26, 1, 8, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goods`
--

CREATE TABLE `goods` (
  `id` int(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `value`) VALUES
(1, 'Prueba1', 'Este es un texto de Prueba', 1),
(4, 'nuevo', 'hola amigos estos es enviados desde PHP a MySql', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iconos`
--

CREATE TABLE `iconos` (
  `id` int(11) NOT NULL,
  `icono` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `iconos`
--

INSERT INTO `iconos` (`id`, `icono`) VALUES
(1, '<i class=\"fa fa-500px\"></i>'),
(2, '<i class=\"fa fa-address-book\"></i>'),
(3, '<i class=\"fa fa-address-book-o\"></i>'),
(4, '<i class=\"fa fa-address-card\"></i>'),
(5, '<i class=\"fa fa-address-card-o\"></i>'),
(6, '<i class=\"fa fa-adjust\"></i>'),
(7, '<i class=\"fa fa-adn\"></i>'),
(8, '<i class=\"fa fa-align-center\"></i>'),
(9, '<i class=\"fa fa-align-justify\"></i>'),
(10, '<i class=\"fa fa-align-left\"></i>'),
(11, '<i class=\"fa fa-align-right\"></i>'),
(12, '<i class=\"fa fa-amazon\"></i>'),
(13, '<i class=\"fa fa-ambulance\"></i>'),
(14, '<i class=\"fa fa-american-sign-language-interpreting\"></i>'),
(15, '<i class=\"fa fa-anchor\"></i>'),
(16, '<i class=\"fa fa-android\"></i>'),
(17, '<i class=\"fa fa-angellist\"></i>'),
(18, '<i class=\"fa fa-angle-double-down\"></i>'),
(19, '<i class=\"fa fa-angle-double-left\"></i>'),
(20, '<i class=\"fa fa-angle-double-right\"></i>'),
(21, '<i class=\"fa fa-angle-double-up\"></i>'),
(22, '<i class=\"fa fa-angle-down\"></i>'),
(23, '<i class=\"fa fa-angle-left\"></i>'),
(24, '<i class=\"fa fa-angle-right\"></i>'),
(25, '<i class=\"fa fa-angle-up\"></i>'),
(26, '<i class=\"fa fa-apple\"></i>'),
(27, '<i class=\"fa fa-archive\"></i>'),
(28, '<i class=\"fa fa-area-chart\"></i>'),
(29, '<i class=\"fa fa-arrow-circle-down\"></i>'),
(30, '<i class=\"fa fa-arrow-circle-left\"></i>'),
(31, '<i class=\"fa fa-arrow-circle-o-down\"></i>'),
(32, '<i class=\"fa fa-arrow-circle-o-left\"></i>'),
(33, '<i class=\"fa fa-arrow-circle-o-right\"></i>'),
(34, '<i class=\"fa fa-arrow-circle-o-up\"></i>'),
(35, '<i class=\"fa fa-arrow-circle-right\"></i>'),
(36, '<i class=\"fa fa-arrow-circle-up\"></i>'),
(37, '<i class=\"fa fa-arrow-down\"></i>'),
(38, '<i class=\"fa fa-arrow-left\"></i>'),
(39, '<i class=\"fa fa-arrow-right\"></i>'),
(40, '<i class=\"fa fa-arrow-up\"></i>'),
(41, '<i class=\"fa fa-arrows\"></i>'),
(42, '<i class=\"fa fa-arrows-alt\"></i>'),
(43, '<i class=\"fa fa-arrows-h\"></i>'),
(44, '<i class=\"fa fa-arrows-v\"></i>'),
(45, '<i class=\"fa fa-asl-interpreting\"></i>'),
(46, '<i class=\"fa fa-assistive-listening-systems\"></i>'),
(47, '<i class=\"fa fa-asterisk\"></i>'),
(48, '<i class=\"fa fa-at\"></i>'),
(49, '<i class=\"fa fa-audio-description\"></i>'),
(50, '<i class=\"fa fa-automobile\"></i>'),
(51, '<i class=\"fa fa-backward\"></i>'),
(52, '<i class=\"fa fa-balance-scale\"></i>'),
(53, '<i class=\"fa fa-ban\"></i>'),
(54, '<i class=\"fa fa-bandcamp\"></i>'),
(55, '<i class=\"fa fa-bank\"></i>'),
(56, '<i class=\"fa fa-bar-chart\"></i>'),
(57, '<i class=\"fa fa-bar-chart-o\"></i>'),
(58, '<i class=\"fa fa-barcode\"></i>'),
(59, '<i class=\"fa fa-bars\"></i>'),
(60, '<i class=\"fa fa-bath\"></i>'),
(61, '<i class=\"fa fa-bathtub\"></i>'),
(62, '<i class=\"fa fa-battery-0\"></i>'),
(63, '<i class=\"fa fa-battery-1\"></i>'),
(64, '<i class=\"fa fa-battery-2\"></i>'),
(65, '<i class=\"fa fa-battery-3\"></i>'),
(66, '<i class=\"fa fa-battery-4\"></i>'),
(67, '<i class=\"fa fa-battery-empty\"></i>'),
(68, '<i class=\"fa fa-battery-full\"></i>'),
(69, '<i class=\"fa fa-battery-half\"></i>'),
(70, '<i class=\"fa fa-battery-quarter\"></i>'),
(71, '<i class=\"fa fa-battery-three-quarters\"></i>'),
(72, '<i class=\"fa fa-bed\"></i>'),
(73, '<i class=\"fa fa-beer\"></i>'),
(74, '<i class=\"fa fa-behance\"></i>'),
(75, '<i class=\"fa fa-behance-square\"></i>'),
(76, '<i class=\"fa fa-bell\"></i>'),
(77, '<i class=\"fa fa-bell-o\"></i>'),
(78, '<i class=\"fa fa-bell-slash\"></i>'),
(79, '<i class=\"fa fa-bell-slash-o\"></i>'),
(80, '<i class=\"fa fa-bicycle\"></i>'),
(81, '<i class=\"fa fa-binoculars\"></i>'),
(82, '<i class=\"fa fa-birthday-cake\"></i>'),
(83, '<i class=\"fa fa-bitbucket\"></i>'),
(84, '<i class=\"fa fa-bitbucket-square\"></i>'),
(85, '<i class=\"fa fa-bitcoin\"></i>'),
(86, '<i class=\"fa fa-black-tie\"></i>'),
(87, '<i class=\"fa fa-blind\"></i>'),
(88, '<i class=\"fa fa-bluetooth\"></i>'),
(89, '<i class=\"fa fa-bluetooth-b\"></i>'),
(90, '<i class=\"fa fa-bold\"></i>'),
(91, '<i class=\"fa fa-bolt\"></i>'),
(92, '<i class=\"fa fa-bomb\"></i>'),
(93, '<i class=\"fa fa-book\"></i>'),
(94, '<i class=\"fa fa-bookmark\"></i>'),
(95, '<i class=\"fa fa-bookmark-o\"></i>'),
(96, '<i class=\"fa fa-braille\"></i>'),
(97, '<i class=\"fa fa-briefcase\"></i>'),
(98, '<i class=\"fa fa-btc\"></i>'),
(99, '<i class=\"fa fa-bug\"></i>'),
(100, '<i class=\"fa fa-building\"></i>'),
(101, '<i class=\"fa fa-building-o\"></i>'),
(102, '<i class=\"fa fa-bullhorn\"></i>'),
(103, '<i class=\"fa fa-bullseye\"></i>'),
(104, '<i class=\"fa fa-bus\"></i>'),
(105, '<i class=\"fa fa-buysellads\"></i>'),
(106, '<i class=\"fa fa-cab\"></i>'),
(107, '<i class=\"fa fa-calculator\"></i>'),
(108, '<i class=\"fa fa-calendar\"></i>'),
(109, '<i class=\"fa fa-calendar-check-o\"></i>'),
(110, '<i class=\"fa fa-calendar-minus-o\"></i>'),
(111, '<i class=\"fa fa-calendar-o\"></i>'),
(112, '<i class=\"fa fa-calendar-plus-o\"></i>'),
(113, '<i class=\"fa fa-calendar-times-o\"></i>'),
(114, '<i class=\"fa fa-camera\"></i>'),
(115, '<i class=\"fa fa-camera-retro\"></i>'),
(116, '<i class=\"fa fa-car\"></i>'),
(117, '<i class=\"fa fa-caret-down\"></i>'),
(118, '<i class=\"fa fa-caret-left\"></i>'),
(119, '<i class=\"fa fa-caret-right\"></i>'),
(120, '<i class=\"fa fa-caret-square-o-down\"></i>'),
(121, '<i class=\"fa fa-caret-square-o-left\"></i>'),
(122, '<i class=\"fa fa-caret-square-o-right\"></i>'),
(123, '<i class=\"fa fa-caret-square-o-up\"></i>'),
(124, '<i class=\"fa fa-caret-up\"></i>'),
(125, '<i class=\"fa fa-cart-arrow-down\"></i>'),
(126, '<i class=\"fa fa-cart-plus\"></i>'),
(127, '<i class=\"fa fa-cc\"></i>'),
(128, '<i class=\"fa fa-cc-amex\"></i>'),
(129, '<i class=\"fa fa-cc-diners-club\"></i>'),
(130, '<i class=\"fa fa-cc-discover\"></i>'),
(131, '<i class=\"fa fa-cc-jcb\"></i>'),
(132, '<i class=\"fa fa-cc-mastercard\"></i>'),
(133, '<i class=\"fa fa-cc-paypal\"></i>'),
(134, '<i class=\"fa fa-cc-stripe\"></i>'),
(135, '<i class=\"fa fa-cc-visa\"></i>'),
(136, '<i class=\"fa fa-certificate\"></i>'),
(137, '<i class=\"fa fa-chain\"></i>'),
(138, '<i class=\"fa fa-chain-broken\"></i>'),
(139, '<i class=\"fa fa-check\"></i>'),
(140, '<i class=\"fa fa-check-circle\"></i>'),
(141, '<i class=\"fa fa-check-circle-o\"></i>'),
(142, '<i class=\"fa fa-check-square\"></i>'),
(143, '<i class=\"fa fa-check-square-o\"></i>'),
(144, '<i class=\"fa fa-chevron-circle-down\"></i>'),
(145, '<i class=\"fa fa-chevron-circle-left\"></i>'),
(146, '<i class=\"fa fa-chevron-circle-right\"></i>'),
(147, '<i class=\"fa fa-chevron-circle-up\"></i>'),
(148, '<i class=\"fa fa-chevron-down\"></i>'),
(149, '<i class=\"fa fa-chevron-left\"></i>'),
(150, '<i class=\"fa fa-chevron-right\"></i>'),
(151, '<i class=\"fa fa-chevron-up\"></i>'),
(152, '<i class=\"fa fa-child\"></i>'),
(153, '<i class=\"fa fa-chrome\"></i>'),
(154, '<i class=\"fa fa-circle\"></i>'),
(155, '<i class=\"fa fa-circle-o\"></i>'),
(156, '<i class=\"fa fa-circle-o-notch\"></i>'),
(157, '<i class=\"fa fa-circle-thin\"></i>'),
(158, '<i class=\"fa fa-clipboard\"></i>'),
(159, '<i class=\"fa fa-clock-o\"></i>'),
(160, '<i class=\"fa fa-clone\"></i>'),
(161, '<i class=\"fa fa-close\"></i>'),
(162, '<i class=\"fa fa-cloud\"></i>'),
(163, '<i class=\"fa fa-cloud-download\"></i>'),
(164, '<i class=\"fa fa-cloud-upload\"></i>'),
(165, '<i class=\"fa fa-cny\"></i>'),
(166, '<i class=\"fa fa-code\"></i>'),
(167, '<i class=\"fa fa-code-fork\"></i>'),
(168, '<i class=\"fa fa-codepen\"></i>'),
(169, '<i class=\"fa fa-codiepie\"></i>'),
(170, '<i class=\"fa fa-coffee\"></i>'),
(171, '<i class=\"fa fa-cog\"></i>'),
(172, '<i class=\"fa fa-cogs\"></i>'),
(173, '<i class=\"fa fa-columns\"></i>'),
(174, '<i class=\"fa fa-comment\"></i>'),
(175, '<i class=\"fa fa-comment-o\"></i>'),
(176, '<i class=\"fa fa-comments\"></i>'),
(177, '<i class=\"fa fa-comments-o\"></i>'),
(178, '<i class=\"fa fa-commenting\"></i>'),
(179, '<i class=\"fa fa-commenting-o\"></i>'),
(180, '<i class=\"fa fa-compass\"></i>'),
(181, '<i class=\"fa fa-compress\"></i>'),
(182, '<i class=\"fa fa-connectdevelop\"></i>'),
(183, '<i class=\"fa fa-contao\"></i>'),
(184, '<i class=\"fa fa-copy\"></i>'),
(185, '<i class=\"fa fa-copyright\"></i>'),
(186, '<i class=\"fa fa-creative-commons\"></i>'),
(187, '<i class=\"fa fa-credit-card\"></i>'),
(188, '<i class=\"fa fa-credit-card-alt\"></i>'),
(189, '<i class=\"fa fa-crop\"></i>'),
(190, '<i class=\"fa fa-crosshairs\"></i>'),
(191, '<i class=\"fa fa-css3\"></i>'),
(192, '<i class=\"fa fa-cube\"></i>'),
(193, '<i class=\"fa fa-cubes\"></i>'),
(194, '<i class=\"fa fa-cut\"></i>'),
(195, '<i class=\"fa fa-cutlery\"></i>'),
(196, '<i class=\"fa fa-dashboard\"></i>'),
(197, '<i class=\"fa fa-dashcube\"></i>'),
(198, '<i class=\"fa fa-database\"></i>'),
(199, '<i class=\"fa fa-deaf\"></i>'),
(200, '<i class=\"fa fa-deafness\"></i>'),
(201, '<i class=\"fa fa-dedent\"></i>'),
(202, '<i class=\"fa fa-delicious\"></i>'),
(203, '<i class=\"fa fa-desktop\"></i>'),
(204, '<i class=\"fa fa-deviantart\"></i>'),
(205, '<i class=\"fa fa-diamond\"></i>'),
(206, '<i class=\"fa fa-digg\"></i>'),
(207, '<i class=\"fa fa-dollar\"></i>'),
(208, '<i class=\"fa fa-dot-circle-o\"></i>'),
(209, '<i class=\"fa fa-download\"></i>'),
(210, '<i class=\"fa fa-dribbble\"></i>'),
(211, '<i class=\"fa fa-drivers-license\"></i>'),
(212, '<i class=\"fa fa-drivers-license-o\"></i>'),
(213, '<i class=\"fa fa-dropbox\"></i>'),
(214, '<i class=\"fa fa-drupal\"></i>'),
(215, '<i class=\"fa fa-edge\"></i>'),
(216, '<i class=\"fa fa-edit\"></i>'),
(217, '<i class=\"fa fa-eercast\"></i>'),
(218, '<i class=\"fa fa-eject\"></i>'),
(219, '<i class=\"fa fa-ellipsis-h\"></i>'),
(220, '<i class=\"fa fa-ellipsis-v\"></i>'),
(221, '<i class=\"fa fa-empire\"></i>'),
(222, '<i class=\"fa fa-envelope\"></i>'),
(223, '<i class=\"fa fa-envelope-o\"></i>'),
(224, '<i class=\"fa fa-envelope-open\"></i>'),
(225, '<i class=\"fa fa-envelope-open-o\"></i>'),
(226, '<i class=\"fa fa-envelope-square\"></i>'),
(227, '<i class=\"fa fa-envira\"></i>'),
(228, '<i class=\"fa fa-eraser\"></i>'),
(229, '<i class=\"fa fa-etsy\"></i>'),
(230, '<i class=\"fa fa-eur\"></i>'),
(231, '<i class=\"fa fa-euro\"></i>'),
(232, '<i class=\"fa fa-exchange\"></i>'),
(233, '<i class=\"fa fa-exclamation\"></i>'),
(234, '<i class=\"fa fa-exclamation-circle\"></i>'),
(235, '<i class=\"fa fa-exclamation-triangle\"></i>'),
(236, '<i class=\"fa fa-expand\"></i>'),
(237, '<i class=\"fa fa-expeditedssl\"></i>'),
(238, '<i class=\"fa fa-external-link\"></i>'),
(239, '<i class=\"fa fa-external-link-square\"></i>'),
(240, '<i class=\"fa fa-eye\"></i>'),
(241, '<i class=\"fa fa-eye-slash\"></i>'),
(242, '<i class=\"fa fa-eyedropper\"></i>'),
(243, '<i class=\"fa fa-font-awesome\"></i>'),
(244, '<i class=\"fa fa-facebook\"></i>'),
(245, '<i class=\"fa fa-facebook-f\"></i>'),
(246, '<i class=\"fa fa-facebook-official\"></i>'),
(247, '<i class=\"fa fa-facebook-square\"></i>'),
(248, '<i class=\"fa fa-fast-backward\"></i>'),
(249, '<i class=\"fa fa-fast-forward\"></i>'),
(250, '<i class=\"fa fa-fax\"></i>'),
(251, '<i class=\"fa fa-feed\"></i>'),
(252, '<i class=\"fa fa-female\"></i>'),
(253, '<i class=\"fa fa-fighter-jet\"></i>'),
(254, '<i class=\"fa fa-file\"></i>'),
(255, '<i class=\"fa fa-file-archive-o\"></i>'),
(256, '<i class=\"fa fa-file-audio-o\"></i>'),
(257, '<i class=\"fa fa-file-code-o\"></i>'),
(258, '<i class=\"fa fa-file-excel-o\"></i>'),
(259, '<i class=\"fa fa-file-image-o\"></i>'),
(260, '<i class=\"fa fa-file-movie-o\"></i>'),
(261, '<i class=\"fa fa-file-o\"></i>'),
(262, '<i class=\"fa fa-file-pdf-o\"></i>'),
(263, '<i class=\"fa fa-file-photo-o\"></i>'),
(264, '<i class=\"fa fa-file-picture-o\"></i>'),
(265, '<i class=\"fa fa-file-powerpoint-o\"></i>'),
(266, '<i class=\"fa fa-file-sound-o\"></i>'),
(267, '<i class=\"fa fa-file-text\"></i>'),
(268, '<i class=\"fa fa-file-text-o\"></i>'),
(269, '<i class=\"fa fa-file-video-o\"></i>'),
(270, '<i class=\"fa fa-file-word-o\"></i>'),
(271, '<i class=\"fa fa-file-zip-o\"></i>'),
(272, '<i class=\"fa fa-files-o\"></i>'),
(273, '<i class=\"fa fa-film\"></i>'),
(274, '<i class=\"fa fa-filter\"></i>'),
(275, '<i class=\"fa fa-fire\"></i>'),
(276, '<i class=\"fa fa-fire-extinguisher\"></i>'),
(277, '<i class=\"fa fa-firefox\"></i>'),
(278, '<i class=\"fa fa-first-order\"></i>'),
(279, '<i class=\"fa fa-flag\"></i>'),
(280, '<i class=\"fa fa-flag-checkered\"></i>'),
(281, '<i class=\"fa fa-flag-o\"></i>'),
(282, '<i class=\"fa fa-flash\"></i>'),
(283, '<i class=\"fa fa-flask\"></i>'),
(284, '<i class=\"fa fa-flickr\"></i>'),
(285, '<i class=\"fa fa-floppy-o\"></i>'),
(286, '<i class=\"fa fa-folder\"></i>'),
(287, '<i class=\"fa fa-folder-o\"></i>'),
(288, '<i class=\"fa fa-folder-open\"></i>'),
(289, '<i class=\"fa fa-folder-open-o\"></i>'),
(290, '<i class=\"fa fa-font\"></i>'),
(291, '<i class=\"fa fa-font-awesome\"></i>'),
(292, '<i class=\"fa fa-fonticons\"></i>'),
(293, '<i class=\"fa fa-fort-awesome\"></i>'),
(294, '<i class=\"fa fa-forumbee\"></i>'),
(295, '<i class=\"fa fa-forward\"></i>'),
(296, '<i class=\"fa fa-foursquare\"></i>'),
(297, '<i class=\"fa fa-free-code-camp\"></i>'),
(298, '<i class=\"fa fa-frown-o\"></i>'),
(299, '<i class=\"fa fa-futbol-o\"></i>'),
(300, '<i class=\"fa fa-gamepad\"></i>'),
(301, '<i class=\"fa fa-gavel\"></i>'),
(302, '<i class=\"fa fa-gbp\"></i>'),
(303, '<i class=\"fa fa-ge\"></i>'),
(304, '<i class=\"fa fa-gear\"></i>'),
(305, '<i class=\"fa fa-gears\"></i>'),
(306, '<i class=\"fa fa-genderless\"></i>'),
(307, '<i class=\"fa fa-get-pocket\"></i>'),
(308, '<i class=\"fa fa-gg\"></i>'),
(309, '<i class=\"fa fa-gg-circle\"></i>'),
(310, '<i class=\"fa fa-gift\"></i>'),
(311, '<i class=\"fa fa-git\"></i>'),
(312, '<i class=\"fa fa-git-square\"></i>'),
(313, '<i class=\"fa fa-github\"></i>'),
(314, '<i class=\"fa fa-github-alt\"></i>'),
(315, '<i class=\"fa fa-github-square\"></i>'),
(316, '<i class=\"fa fa-gitlab\"></i>'),
(317, '<i class=\"fa fa-gittip\"></i>'),
(318, '<i class=\"fa fa-glass\"></i>'),
(319, '<i class=\"fa fa-glide\"></i>'),
(320, '<i class=\"fa fa-glide-g\"></i>'),
(321, '<i class=\"fa fa-globe\"></i>'),
(322, '<i class=\"fa fa-google\"></i>'),
(323, '<i class=\"fa fa-google-plus\"></i>'),
(324, '<i class=\"fa fa-google-plus-circle\"></i>'),
(325, '<i class=\"fa fa-google-plus-official\"></i>'),
(326, '<i class=\"fa fa-google-plus-square\"></i>'),
(327, '<i class=\"fa fa-google-wallet\"></i>'),
(328, '<i class=\"fa fa-graduation-cap\"></i>'),
(329, '<i class=\"fa fa-gratipay\"></i>'),
(330, '<i class=\"fa fa-grav\"></i>'),
(331, '<i class=\"fa fa-group\"></i>'),
(332, '<i class=\"fa fa-h-square\"></i>'),
(333, '<i class=\"fa fa-hacker-news\"></i>'),
(334, '<i class=\"fa fa-hand-grab-o\"></i>'),
(335, '<i class=\"fa fa-hand-lizard-o\"></i>'),
(336, '<i class=\"fa fa-hand-o-down\"></i>'),
(337, '<i class=\"fa fa-hand-o-left\"></i>'),
(338, '<i class=\"fa fa-hand-o-right\"></i>'),
(339, '<i class=\"fa fa-hand-o-up\"></i>'),
(340, '<i class=\"fa fa-hand-paper-o\"></i>'),
(341, '<i class=\"fa fa-hand-peace-o\"></i>'),
(342, '<i class=\"fa fa-hand-pointer-o\"></i>'),
(343, '<i class=\"fa fa-hand-rock-o\"></i>'),
(344, '<i class=\"fa fa-hand-scissors-o\"></i>'),
(345, '<i class=\"fa fa-hand-spock-o\"></i>'),
(346, '<i class=\"fa fa-hand-stop-o\"></i>'),
(347, '<i class=\"fa fa-handshake-o\"></i>'),
(348, '<i class=\"fa fa-hard-of-hearing\"></i>'),
(349, '<i class=\"fa fa-hashtag\"></i>'),
(350, '<i class=\"fa fa-hdd-o\"></i>'),
(351, '<i class=\"fa fa-header\"></i>'),
(352, '<i class=\"fa fa-headphones\"></i>'),
(353, '<i class=\"fa fa-heart\"></i>'),
(354, '<i class=\"fa fa-heart-o\"></i>'),
(355, '<i class=\"fa fa-heartbeat\"></i>'),
(356, '<i class=\"fa fa-history\"></i>'),
(357, '<i class=\"fa fa-home\"></i>'),
(358, '<i class=\"fa fa-hospital-o\"></i>'),
(359, '<i class=\"fa fa-hotel\"></i>'),
(360, '<i class=\"fa fa-hourglass\"></i>'),
(361, '<i class=\"fa fa-hourglass-1\"></i>'),
(362, '<i class=\"fa fa-hourglass-2\"></i>'),
(363, '<i class=\"fa fa-hourglass-3\"></i>'),
(364, '<i class=\"fa fa-hourglass-end\"></i>'),
(365, '<i class=\"fa fa-hourglass-half\"></i>'),
(366, '<i class=\"fa fa-hourglass-o\"></i>'),
(367, '<i class=\"fa fa-hourglass-start\"></i>'),
(368, '<i class=\"fa fa-houzz\"></i>'),
(369, '<i class=\"fa fa-html5\"></i>'),
(370, '<i class=\"fa fa-i-cursor\"></i>'),
(371, '<i class=\"fa fa-id-badge\"></i>'),
(372, '<i class=\"fa fa-id-card\"></i>'),
(373, '<i class=\"fa fa-id-card-o\"></i>'),
(374, '<i class=\"fa fa-ils\"></i>'),
(375, '<i class=\"fa fa-image\"></i>'),
(376, '<i class=\"fa fa-imdb\"></i>'),
(377, '<i class=\"fa fa-inbox\"></i>'),
(378, '<i class=\"fa fa-indent\"></i>'),
(379, '<i class=\"fa fa-industry\"></i>'),
(380, '<i class=\"fa fa-info\"></i>'),
(381, '<i class=\"fa fa-info-circle\"></i>'),
(382, '<i class=\"fa fa-inr\"></i>'),
(383, '<i class=\"fa fa-instagram\"></i>'),
(384, '<i class=\"fa fa-institution\"></i>'),
(385, '<i class=\"fa fa-internet-explorer\"></i>'),
(386, '<i class=\"fa fa-intersex\"></i>'),
(387, '<i class=\"fa fa-ioxhost\"></i>'),
(388, '<i class=\"fa fa-italic\"></i>'),
(389, '<i class=\"fa fa-joomla\"></i>'),
(390, '<i class=\"fa fa-jpy\"></i>'),
(391, '<i class=\"fa fa-jsfiddle\"></i>'),
(392, '<i class=\"fa fa-key\"></i>'),
(393, '<i class=\"fa fa-keyboard-o\"></i>'),
(394, '<i class=\"fa fa-krw\"></i>'),
(395, '<i class=\"fa fa-language\"></i>'),
(396, '<i class=\"fa fa-laptop\"></i>'),
(397, '<i class=\"fa fa-lastfm\"></i>'),
(398, '<i class=\"fa fa-lastfm-square\"></i>'),
(399, '<i class=\"fa fa-leaf\"></i>'),
(400, '<i class=\"fa fa-leanpub\"></i>'),
(401, '<i class=\"fa fa-legal\"></i>'),
(402, '<i class=\"fa fa-lemon-o\"></i>'),
(403, '<i class=\"fa fa-level-down\"></i>'),
(404, '<i class=\"fa fa-level-up\"></i>'),
(405, '<i class=\"fa fa-life-bouy\"></i>'),
(406, '<i class=\"fa fa-life-buoy\"></i>'),
(407, '<i class=\"fa fa-life-ring\"></i>'),
(408, '<i class=\"fa fa-life-saver\"></i>'),
(409, '<i class=\"fa fa-lightbulb-o\"></i>'),
(410, '<i class=\"fa fa-line-chart\"></i>'),
(411, '<i class=\"fa fa-link\"></i>'),
(412, '<i class=\"fa fa-linkedin\"></i>'),
(413, '<i class=\"fa fa-linkedin-square\"></i>'),
(414, '<i class=\"fa fa-linode\"></i>'),
(415, '<i class=\"fa fa-linux\"></i>'),
(416, '<i class=\"fa fa-list\"></i>'),
(417, '<i class=\"fa fa-list-alt\"></i>'),
(418, '<i class=\"fa fa-list-ol\"></i>'),
(419, '<i class=\"fa fa-list-ul\"></i>'),
(420, '<i class=\"fa fa-location-arrow\"></i>'),
(421, '<i class=\"fa fa-lock\"></i>'),
(422, '<i class=\"fa fa-long-arrow-down\"></i>'),
(423, '<i class=\"fa fa-long-arrow-left\"></i>'),
(424, '<i class=\"fa fa-long-arrow-right\"></i>'),
(425, '<i class=\"fa fa-long-arrow-up\"></i>'),
(426, '<i class=\"fa fa-low-vision\"></i>'),
(427, '<i class=\"fa fa-magic\"></i>'),
(428, '<i class=\"fa fa-magnet\"></i>'),
(429, '<i class=\"fa fa-mail-forward\"></i>'),
(430, '<i class=\"fa fa-mail-reply\"></i>'),
(431, '<i class=\"fa fa-mail-reply-all\"></i>'),
(432, '<i class=\"fa fa-male\"></i>'),
(433, '<i class=\"fa fa-map\"></i>'),
(434, '<i class=\"fa fa-map-marker\"></i>'),
(435, '<i class=\"fa fa-map-o\"></i>'),
(436, '<i class=\"fa fa-map-pin\"></i>'),
(437, '<i class=\"fa fa-map-signs\"></i>'),
(438, '<i class=\"fa fa-mars\"></i>'),
(439, '<i class=\"fa fa-mars-double\"></i>'),
(440, '<i class=\"fa fa-mars-stroke\"></i>'),
(441, '<i class=\"fa fa-mars-stroke-h\"></i>'),
(442, '<i class=\"fa fa-mars-stroke-v\"></i>'),
(443, '<i class=\"fa fa-maxcdn\"></i>'),
(444, '<i class=\"fa fa-meanpath\"></i>'),
(445, '<i class=\"fa fa-medium\"></i>'),
(446, '<i class=\"fa fa-medkit\"></i>'),
(447, '<i class=\"fa fa-meetup\"></i>'),
(448, '<i class=\"fa fa-meh-o\"></i>'),
(449, '<i class=\"fa fa-mercury\"></i>'),
(450, '<i class=\"fa fa-microchip\"></i>'),
(451, '<i class=\"fa fa-microphone\"></i>'),
(452, '<i class=\"fa fa-microphone-slash\"></i>'),
(453, '<i class=\"fa fa-minus\"></i>'),
(454, '<i class=\"fa fa-minus-circle\"></i>'),
(455, '<i class=\"fa fa-minus-square\"></i>'),
(456, '<i class=\"fa fa-minus-square-o\"></i>'),
(457, '<i class=\"fa fa-mixcloud\"></i>'),
(458, '<i class=\"fa fa-mobile\"></i>'),
(459, '<i class=\"fa fa-mobile-phone\"></i>'),
(460, '<i class=\"fa fa-modx\"></i>'),
(461, '<i class=\"fa fa-money\"></i>'),
(462, '<i class=\"fa fa-moon-o\"></i>'),
(463, '<i class=\"fa fa-mortar-board\"></i>'),
(464, '<i class=\"fa fa-motorcycle\"></i>'),
(465, '<i class=\"fa fa-mouse-pointer\"></i>'),
(466, '<i class=\"fa fa-music\"></i>'),
(467, '<i class=\"fa fa-navicon\"></i>'),
(468, '<i class=\"fa fa-neuter\"></i>'),
(469, '<i class=\"fa fa-newspaper-o\"></i>'),
(470, '<i class=\"fa fa-object-group\"></i>'),
(471, '<i class=\"fa fa-object-ungroup\"></i>'),
(472, '<i class=\"fa fa-odnoklassniki\"></i>'),
(473, '<i class=\"fa fa-odnoklassniki-square\"></i>'),
(474, '<i class=\"fa fa-opencart\"></i>'),
(475, '<i class=\"fa fa-openid\"></i>'),
(476, '<i class=\"fa fa-opera\"></i>'),
(477, '<i class=\"fa fa-optin-monster\"></i>'),
(478, '<i class=\"fa fa-outdent\"></i>'),
(479, '<i class=\"fa fa-paint-brush\"></i>'),
(480, '<i class=\"fa fa-pagelines\"></i>'),
(481, '<i class=\"fa fa-paper-plane\"></i>'),
(482, '<i class=\"fa fa-paper-plane-o\"></i>'),
(483, '<i class=\"fa fa-paperclip\"></i>'),
(484, '<i class=\"fa fa-paragraph\"></i>'),
(485, '<i class=\"fa fa-paste\"></i>'),
(486, '<i class=\"fa fa-pause\"></i>'),
(487, '<i class=\"fa fa-pause-circle\"></i>'),
(488, '<i class=\"fa fa-pause-circle-o\"></i>'),
(489, '<i class=\"fa fa-paw\"></i>'),
(490, '<i class=\"fa fa-paypal\"></i>'),
(491, '<i class=\"fa fa-pencil\"></i>'),
(492, '<i class=\"fa fa-pencil-square\"></i>'),
(493, '<i class=\"fa fa-pencil-square-o\"></i>'),
(494, '<i class=\"fa fa-percent\"></i>'),
(495, '<i class=\"fa fa-phone\"></i>'),
(496, '<i class=\"fa fa-phone-square\"></i>'),
(497, '<i class=\"fa fa-photo\"></i>'),
(498, '<i class=\"fa fa-picture-o\"></i>'),
(499, '<i class=\"fa fa-pie-chart\"></i>'),
(500, '<i class=\"fa fa-pied-piper\"></i>'),
(501, '<i class=\"fa fa-pied-piper-alt\"></i>'),
(502, '<i class=\"fa fa-pied-piper-pp\"></i>'),
(503, '<i class=\"fa fa-pinterest\"></i>'),
(504, '<i class=\"fa fa-pinterest-p\"></i>'),
(505, '<i class=\"fa fa-pinterest-square\"></i>'),
(506, '<i class=\"fa fa-plane\"></i>'),
(507, '<i class=\"fa fa-play\"></i>'),
(508, '<i class=\"fa fa-play-circle\"></i>'),
(509, '<i class=\"fa fa-play-circle-o\"></i>'),
(510, '<i class=\"fa fa-plug\"></i>'),
(511, '<i class=\"fa fa-plus\"></i>'),
(512, '<i class=\"fa fa-plus-circle\"></i>'),
(513, '<i class=\"fa fa-plus-square\"></i>'),
(514, '<i class=\"fa fa-plus-square-o\"></i>'),
(515, '<i class=\"fa fa-podcast\"></i>'),
(516, '<i class=\"fa fa-power-off\"></i>'),
(517, '<i class=\"fa fa-print\"></i>'),
(518, '<i class=\"fa fa-product-hunt\"></i>'),
(519, '<i class=\"fa fa-puzzle-piece\"></i>'),
(520, '<i class=\"fa fa-qq\"></i>'),
(521, '<i class=\"fa fa-qrcode\"></i>'),
(522, '<i class=\"fa fa-question\"></i>'),
(523, '<i class=\"fa fa-question-circle\"></i>'),
(524, '<i class=\"fa fa-question-circle-o\"></i>'),
(525, '<i class=\"fa fa-quora\"></i>'),
(526, '<i class=\"fa fa-quote-left\"></i>'),
(527, '<i class=\"fa fa-quote-right\"></i>'),
(528, '<i class=\"fa fa-ra\"></i>'),
(529, '<i class=\"fa fa-random\"></i>'),
(530, '<i class=\"fa fa-ravelry\"></i>'),
(531, '<i class=\"fa fa-rebel\"></i>'),
(532, '<i class=\"fa fa-recycle\"></i>'),
(533, '<i class=\"fa fa-reddit\"></i>'),
(534, '<i class=\"fa fa-reddit-alien\"></i>'),
(535, '<i class=\"fa fa-reddit-square\"></i>'),
(536, '<i class=\"fa fa-refresh\"></i>'),
(537, '<i class=\"fa fa-registered\"></i>'),
(538, '<i class=\"fa fa-remove\"></i>'),
(539, '<i class=\"fa fa-renren\"></i>'),
(540, '<i class=\"fa fa-reorder\"></i>'),
(541, '<i class=\"fa fa-repeat\"></i>'),
(542, '<i class=\"fa fa-reply\"></i>'),
(543, '<i class=\"fa fa-reply-all\"></i>'),
(544, '<i class=\"fa fa-resistance\"></i>'),
(545, '<i class=\"fa fa-retweet\"></i>'),
(546, '<i class=\"fa fa-rmb\"></i>'),
(547, '<i class=\"fa fa-road\"></i>'),
(548, '<i class=\"fa fa-rocket\"></i>'),
(549, '<i class=\"fa fa-rotate-left\"></i>'),
(550, '<i class=\"fa fa-rotate-right\"></i>'),
(551, '<i class=\"fa fa-rouble\"></i>'),
(552, '<i class=\"fa fa-rss\"></i>'),
(553, '<i class=\"fa fa-rss-square\"></i>'),
(554, '<i class=\"fa fa-rub\"></i>'),
(555, '<i class=\"fa fa-ruble\"></i>'),
(556, '<i class=\"fa fa-rupee\"></i>'),
(557, '<i class=\"fa fa-s15\"></i>'),
(558, '<i class=\"fa fa-safari\"></i>'),
(559, '<i class=\"fa fa-save\"></i>'),
(560, '<i class=\"fa fa-scissors\"></i>'),
(561, '<i class=\"fa fa-scribd\"></i>'),
(562, '<i class=\"fa fa-search\"></i>'),
(563, '<i class=\"fa fa-search-minus\"></i>'),
(564, '<i class=\"fa fa-search-plus\"></i>'),
(565, '<i class=\"fa fa-sellsy\"></i>'),
(566, '<i class=\"fa fa-send\"></i>'),
(567, '<i class=\"fa fa-send-o\"></i>'),
(568, '<i class=\"fa fa-server\"></i>'),
(569, '<i class=\"fa fa-share\"></i>'),
(570, '<i class=\"fa fa-share-alt\"></i>'),
(571, '<i class=\"fa fa-share-alt-square\"></i>'),
(572, '<i class=\"fa fa-share-square\"></i>'),
(573, '<i class=\"fa fa-share-square-o\"></i>'),
(574, '<i class=\"fa fa-shekel\"></i>'),
(575, '<i class=\"fa fa-sheqel\"></i>'),
(576, '<i class=\"fa fa-shield\"></i>'),
(577, '<i class=\"fa fa-ship\"></i>'),
(578, '<i class=\"fa fa-shirtsinbulk\"></i>'),
(579, '<i class=\"fa fa-shopping-bag\"></i>'),
(580, '<i class=\"fa fa-shopping-basket\"></i>'),
(581, '<i class=\"fa fa-shopping-cart\"></i>'),
(582, '<i class=\"fa fa-shower\"></i>'),
(583, '<i class=\"fa fa-sign-in\"></i>'),
(584, '<i class=\"fa fa-sign-language\"></i>'),
(585, '<i class=\"fa fa-sign-out\"></i>'),
(586, '<i class=\"fa fa-signal\"></i>'),
(587, '<i class=\"fa fa-signing\"></i>'),
(588, '<i class=\"fa fa-simplybuilt\"></i>'),
(589, '<i class=\"fa fa-sitemap\"></i>'),
(590, '<i class=\"fa fa-skyatlas\"></i>'),
(591, '<i class=\"fa fa-skype\"></i>'),
(592, '<i class=\"fa fa-slack\"></i>'),
(593, '<i class=\"fa fa-sliders\"></i>'),
(594, '<i class=\"fa fa-slideshare\"></i>'),
(595, '<i class=\"fa fa-smile-o\"></i>'),
(596, '<i class=\"fa fa-snapchat\"></i>'),
(597, '<i class=\"fa fa-snapchat-ghost\"></i>'),
(598, '<i class=\"fa fa-snapchat-square\"></i>'),
(599, '<i class=\"fa fa-snowflake-o\"></i>'),
(600, '<i class=\"fa fa-soccer-ball-o\"></i>'),
(601, '<i class=\"fa fa-sort\"></i>'),
(602, '<i class=\"fa fa-sort-alpha-asc\"></i>'),
(603, '<i class=\"fa fa-sort-alpha-desc\"></i>'),
(604, '<i class=\"fa fa-sort-amount-asc\"></i>'),
(605, '<i class=\"fa fa-sort-amount-desc\"></i>'),
(606, '<i class=\"fa fa-sort-asc\"></i>'),
(607, '<i class=\"fa fa-sort-desc\"></i>'),
(608, '<i class=\"fa fa-sort-down\"></i>'),
(609, '<i class=\"fa fa-sort-numeric-asc\"></i>'),
(610, '<i class=\"fa fa-sort-numeric-desc\"></i>'),
(611, '<i class=\"fa fa-sort-up\"></i>'),
(612, '<i class=\"fa fa-soundcloud\"></i>'),
(613, '<i class=\"fa fa-space-shuttle\"></i>'),
(614, '<i class=\"fa fa-spinner\"></i>'),
(615, '<i class=\"fa fa-spoon\"></i>'),
(616, '<i class=\"fa fa-spotify\"></i>'),
(617, '<i class=\"fa fa-square\"></i>'),
(618, '<i class=\"fa fa-square-o\"></i>'),
(619, '<i class=\"fa fa-stack-exchange\"></i>'),
(620, '<i class=\"fa fa-stack-overflow\"></i>'),
(621, '<i class=\"fa fa-star\"></i>'),
(622, '<i class=\"fa fa-star-half\"></i>'),
(623, '<i class=\"fa fa-star-half-empty\"></i>'),
(624, '<i class=\"fa fa-star-half-full\"></i>'),
(625, '<i class=\"fa fa-star-half-o\"></i>'),
(626, '<i class=\"fa fa-star-o\"></i>'),
(627, '<i class=\"fa fa-steam\"></i>'),
(628, '<i class=\"fa fa-steam-square\"></i>'),
(629, '<i class=\"fa fa-step-backward\"></i>'),
(630, '<i class=\"fa fa-step-forward\"></i>'),
(631, '<i class=\"fa fa-stethoscope\"></i>'),
(632, '<i class=\"fa fa-sticky-note\"></i>'),
(633, '<i class=\"fa fa-sticky-note-o\"></i>'),
(634, '<i class=\"fa fa-stop\"></i>'),
(635, '<i class=\"fa fa-stop-circle\"></i>'),
(636, '<i class=\"fa fa-stop-circle-o\"></i>'),
(637, '<i class=\"fa fa-street-view\"></i>'),
(638, '<i class=\"fa fa-strikethrough\"></i>'),
(639, '<i class=\"fa fa-stumbleupon\"></i>'),
(640, '<i class=\"fa fa-stumbleupon-circle\"></i>'),
(641, '<i class=\"fa fa-subscript\"></i>'),
(642, '<i class=\"fa fa-subway\"></i>'),
(643, '<i class=\"fa fa-suitcase\"></i>'),
(644, '<i class=\"fa fa-sun-o\"></i>'),
(645, '<i class=\"fa fa-superpowers\"></i>'),
(646, '<i class=\"fa fa-superscript\"></i>'),
(647, '<i class=\"fa fa-support\"></i>'),
(648, '<i class=\"fa fa-table\"></i>'),
(649, '<i class=\"fa fa-tablet\"></i>'),
(650, '<i class=\"fa fa-tachometer\"></i>'),
(651, '<i class=\"fa fa-tag\"></i>'),
(652, '<i class=\"fa fa-tags\"></i>'),
(653, '<i class=\"fa fa-tasks\"></i>'),
(654, '<i class=\"fa fa-taxi\"></i>'),
(655, '<i class=\"fa fa-telegram\"></i>'),
(656, '<i class=\"fa fa-television\"></i>'),
(657, '<i class=\"fa fa-tencent-weibo\"></i>'),
(658, '<i class=\"fa fa-terminal\"></i>'),
(659, '<i class=\"fa fa-text-height\"></i>'),
(660, '<i class=\"fa fa-text-width\"></i>'),
(661, '<i class=\"fa fa-th\"></i>'),
(662, '<i class=\"fa fa-th-large\"></i>'),
(663, '<i class=\"fa fa-th-list\"></i>'),
(664, '<i class=\"fa fa-themeisle\"></i>'),
(665, '<i class=\"fa fa-thermometer\"></i>'),
(666, '<i class=\"fa fa-thermometer-0\"></i>'),
(667, '<i class=\"fa fa-thermometer-1\"></i>'),
(668, '<i class=\"fa fa-thermometer-2\"></i>'),
(669, '<i class=\"fa fa-thermometer-3\"></i>'),
(670, '<i class=\"fa fa-thermometer-4\"></i>'),
(671, '<i class=\"fa fa-thermometer-empty\"></i>'),
(672, '<i class=\"fa fa-thermometer-full\"></i>'),
(673, '<i class=\"fa fa-thermometer-half\"></i>'),
(674, '<i class=\"fa fa-thermometer-quarter\"></i>'),
(675, '<i class=\"fa fa-thermometer-three-quarters\"></i>'),
(676, '<i class=\"fa fa-thumb-tack\"></i>'),
(677, '<i class=\"fa fa-thumbs-down\"></i>'),
(678, '<i class=\"fa fa-thumbs-o-down\"></i>'),
(679, '<i class=\"fa fa-thumbs-o-up\"></i>'),
(680, '<i class=\"fa fa-thumbs-up\"></i>'),
(681, '<i class=\"fa fa-ticket\"></i>'),
(682, '<i class=\"fa fa-times\"></i>'),
(683, '<i class=\"fa fa-times-circle\"></i>'),
(684, '<i class=\"fa fa-times-circle-o\"></i>'),
(685, '<i class=\"fa fa-times-rectangle\"></i>'),
(686, '<i class=\"fa fa-times-rectangle-o\"></i>'),
(687, '<i class=\"fa fa-tint\"></i>'),
(688, '<i class=\"fa fa-toggle-down\"></i>'),
(689, '<i class=\"fa fa-toggle-left\"></i>'),
(690, '<i class=\"fa fa-toggle-off\"></i>'),
(691, '<i class=\"fa fa-toggle-on\"></i>'),
(692, '<i class=\"fa fa-toggle-right\"></i>'),
(693, '<i class=\"fa fa-toggle-up\"></i>'),
(694, '<i class=\"fa fa-trademark\"></i>'),
(695, '<i class=\"fa fa-train\"></i>'),
(696, '<i class=\"fa fa-transgender\"></i>'),
(697, '<i class=\"fa fa-transgender-alt\"></i>'),
(698, '<i class=\"fa fa-trash\"></i>'),
(699, '<i class=\"fa fa-trash-o\"></i>'),
(700, '<i class=\"fa fa-tree\"></i>'),
(701, '<i class=\"fa fa-trello\"></i>'),
(702, '<i class=\"fa fa-tripadvisor\"></i>'),
(703, '<i class=\"fa fa-trophy\"></i>'),
(704, '<i class=\"fa fa-truck\"></i>'),
(705, '<i class=\"fa fa-try\"></i>'),
(706, '<i class=\"fa fa-tty\"></i>'),
(707, '<i class=\"fa fa-tumblr\"></i>'),
(708, '<i class=\"fa fa-tumblr-square\"></i>'),
(709, '<i class=\"fa fa-turkish-lira\"></i>'),
(710, '<i class=\"fa fa-tv\"></i>'),
(711, '<i class=\"fa fa-twitch\"></i>'),
(712, '<i class=\"fa fa-twitter\"></i>'),
(713, '<i class=\"fa fa-twitter-square\"></i>'),
(714, '<i class=\"fa fa-umbrella\"></i>'),
(715, '<i class=\"fa fa-underline\"></i>'),
(716, '<i class=\"fa fa-undo\"></i>'),
(717, '<i class=\"fa fa-universal-access\"></i>'),
(718, '<i class=\"fa fa-university\"></i>'),
(719, '<i class=\"fa fa-unlink\"></i>'),
(720, '<i class=\"fa fa-unlock\"></i>'),
(721, '<i class=\"fa fa-unlock-alt\"></i>'),
(722, '<i class=\"fa fa-unsorted\"></i>'),
(723, '<i class=\"fa fa-upload\"></i>'),
(724, '<i class=\"fa fa-usb\"></i>'),
(725, '<i class=\"fa fa-usd\"></i>'),
(726, '<i class=\"fa fa-user\"></i>'),
(727, '<i class=\"fa fa-user-circle\"></i>'),
(728, '<i class=\"fa fa-user-circle-o\"></i>'),
(729, '<i class=\"fa fa-user-md\"></i>'),
(730, '<i class=\"fa fa-user-o\"></i>'),
(731, '<i class=\"fa fa-user-plus\"></i>'),
(732, '<i class=\"fa fa-user-secret\"></i>'),
(733, '<i class=\"fa fa-user-times\"></i>'),
(734, '<i class=\"fa fa-users\"></i>'),
(735, '<i class=\"fa fa-vcard\"></i>'),
(736, '<i class=\"fa fa-vcard-o\"></i>'),
(737, '<i class=\"fa fa-venus\"></i>'),
(738, '<i class=\"fa fa-venus-double\"></i>'),
(739, '<i class=\"fa fa-venus-mars\"></i>'),
(740, '<i class=\"fa fa-viacoin\"></i>'),
(741, '<i class=\"fa fa-viadeo\"></i>'),
(742, '<i class=\"fa fa-viadeo-square\"></i>'),
(743, '<i class=\"fa fa-video-camera\"></i>'),
(744, '<i class=\"fa fa-vimeo\"></i>'),
(745, '<i class=\"fa fa-vimeo-square\"></i>'),
(746, '<i class=\"fa fa-vine\"></i>'),
(747, '<i class=\"fa fa-vk\"></i>'),
(748, '<i class=\"fa fa-volume-control-phone\"></i>'),
(749, '<i class=\"fa fa-volume-down\"></i>'),
(750, '<i class=\"fa fa-volume-off\"></i>'),
(751, '<i class=\"fa fa-volume-up\"></i>'),
(752, '<i class=\"fa fa-warning\"></i>'),
(753, '<i class=\"fa fa-wechat\"></i>'),
(754, '<i class=\"fa fa-weibo\"></i>'),
(755, '<i class=\"fa fa-weixin\"></i>'),
(756, '<i class=\"fa fa-whatsapp\"></i>'),
(757, '<i class=\"fa fa-wheelchair\"></i>'),
(758, '<i class=\"fa fa-wheelchair-alt\"></i>'),
(759, '<i class=\"fa fa-wifi\"></i>'),
(760, '<i class=\"fa fa-wikipedia-w\"></i>'),
(761, '<i class=\"fa fa-window-close\"></i>'),
(762, '<i class=\"fa fa-window-close-o\"></i>'),
(763, '<i class=\"fa fa-window-maximize\"></i>'),
(764, '<i class=\"fa fa-window-minimize\"></i>'),
(765, '<i class=\"fa fa-window-restore\"></i>'),
(766, '<i class=\"fa fa-windows\"></i>'),
(767, '<i class=\"fa fa-won\"></i>'),
(768, '<i class=\"fa fa-wordpress\"></i>'),
(769, '<i class=\"fa fa-wpbeginner\"></i>'),
(770, '<i class=\"fa fa-wpexplorer\"></i>'),
(771, '<i class=\"fa fa-wpforms\"></i>'),
(772, '<i class=\"fa fa-wrench\"></i>'),
(773, '<i class=\"fa fa-xing\"></i>'),
(774, '<i class=\"fa fa-xing-square\"></i>'),
(775, '<i class=\"fa fa-y-combinator\"></i>'),
(776, '<i class=\"fa fa-y-combinator-square\"></i>'),
(777, '<i class=\"fa fa-yahoo\"></i>'),
(778, '<i class=\"fa fa-yc\"></i>'),
(779, '<i class=\"fa fa-yc-square\"></i>'),
(780, '<i class=\"fa fa-yelp\"></i>'),
(781, '<i class=\"fa fa-yen\"></i>'),
(782, '<i class=\"fa fa-yoast\"></i>'),
(783, '<i class=\"fa fa-youtube\"></i>'),
(784, '<i class=\"fa fa-youtube-play\"></i>'),
(785, '<i class=\"fa fa-youtube-square\"></i>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(1) NOT NULL,
  `titulo` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `icono` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `programa` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(60) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id_menu`, `titulo`, `icono`, `programa`, `url`) VALUES
(1, 'Admón Usuarios', '<i class=\'fas fa-building\' style=\'font-size:24px\'></i>', 'adm_usuarios', 'admon_usuarios'),
(3, 'Admón Perfiles', '<i class=\'fas fa-bullhorn\' style=\'font-size:24px\'></i>', 'adm_perfiles', 'admon_perfiles'),
(8, 'Admon Menus', '<i class=\'fa fa-comments\' style=\'font-size:24px\'></i>', 'adm_menus', 'adm_menus'),
(9, 'Admon Invitado', '<i class=\'fa fa-linux\' style=\'font-size:24px\'></i>', 'adm_invitado', 'adm_invitado'),
(10, 'Admon goods', '<i class=\'fa fa-plane\' style=\'font-size:24px\'></i>', 'adm_goods', 'adm_goods'),
(12, 'Tabla Pivote', '<i class=\'fa fa-google\' style=\'font-size:24px\'></i>', 'adm_aux_perfiles_menus', 'adm_aux_perfiles_menus'),
(13, 'bbb', '<i class=\"fa fa-ambulance\"></i>', 'cccc', 'bbb'),
(16, 'aaa', '<i class=\"fa fa-ambulance\"></i>', 'bbb', 'cccc'),
(17, 'aaa', '<i class=\"fa fa-ambulance\"></i>', 'bbb', 'cccc'),
(18, 'aaa', '<i class=\"fa fa-ambulance\"></i>', 'bbb', 'cccc'),
(19, 'aaa', '<i class=\"fa fa-ambulance\"></i>', 'bbb', 'cccc'),
(20, 'aaa', '<i class=\"fa fa-ambulance\"></i>', 'bbb', 'cccc'),
(21, 'aaa', '', 'bbb', 'cccc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(1) NOT NULL,
  `nombre_perfil` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `nombre_perfil`) VALUES
(1, 'administrador 2121111'),
(2, 'Supervisor 313'),
(3, 'Auditor 11'),
(4, 'Operador 511'),
(12, 'zzzz2'),
(13, 'zzzz23'),
(14, 'Adminsitrador 222111'),
(15, 'Adminsitrador 222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(3) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `cuenta` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `foto` text COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '1' COMMENT '1=Activo,0=Inactivo',
  `perfil_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `cuenta`, `clave`, `foto`, `estado`, `perfil_id`) VALUES
(3, 'Profesor Jirafales', 'jirafales@gmail.com', '123', '../fotos_usuarios/jirafales.jpeg', 1, 1),
(4, 'La Chilindrina', 'chilindrina@gmail.com', '123', '../fotos_usuarios/chilindrina.jpeg', 1, 2),
(5, 'El chavo del 8', 'chavo8@gmail.com', '123', '../fotos_usuarios/chavo.jpeg', 1, 3),
(6, 'invitado', 'invitado@gmail.com', '123', '', 1, 4),
(10, 'El chavo del 8 edit', 'chavo8_2@gmail.com', '123', 'fotos/chavo8_2@gmail.com.jpeg', 1, 4),
(11, 'zz', 'admin@conjuntoseguro.com', '123', 'fotos/admin@conjuntoseguro.com.jpg', 1, 1),
(12, 'zz', 'admin@conjuntoseguro.com', '123', 'fotos/admin@conjuntoseguro.com.jpg', 1, 1),
(13, 'zz', 'admin@conjuntoseguro.com', '123', 'fotos/admin@conjuntoseguro.com.jpg', 1, 1),
(14, 'zz', 'admin@conjuntoseguro.com', '123', 'fotos/admin@conjuntoseguro.com.jpg', 1, 1),
(15, 'zz', 'admin@conjuntoseguro.com', '123', 'fotos/admin@conjuntoseguro.com.jpg', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aux_perfiles_menus`
--
ALTER TABLE `aux_perfiles_menus`
  ADD PRIMARY KEY (`id_aux`),
  ADD KEY `perfil_id` (`perfil_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indices de la tabla `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iconos`
--
ALTER TABLE `iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perfil_id` (`perfil_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aux_perfiles_menus`
--
ALTER TABLE `aux_perfiles_menus`
  MODIFY `id_aux` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `iconos`
--
ALTER TABLE `iconos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aux_perfiles_menus`
--
ALTER TABLE `aux_perfiles_menus`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_3` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id_perfil`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
