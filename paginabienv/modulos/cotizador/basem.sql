-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2018 a las 14:20:57
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones_demo`
--

CREATE TABLE `cotizaciones_demo` (
  `id_cotizacion` int(11) NOT NULL,
  `numero_cotizacion` int(11) NOT NULL,
  `fecha_cotizacion` datetime NOT NULL,
  `atencion` varchar(50) NOT NULL,
  `tel1` varchar(9) NOT NULL,
  `empresa` varchar(75) NOT NULL,
  `tel2` varchar(9) NOT NULL,
  `email` varchar(30) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `validez` varchar(20) NOT NULL,
  `entrega` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cotizaciones_demo`
--

INSERT INTO `cotizaciones_demo` (`id_cotizacion`, `numero_cotizacion`, `fecha_cotizacion`, `atencion`, `tel1`, `empresa`, `tel2`, `email`, `condiciones`, `validez`, `entrega`) VALUES
(1, 1, '2015-07-19 06:52:51', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(2, 2, '2015-07-19 06:53:38', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(3, 3, '2015-07-19 06:55:42', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(4, 4, '2015-07-19 06:59:01', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(5, 5, '2015-07-19 07:00:12', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(6, 6, '2015-07-19 07:03:09', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(7, 7, '2015-07-19 07:03:34', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(8, 8, '2015-07-19 07:08:59', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(9, 9, '2015-07-19 07:10:20', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(10, 10, '2015-07-19 07:11:09', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(11, 11, '2015-07-19 07:11:47', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(12, 12, '2015-07-19 07:15:03', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(13, 13, '2015-07-19 07:16:34', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(14, 14, '2015-07-19 07:16:51', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(15, 15, '2015-07-19 07:20:34', 'Juan Diego', '222-2220', 'Invertir Mejor', '2222-0000', 'info@invertirmejor.com', 'Nota: Las Condiciones de pago ', '', ''),
(16, 16, '2015-07-20 07:27:16', 'Juan Perez', '7070', '', '', '', '', '', ''),
(17, 17, '2015-07-20 07:29:50', 'Juan Perez', '7070', '', '', '', '1', '', ''),
(18, 18, '2015-07-20 07:32:30', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(19, 19, '2015-07-20 07:34:38', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(20, 20, '2015-07-20 07:35:01', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(21, 21, '2015-07-20 07:38:07', 'Juan Perez', '7070', '', '', '', 'Contado', '15 dÃ­as', 'Inmediato'),
(22, 22, '2015-07-21 03:06:14', 'Juan Diego', '70587677', 'Invertir Mejor', '2230-000', 'info@invertirmejor.com', 'CrÃ©dito 30 dÃ­as', '15 dÃ­as', 'Inmediato'),
(23, 23, '2018-06-28 14:42:05', 'wils', '09889', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(24, 24, '2018-06-28 14:46:39', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(25, 25, '2018-06-28 15:00:56', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(26, 26, '2018-06-28 15:07:42', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(27, 27, '2018-06-28 15:10:13', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(28, 28, '2018-06-28 15:18:28', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(29, 29, '2018-06-28 15:28:18', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(30, 30, '2018-06-28 15:32:46', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(31, 31, '2018-06-28 15:34:14', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(32, 32, '2018-06-28 15:50:24', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(33, 33, '2018-06-28 15:55:20', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(34, 34, '2018-07-03 16:20:14', 'wils', '09999', 'willian', '098638869', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato'),
(35, 35, '2018-07-03 16:37:25', 'willian', '09889', 'local', '09999', 'wils14@hotmail.es', 'Contado', '15 dÃ­as', 'Inmediato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion_demo`
--

CREATE TABLE `detalle_cotizacion_demo` (
  `id_detalle_cotizacion` int(11) NOT NULL,
  `numero_cotizacion` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_cotizacion_demo`
--

INSERT INTO `detalle_cotizacion_demo` (`id_detalle_cotizacion`, `numero_cotizacion`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(1, 1, 3, 1, 25),
(2, 2, 2, 1, 15),
(3, 3, 1, 1, 10),
(4, 4, 3, 1, 25),
(5, 5, 4, 1, 40),
(6, 6, 4, 1, 40),
(7, 7, 1, 1, 10),
(8, 8, 3, 1, 25),
(9, 9, 4, 1, 40),
(10, 10, 2, 1, 15),
(11, 10, 2, 1, 15),
(12, 10, 4, 21, 40),
(13, 10, 2, 1, 15),
(14, 10, 2, 1, 15),
(15, 10, 2, 1, 15),
(16, 10, 2, 1, 15),
(17, 10, 2, 1, 15),
(18, 10, 2, 1, 15),
(19, 10, 1, 1, 10),
(20, 11, 3, 1, 25),
(21, 12, 3, 1, 25),
(22, 13, 3, 1, 25),
(23, 14, 4, 21, 40),
(24, 15, 1, 1, 10),
(25, 15, 5, 2, 25),
(26, 16, 67, 1, 12),
(27, 16, 67, 1, 12),
(28, 16, 67, 1, 12),
(29, 16, 1, 1, 10),
(30, 17, 1, 1, 10),
(31, 18, 1, 1, 10),
(32, 19, 2, 1, 15),
(33, 20, 3, 1, 25),
(34, 21, 5, 1, 18),
(35, 22, 1, 1, 10),
(36, 23, 1, 2, 10),
(37, 23, 2, 3, 15),
(38, 24, 2, 1, 15),
(39, 25, 2, 1, 15),
(40, 25, 1, 1, 10),
(41, 26, 1, 1, 10),
(42, 27, 1, 1, 10),
(43, 28, 2, 1, 15),
(44, 29, 1, 1, 10),
(45, 29, 1, 1, 10),
(46, 30, 2, 1, 15),
(47, 30, 2, 1, 15),
(48, 31, 1, 1, 10),
(49, 32, 3, 6, 25),
(50, 32, 1, 2, 10),
(51, 32, 4, 8, 40),
(52, 32, 5, 2, 18),
(53, 33, 3, 2, 25),
(54, 33, 2, 4, 15),
(55, 33, 1, 3, 10),
(56, 34, 1, 1, 10),
(57, 34, 1, 1, 10),
(58, 35, 3, 2, 25),
(59, 35, 1, 4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas_demo`
--

CREATE TABLE `marcas_demo` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas_demo`
--

INSERT INTO `marcas_demo` (`id_marca`, `nombre_marca`) VALUES
(1, 'Coca-Cola'),
(2, 'FANTA'),
(3, 'Sprite'),
(4, 'PowerAde'),
(5, 'Fiora Fresa'),
(6, 'Fiora Manzana'),
(29, 'Trapp'),
(30, 'Ducar'),
(31, 'Brahman'),
(32, 'Ngk'),
(33, 'Midwest Can'),
(34, 'Maccolloch'),
(35, 'Nuvo'),
(36, 'Oregon'),
(37, 'Swingfog'),
(38, 'Irwin'),
(39, 'Makita'),
(40, 'Hilti'),
(41, 'JOHN DEERE'),
(42, 'Valdoch'),
(43, 'JAZ'),
(44, 'Stanley'),
(45, 'Pressure wave'),
(46, 'Delta'),
(47, 'Urrea'),
(48, 'Skil'),
(49, 'Surtek'),
(50, 'China'),
(51, 'Foy'),
(52, 'Amana tool'),
(53, 'Norton'),
(54, '3M'),
(55, 'Square'),
(56, 'Vanguard'),
(57, 'Gbs'),
(58, 'Quality'),
(59, 'Miller'),
(60, 'Mundial'),
(61, 'Fini'),
(62, 'Nova'),
(63, 'Somar'),
(64, 'Timberline'),
(65, 'Forte'),
(66, 'Aguila'),
(67, 'Kimberly Clark'),
(68, 'Diamond'),
(69, 'Schulz'),
(70, 'Genteq'),
(71, 'Bellota'),
(72, 'Ultra'),
(73, 'Craftsman'),
(74, 'Asein'),
(75, 'Knova'),
(76, 'Generica'),
(77, 'Sagola'),
(78, 'Arvek'),
(79, 'Yale'),
(80, 'Leeson'),
(81, 'Siemen'),
(82, 'Baldor'),
(83, 'StaRite'),
(84, 'Diablo'),
(88, 'ARO'),
(86, 'Booster'),
(87, 'Dremel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_demo`
--

CREATE TABLE `productos_demo` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(100) NOT NULL,
  `modelo_producto` varchar(30) NOT NULL,
  `id_departamento_producto` int(11) NOT NULL,
  `id_marca_producto` int(11) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `unidad_medida_producto` char(20) NOT NULL,
  `peso_producto` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_demo`
--

INSERT INTO `productos_demo` (`id_producto`, `codigo_producto`, `nombre_producto`, `modelo_producto`, `id_departamento_producto`, `id_marca_producto`, `status_producto`, `unidad_medida_producto`, `peso_producto`, `date_added`, `precio_producto`) VALUES
(1, 'MG01', '4X4 3LT', '', 3, 1, 1, 'Cada una', 'sin peso', '2013-03-25 20:35:15', 10),
(2, 'TCL01', '6X2 2LT', '', 3, 1, 1, '', '', '2013-03-25 20:35:15', 15),
(3, 'ILK059', '5X6 350ml', '', 3, 1, 1, '', '', '2013-03-25 20:35:15', 25),
(4, '4520', '5x6 500ml', 'MS250', 3, 2, 1, '', '', '2013-03-25 20:35:15', 40),
(5, 'A081', '3x6 1lt', '', 3, 2, 1, '', '', '2013-03-25 20:35:15', 18),
(64, 'MSD01', '2GB Tarjeta Micro SD', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 5),
(65, 'AUR01', 'Adaptador usb para radio cd', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 5),
(66, 'SA-205', '2.0 de canal de sonido multimedia sa-205', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 13),
(67, 'KB-1830', 'Teclado multimedia de alta calidad', '', 2, 1, 1, '', '', '2013-03-25 20:35:15', 12),
(4301, '00001', 'fanta 3litros', 'presentacion de 3x3', 0, 0, 0, '12x12', '12kg', '0000-00-00 00:00:00', 10.25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_cotizacion`
--

CREATE TABLE `tmp_cotizacion` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_cotizacion`
--

INSERT INTO `tmp_cotizacion` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(55, 4, 1, 40.00, 'se7uf7ajc6unfc7npv6rgpum21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_demo`
--

CREATE TABLE `user_demo` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_demo`
--

INSERT INTO `user_demo` (`user_id`, `firstname`, `lastname`, `email`, `code`, `status`, `date_added`) VALUES
(1, 'Obed', 'Alvarado', 'joaquinobed@gmail.com', '2555', 1, '2014-04-11 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cotizaciones_demo`
--
ALTER TABLE `cotizaciones_demo`
  ADD PRIMARY KEY (`id_cotizacion`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_cotizacion`);

--
-- Indices de la tabla `detalle_cotizacion_demo`
--
ALTER TABLE `detalle_cotizacion_demo`
  ADD PRIMARY KEY (`id_detalle_cotizacion`),
  ADD KEY `numero_cotizacion` (`numero_cotizacion`,`id_producto`);

--
-- Indices de la tabla `marcas_demo`
--
ALTER TABLE `marcas_demo`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos_demo`
--
ALTER TABLE `productos_demo`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`),
  ADD KEY `id_departamento_producto` (`id_departamento_producto`),
  ADD KEY `id_marca_producto` (`id_marca_producto`);

--
-- Indices de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `user_demo`
--
ALTER TABLE `user_demo`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cotizaciones_demo`
--
ALTER TABLE `cotizaciones_demo`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion_demo`
--
ALTER TABLE `detalle_cotizacion_demo`
  MODIFY `id_detalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `marcas_demo`
--
ALTER TABLE `marcas_demo`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `productos_demo`
--
ALTER TABLE `productos_demo`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4302;

--
-- AUTO_INCREMENT de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `user_demo`
--
ALTER TABLE `user_demo`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
