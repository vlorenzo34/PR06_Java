-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2016 a las 22:04:15
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `java_webbotiga`
--
CREATE DATABASE IF NOT EXISTS `java_webbotiga` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `java_webbotiga`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admins`
--

CREATE TABLE IF NOT EXISTS `tbl_admins` (
  `id_admin` int(11) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_admins`
--

INSERT INTO `tbl_admins` (`id_admin`, `admin`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE IF NOT EXISTS `tbl_clientes` (
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`nombre`, `apellidos`, `email`, `password`) VALUES
('aaaaaaa', 'aaaaaaaaa', 'aaaaaaa', 'aaaaaaaaaaaa'),
('Alvaro', 'Camacho', 'alvarocmh@email.es', '1234'),
('carlos', 'sanchez', 'carlos@gmail.com', '1234'),
('Daniel', 'Lorenzo', 'daniel@gmail.com', '1234'),
('German', 'NiÃ±o', 'German', '1234'),
('Pipe', 'Maricon', 'Pipe', '1234'),
('prueba1', 'prueba1', 'prueba1', '1234'),
('rfrer', 'dde', 'rfrer', 'cdrdc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

CREATE TABLE IF NOT EXISTS `tbl_factura` (
  `id_factura` int(11) NOT NULL,
  `importe` int(11) NOT NULL,
  `id_lineaFactura` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lineafactura`
--

CREATE TABLE IF NOT EXISTS `tbl_lineafactura` (
  `id_lineaFactura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE IF NOT EXISTS `tbl_productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` varchar(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`id_producto`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'Libro de Java', '20', 'Libro para aprender Java Básico, imprescindible para gente que quiere empezar a programar.'),
(2, 'Libro de PHP', '25', 'Libro de PHP Avanzado, perfecto para mejorar tu nivel de PHP y descubrir nuevas utilidades de el.'),
(3, 'Ordenador', '399â?¬', 'Ordenador Acer de color granate mierda, para "aprender a programar".');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_lineaFactura` (`id_lineaFactura`),
  ADD KEY `email` (`email`),
  ADD KEY `email_2` (`email`),
  ADD KEY `id_lineaFactura_2` (`id_lineaFactura`);

--
-- Indices de la tabla `tbl_lineafactura`
--
ALTER TABLE `tbl_lineafactura`
  ADD PRIMARY KEY (`id_lineaFactura`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_lineafactura`
--
ALTER TABLE `tbl_lineafactura`
  MODIFY `id_lineaFactura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD CONSTRAINT `tbl_factura_ibfk_1` FOREIGN KEY (`email`) REFERENCES `tbl_clientes` (`email`),
  ADD CONSTRAINT `tbl_factura_ibfk_2` FOREIGN KEY (`id_lineaFactura`) REFERENCES `tbl_lineafactura` (`id_lineaFactura`);

--
-- Filtros para la tabla `tbl_lineafactura`
--
ALTER TABLE `tbl_lineafactura`
  ADD CONSTRAINT `tbl_lineafactura_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `tbl_productos` (`id_producto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
