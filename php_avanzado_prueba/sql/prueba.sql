-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2019 a las 07:05:06
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
(3, 'aaa', 'esto es una prueba de php con mysql para add un nuevo registro a la tabla Goods', 11111111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(1) NOT NULL,
  `titulo` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `icono` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `programa` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(60) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `titulo`, `icono`, `programa`, `url`) VALUES
(1, 'Admón Usuarios', '<i class=\'fas fa-building\' style=\'font-size:24px\'></i>', 'adm_usuarios', 'admon_usuarios'),
(3, 'Admón Perfiles', '<i class=\'fas fa-bullhorn\' style=\'font-size:24px\'></i>', 'adm_perfiles', 'admon_perfiles'),
(8, 'Admon Menus', '<i class=\'fa fa-comments\' style=\'font-size:24px\'></i>', 'adm_menus', 'adm_menus'),
(9, 'Admon Invitado', '<i class=\'fa fa-linux\' style=\'font-size:24px\'></i>', 'adm_invitado', 'adm_invitado'),
(10, 'Admon goods', '<i class=\'fa fa-plane\' style=\'font-size:24px\'></i>', 'adm_goods', 'adm_goods'),
(12, 'Tabla Pivote', '<i class=\'fa fa-google\' style=\'font-size:24px\'></i>', 'adm_aux_perfiles_menus', 'adm_aux_perfiles_menus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(1) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`) VALUES
(1, 'Adminsitrador'),
(2, 'Supervisor'),
(3, 'Auditor'),
(4, 'Operador');

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
(3, 'Profesor Jirafales', 'jirafales@gmail.com', '123', 'fotos_usuarios/jirafales.jpeg', 1, 1),
(4, 'La Chilindrina', 'chilindrina@gmail.com', '123', 'fotos_usuarios/chilindrina.jpeg', 1, 2),
(5, 'El chavo del 8', 'chavo8@gmail.com', '123', 'fotos_usuarios/chavo.jpeg', 1, 3),
(6, 'invitado', 'invitado@gmail.com', '123', 'fotos_usuarios/sinfoto.jpg', 1, 4);

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
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aux_perfiles_menus`
--
ALTER TABLE `aux_perfiles_menus`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_3` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
