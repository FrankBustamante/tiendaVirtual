-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2017 a las 19:17:20
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `precio` double NOT NULL,
  `talla` int(3) NOT NULL,
  `cantidad _disponible` int(6) NOT NULL,
  `color` varchar(30) NOT NULL,
  `tiempo_disponible` date NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `categoria`, `tipo`, `precio`, `talla`, `cantidad _disponible`, `color`, `tiempo_disponible`, `imagen`) VALUES
('1111', 'Running Negro Nike lunarconverge', 'Masculino', 'Tenis', 320000, 40, 10, 'Negro', '2018-10-17', 'TiendaVirtualIS\\web\\Recursos\\1111.jpg'),
('12346654', 'amAODAS', 'Masculino', 'Tenis', 30000, 45, 45, 'ASMD', '2017-05-26', '2b415c2c8402e14f1a0accf44439a776.jpg'),
('134', 'amsdasdm', 'Masculino', 'Tenis', 3455555, 34, 12, 'azx', '2017-05-26', 'shutdown-button-hackers-wallpaper.jpg'),
('2211', 'Lifestyle Rojo Tommy Hilfiger', 'Masculino', 'Tenis', 105900, 38, 4, 'Rojo', '2017-11-22', '\\TiendaVirtualIS\\web\\Recursos\\2211.jpg'),
('2222', 'Tenis Lifestyles Blanco Nike Air Max Tavas', 'Masculino', 'Tenis', 341000, 40, 9, 'blanco-gris', '2019-01-30', '\\TiendaVirtualIS\\web\\Recursos\\2222.jpg'),
('3331', ' Running Negro-Blanco adidas Energy Cloud Wtc ', 'Femenino', 'Tenis', 231900, 36, 6, 'Negro', '2017-04-29', '\\TiendaVirtualIS\\web\\Recursos\\3331.jpg'),
('3333', ' Lifestyle Rosa Nike Juvenate ', 'Femenino', 'Tenis', 387900, 35, 8, 'Rosa', '2017-04-27', '\\TiendaVirtualIS\\web\\Recursos\\3333.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
