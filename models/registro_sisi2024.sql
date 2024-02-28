-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 22:27:10
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
-- Base de datos: `registro_sisi2024`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `matricula` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `celular` int(10) NOT NULL,
  `semestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`matricula`, `nombre`, `correo`, `celular`, `semestre`) VALUES
('E21120352', 'Marco', 'estudiante@gmail.com', 999999999, 0),
('E21120352', 'Marco', 'estudiante@gmail.com', 999999999, 0),
('E21140352', 'Javier', 'estudiante@gmail.com', 999999999, 0),
('E21130352', 'Wilberth', 'estudiante@gmail.com', 999999999, 0),
('E21110352', 'Francisco', 'estudiante@gmail.com', 999999999, 0),
('', '', '', 0, 0),
('E12345678', 'Mario Hernandez', 'admin@gmail.com', 2147483647, 11),
('E20080450', 'Mario Hernandez', 'qwe@sdf.com', 2147483647, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
