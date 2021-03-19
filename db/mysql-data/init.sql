-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2020 a las 06:16:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sp_dashboard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_keystore`
--

CREATE TABLE `db_keystore` (
  `id` int(11) NOT NULL,
  `id_db_usuarios` int(11) NOT NULL,
  `hash` text NOT NULL,
  `keyapi` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_keystore`
--

INSERT INTO `db_keystore` (`id`, `id_db_usuarios`, `hash`, `keyapi`, `status`, `fec_ult_act`) VALUES
(1, 1, 'dsfsdfsdfsdffdbvfdbdfdsdfsdf', 'lkj43983f39f8j498fj3498f3948fh3948fh3', 1, '2020-05-03 17:06:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_pictures`
--

CREATE TABLE `db_pictures` (
  `id` int(11) NOT NULL,
  `url_image` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_pictures`
--

INSERT INTO `db_pictures` (`id`, `url_image`, `title`, `description`, `orden`) VALUES
(1, '/views/assets/images/aoj_profile_wb.jpg', 'Perfect Balancede1', '1ArchitectUI is like a dream. Some think its too good to be true! Extensive collection of unified React Boostrap Components and Elements.', 1),
(2, '/views/assets/images/cfu_profile_9k.jpg', 'Scalable, Modular, Consistent2', '2Easily exclude the components you dont require. Lightweight, consistent Bootstrap based styles across all elements and components.', 2),
(3, '/views/assets/images/3ir_profile_ck.jpg', 'Complex, but lightweight3', '3We ve included a lot of components that cover almost all use cases for any type of application.', 3),
(5, '/views/assets/images/logo-inverse.png', '', '', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_setting`
--

CREATE TABLE `db_setting` (
  `id` int(11) NOT NULL,
  `usa_carrousel_ini` tinyint(1) NOT NULL DEFAULT 0,
  `usa_carrusel_txt` tinyint(1) NOT NULL DEFAULT 0,
  `usa_alta_user` tinyint(1) NOT NULL DEFAULT 0,
  `usa_recovery_user` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_setting`
--

INSERT INTO `db_setting` (`id`, `usa_carrousel_ini`, `usa_carrusel_txt`, `usa_alta_user`, `usa_recovery_user`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_usuarios`
--

CREATE TABLE `db_usuarios` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `nombre` text NOT NULL,
  `hash_session` text DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_usuarios`
--

INSERT INTO `db_usuarios` (`id`, `email`, `pass`, `nombre`, `hash_session`, `owner`, `fec_ult_act`) VALUES
(1, 'lcondori@gmail.com', 'Genesis2020', 'Leo Condori', '2c2140185a0b3cd2e40b200ec005607a', 1, '2020-10-12 04:11:54'),
(2, 'lcondori@mininterior.gob.ar', 'Genesis2020', 'Mariano', 'c731cdb835e66efbbf3b8cc48af2c8ae', 0, '2020-10-12 03:48:30'),
(3, 'invitado@mininterior.gob.ar', 'Genesis2020', 'Invitado', 'be0f7158a91959e4869807c9f70b9f94', 0, '2020-10-12 01:37:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_version`
--

CREATE TABLE `db_version` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `subversion` int(11) NOT NULL,
  `hash` text NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_version`
--

INSERT INTO `db_version` (`id`, `version`, `subversion`, `hash`, `habilitado`, `fec_ult_act`) VALUES
(1, 12, 16, '5116fff881d10d332d04be90aff768af', 1, '2020-05-04 05:47:19'),
(15, 12, 99, '5116fff881d10d332d04be90aff768af', 1, '2020-05-04 17:22:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sp_framework`
--

CREATE TABLE `sp_framework` (
  `id` int(11) NOT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `menu` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0,
  `config_button` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sp_framework`
--

INSERT INTO `sp_framework` (`id`, `header`, `menu`, `footer`, `config_button`) VALUES
(1, 1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_db_usuarios` (`id_db_usuarios`);

--
-- Indices de la tabla `db_pictures`
--
ALTER TABLE `db_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_usuarios`
--
ALTER TABLE `db_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_version`
--
ALTER TABLE `db_version`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sp_framework`
--
ALTER TABLE `sp_framework`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `db_pictures`
--
ALTER TABLE `db_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `db_usuarios`
--
ALTER TABLE `db_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `db_version`
--
ALTER TABLE `db_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `sp_framework`
--
ALTER TABLE `sp_framework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  ADD CONSTRAINT `db_keystore_ibfk_1` FOREIGN KEY (`id_db_usuarios`) REFERENCES `db_usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
