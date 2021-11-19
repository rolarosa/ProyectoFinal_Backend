-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2021 a las 21:03:55
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `optica_lentsur`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `id_producto` int(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `precio` int(100) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(8) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `características` varchar(100) NOT NULL,
  `precio` int(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `stock_disponible` tinyint(100) NOT NULL,
  `categoría` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca`, `modelo`, `características`, `precio`, `color`, `stock_disponible`, `categoría`, `imagen`) VALUES
(1, 'Valdez', 'Clipper 127', 'Metal', 7600, 'Negra', 1, 'Marcos recetados', 'recetados 01.png'),
(2, '47 Street', 'BKL', 'Material plástico zyl', 8700, 'Negra', 1, 'Marcos recetados', 'recetados 02.png'),
(3, 'Union Pacific', 'Power', 'Plástico zyl opacas', 8300, 'Negra', 1, 'Marcos recetados', 'recetados 03.png'),
(4, 'Sarkany', 'PNK 2', 'Plástico zyl transparentes', 6300, 'Rosa', 1, 'Marcos recetados', 'recetados 04.png'),
(5, 'Armani Exchange', 'DW3', 'Metal y plástico zyl ', 5552, 'Jaspeado marrón/negro', 1, 'Marcos recetados', 'recetados 05'),
(6, 'Monkey Grove', 'Skay BLK', 'Cristales orgánicos polarizados tono azul.', 9700, 'Negra', 1, 'Gafas de sol deportivas.', 'sol 01'),
(7, 'Rusty', 'Snow wey', 'Plásticas, orgánicas espejadas tornasoladas fucsias', 10120, 'Negra', 1, 'Gafas deportivas', 'sol 02'),
(8, 'Vulk', 'Print ', 'Plasticas, orgánicas polarizados con antireflex.', 12500, 'Animal print marrón/negro', 1, 'Lentes de sol. Casual', 'sol 03'),
(9, 'Valeria Massa', 'Chick', 'Clipper metal doradas', 13200, 'Doradas, polarizadas antireflex', 1, 'Lentes de sol. Casual', 'sol 04'),
(10, 'Tifanny', 'Cinetic', 'Cristales sin marco orgánicas, patillas metal. ', 14200, 'Marrón', 1, 'Lentes de sol. Casual', 'sol 05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `nro_calle` int(6) NOT NULL,
  `cod_postal` varchar(4) NOT NULL,
  `password` varchar(256) NOT NULL,
  `habilitado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
