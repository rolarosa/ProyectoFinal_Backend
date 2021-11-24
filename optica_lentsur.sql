-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 22:47:53
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
  `id_usuario` varchar(255) NOT NULL,
  `id_producto` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `precio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_usuario`, `id_producto`, `imagen`, `marca`, `modelo`, `precio`) VALUES
(11, '31014019', '2', 'recetados-02', 'Lentes 47 Street', 'BKL', 8700),
(12, '31014019', '3', 'recetados-03', 'Lentes Mormaii', 'Power', 8300),
(13, '31014019', '4', 'recetados-04', 'Lentes Sarkany', 'PNK 2', 6300),
(14, '31014019', '3', 'recetados-03', 'Lentes Mormaii', 'Power', 8300),
(15, '31014019', '2', 'recetados-02', 'Lentes 47 Street', 'BKL', 8700),
(16, '31014019', '4', 'recetados-04', 'Lentes Sarkany', 'PNK 2', 6300);

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
  `stock_disponible` tinyint(100) NOT NULL,
  `categoría` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca`, `modelo`, `características`, `precio`, `stock_disponible`, `categoría`, `imagen`) VALUES
(1, 'Lentes Valdez', 'Clipper 127', 'Metal', 7600, 1, 'Marcos recetados', 'recetados-01'),
(2, 'Lentes 47 Street', 'BKL', 'Material plástico zyl', 8700, 1, 'Marcos recetados', 'recetados-02'),
(3, 'Lentes Mormaii', 'Power', 'Plástico zyl opacas', 8300, 1, 'Marcos recetados', 'recetados-03'),
(4, 'Lentes Sarkany', 'PNK 2', 'Plástico zyl transparentes', 6300, 1, 'Marcos recetados', 'recetados-04'),
(5, 'Lentes Armani', 'DW3', 'Metal y plástico zyl ', 5552, 1, 'Marcos recetados', 'recetados-05'),
(6, 'Gafas Monkey Grove', 'Skay BLK', 'Cristales orgánicos polarizados tono azul.', 9700, 1, 'Gafas de sol deportivas.', 'sol-01'),
(7, 'Gafas Rusty', 'Snow wey', 'Plásticas, orgánicas espejadas tornasoladas fucsias', 10120, 1, 'Gafas deportivas', 'sol-02'),
(8, 'Gafas Vulk', 'Print ', 'Plasticas, orgánicas polarizados con antireflex.', 12500, 1, 'Lentes de sol. Casual', 'sol-03'),
(9, 'Gafas Valeria Massa', 'Chick', 'Clipper metal doradas', 13200, 1, 'Lentes de sol. Casual', 'sol-04'),
(10, 'Gafas Tifanny', 'Cinetic', 'Cristales sin marco orgánicas, patillas metal. ', 14200, 1, 'Lentes de sol. Casual', 'sol-05'),
(11, 'Gafas Ray Ban', 'Wuolala ', 'Clipper.  Cristales polarizados Rosas', 15700, 1, 'Gafas de sol', 'sol-06'),
(12, 'Gafas Infinit', 'Sign ', 'ojo de gato cristales oscuras.', 14350, 1, 'Gafas sol', 'sol-07');

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
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`dni`, `nombre`, `apellido`, `email`, `telefono`, `ciudad`, `calle`, `nro_calle`, `cod_postal`, `password`, `habilitado`) VALUES
('13546023', 'Marcelo', 'La Rosa', 'marcelarosa@gmail.com', '029715470375', 'Comodoro Rivadavia', 'Dr Cayelli', 348, '9000', '$2y$10$qwaYYB6TK8m/tmQ/x08tk.bPuScbvNc6AP7/EchADk7wC9NYGV2Kq', 1),
('31014019', 'Gaston', 'Enrique', 'gas.enrique@gmail.com', '29745060387', 'Comodoro Rivadavia', 'Dr Cayelli', 836, '9000', '$2y$10$OZUNRPjn1Ygm6mJqUf5yUOYJXphinGY0CunR.HtaFt3bDV5eXvM76', 1);

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

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
