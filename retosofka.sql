-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2021 a las 20:32:16
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `retosofka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria1`
--

CREATE TABLE `categoria1` (
  `id_pregunta` int(100) NOT NULL,
  `pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria1`
--

INSERT INTO `categoria1` (`id_pregunta`, `pregunta`) VALUES
(1, '¿Cuánto es 33-5?'),
(3, '¿Cuánto es 4/3?'),
(4, '¿Cuánto es 40+32?'),
(6, '¿Cuánto es 10-9.5?'),
(7, '¿Cuánto es 2 x 6?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria2`
--

CREATE TABLE `categoria2` (
  `id_pregunta` int(10) NOT NULL,
  `pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria2`
--

INSERT INTO `categoria2` (`id_pregunta`, `pregunta`) VALUES
(1, '¿Cuánto es es 33-4x4?'),
(2, '¿Cuánto es 22-300?'),
(3, '¿Cuánto es 30x66?'),
(4, '¿Cuánto es 40-39?'),
(5, '¿Cuánto es 22-48?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria3`
--

CREATE TABLE `categoria3` (
  `id_pregunta` int(10) NOT NULL,
  `pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria3`
--

INSERT INTO `categoria3` (`id_pregunta`, `pregunta`) VALUES
(1, '¿Cuánto es 11/8?'),
(2, '¿Cuánto es 28/6?'),
(3, '¿Cuánto es 56/9?'),
(4, '¿Cuánto es 80/4?'),
(5, '¿Cuánto es 12/4?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria4`
--

CREATE TABLE `categoria4` (
  `id_pregunta` int(10) NOT NULL,
  `pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria4`
--

INSERT INTO `categoria4` (`id_pregunta`, `pregunta`) VALUES
(1, '¿Cuánto es32x42?'),
(2, '¿Cuánto es 90x39?'),
(3, '¿Cuánto es 48x37?'),
(4, '¿Cuánto es 20x105?'),
(5, '¿Cuánto es 36x29?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria5`
--

CREATE TABLE `categoria5` (
  `id_pregunta` int(10) NOT NULL,
  `pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria5`
--

INSERT INTO `categoria5` (`id_pregunta`, `pregunta`) VALUES
(1, '¿Cuánto es 20-10x5?'),
(2, '¿Cuánto es 80-3/2?'),
(3, '¿Cuánto es 49x35?'),
(4, '¿Cuánto es 30x98?'),
(5, '¿Cuánto es 78-45x4?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id_respuesta` int(10) NOT NULL,
  `respuesta` varchar(150) NOT NULL,
  `id_pregunta` int(10) NOT NULL,
  `categoria` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id_respuesta`, `respuesta`, `id_pregunta`, `categoria`) VALUES
(1, '28', 1, 1),
(2, '1.33', 3, 1),
(3, '72', 4, 1),
(4, '0.5', 6, 1),
(5, '12', 7, 1),
(6, '17', 1, 2),
(7, '-278', 2, 2),
(8, '1980', 3, 2),
(9, '1', 4, 2),
(10, '-26', 5, 2),
(11, '1.375', 1, 3),
(12, '4.66', 2, 3),
(13, '6.22', 3, 3),
(14, '20', 4, 3),
(15, '3', 5, 3),
(16, '1344', 1, 4),
(17, '3518', 2, 4),
(18, '1776', 3, 4),
(19, '2100', 4, 4),
(20, '1044', 5, 4),
(21, '-30', 1, 5),
(22, '78.5', 2, 5),
(23, '1715', 3, 5),
(24, '2940', 4, 5),
(25, '-102', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('C6ufnck9DF1Gh2ltkH2P7nPXWs3k_Kjl', 1640667679, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('UFKE1iLfMsCsrWZRBH6Mq-5ViXHttMeK', 1640639002, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('XdY5GDj7zfYQOKjMTHBBXlWHhstoOOlx', 1640623573, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('moxv97GQVih_HU9cRnBr6ZwqyZjshD9j', 1640719880, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria1`
--
ALTER TABLE `categoria1`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `categoria2`
--
ALTER TABLE `categoria2`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `categoria3`
--
ALTER TABLE `categoria3`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `categoria4`
--
ALTER TABLE `categoria4`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `categoria5`
--
ALTER TABLE `categoria5`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id_respuesta`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria1`
--
ALTER TABLE `categoria1`
  MODIFY `id_pregunta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categoria2`
--
ALTER TABLE `categoria2`
  MODIFY `id_pregunta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria3`
--
ALTER TABLE `categoria3`
  MODIFY `id_pregunta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria4`
--
ALTER TABLE `categoria4`
  MODIFY `id_pregunta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria5`
--
ALTER TABLE `categoria5`
  MODIFY `id_pregunta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id_respuesta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
