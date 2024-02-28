-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 00:11:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencia`
--

CREATE TABLE `conferencia` (
  `id` int(3) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Conferencista` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_aula`
--

CREATE TABLE `detalle_aula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_conferencia`
--

CREATE TABLE `detalle_conferencia` (
  `id_conferencia` int(3) NOT NULL,
  `consecutivo` int(3) NOT NULL,
  `dia` varchar(15) NOT NULL,
  `hora` varchar(15) NOT NULL,
  `aula` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_aula`
--
ALTER TABLE `detalle_aula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_conferencia`
--
ALTER TABLE `detalle_conferencia`
  ADD PRIMARY KEY (`consecutivo`),
  ADD KEY `id_conferencia` (`id_conferencia`),
  ADD KEY `aula` (`aula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_aula`
--
ALTER TABLE `detalle_aula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_conferencia`
--
ALTER TABLE `detalle_conferencia`
  MODIFY `consecutivo` int(3) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_conferencia`
--
ALTER TABLE `detalle_conferencia`
  ADD CONSTRAINT `detalle_conferencia_ibfk_1` FOREIGN KEY (`id_conferencia`) REFERENCES `conferencia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_conferencia_ibfk_2` FOREIGN KEY (`aula`) REFERENCES `detalle_aula` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
