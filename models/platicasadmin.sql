-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 00:34:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `platicasadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_platica`
--

CREATE TABLE `det_platica` (
  `id_platicas` int(3) NOT NULL,
  `id` int(11) NOT NULL,
  `dia` date NOT NULL,
  `hora` time(6) NOT NULL,
  `aula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platicas`
--

CREATE TABLE `platicas` (
  `id` int(3) NOT NULL,
  `nombre_platica` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `nombre_expositor` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `det_platica`
--
ALTER TABLE `det_platica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_platicas` (`id_platicas`);

--
-- Indices de la tabla `platicas`
--
ALTER TABLE `platicas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `det_platica`
--
ALTER TABLE `det_platica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `platicas`
--
ALTER TABLE `platicas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `det_platica`
--
ALTER TABLE `det_platica`
  ADD CONSTRAINT `det_platica_ibfk_1` FOREIGN KEY (`id_platicas`) REFERENCES `platicas` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
