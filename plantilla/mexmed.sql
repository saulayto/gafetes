-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2015 a las 01:46:09
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mexmed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estados`
--

CREATE TABLE IF NOT EXISTS `cat_estados` (
`id_estado` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_estados`
--

INSERT INTO `cat_estados` (`id_estado`, `descripcion`) VALUES
(1, 'DISPONIBLE'),
(2, 'RESERVADO'),
(3, 'PRESTADO'),
(4, 'INCOMPLETO'),
(5, 'EN PRÉSTAMO'),
(6, 'EN USO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_equipos`
--

CREATE TABLE IF NOT EXISTS `cat_tipo_equipos` (
`id_tipo_equipos` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_tipo_equipos`
--

INSERT INTO `cat_tipo_equipos` (`id_tipo_equipos`, `descripcion`) VALUES
(1, 'Intramedular tibia'),
(2, 'Intramedular anterógrado fémur'),
(3, 'Intramedular húmero'),
(4, 'Intramedular artrodesis de tobillo y retrógrado'),
(5, 'Intramedular gamma y reconstrucción'),
(6, 'Placa dcp 1/3 de caña (3.5)'),
(7, 'Placa dcp antebrazo (3.5)'),
(8, 'Placa dcp reconstrucción (3.5)'),
(9, 'Placa dcp t bilateral (3.5)'),
(10, 'Placa lcp 1/3 caña (3.5)'),
(11, 'Placa lcp antrebrazo (3.5)'),
(12, 'Placa lcp húmero proximal (3.5)'),
(13, 'Placa lcp húmero distal (3.5)'),
(14, 'Placa lcp codo (3.5)'),
(15, 'Placa lcp clavícula superior (3.5)'),
(16, 'Placa lcp radio distal (3.5)'),
(17, 'Placa lcp tibia distal (3.5)'),
(18, 'Placa dcp ligera o angosta (4.5)'),
(19, 'Placa dcp pesada o ancha (4.5)'),
(20, 'Placa dcp dhs (4.5)'),
(21, 'Placa dcp dcs (4.5)'),
(22, 'Placa lcp ligera o angosta (5.0)'),
(23, 'Placa lcp pesada o ancha (5.0)'),
(24, 'Placa lcp fémur proximal (5.0)'),
(25, 'Placa lcp fémur distal (5.0)'),
(26, 'Placa lcp tibia proximal (5.0)'),
(27, 'Tornillo cortical 3.5 y esponjoso 4.0'),
(28, 'Perno lcp 3.5, esponjoso titanio 4.0 y cortical titanio 3.5'),
(29, 'Tornillo canulado 4.0'),
(30, 'Tornillo cortical 4.5, tornillo esponjoso 6.5 R-16 y tornillo esponjoso R-32'),
(31, 'Perno lcp 5.0'),
(32, 'Tornillo canulado 6.5 R-32'),
(33, 'Hemiprótesis thompson'),
(34, 'Hemiprótesis lazacano'),
(35, 'Endobutton, interferencial titanio y biodegradable'),
(36, 'Prótesis total de cadera'),
(37, 'Anillo de reforzamiento Muller'),
(38, 'Placa lcp cervical anterior (4.0)'),
(39, 'Poly axilales'),
(40, 'Maxilofacial'),
(41, 'Espaciadores interespinosos'),
(42, 'hombro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_log`
--

CREATE TABLE IF NOT EXISTS `cat_tipo_log` (
`id_tipo_log` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_tipo_log`
--

INSERT INTO `cat_tipo_log` (`id_tipo_log`, `descripcion`) VALUES
(1, 'ENTRAR SISTEMA'),
(2, 'INSERTAR EQUIPO'),
(3, 'CONSULTAR EQUIPO'),
(4, 'CONSULTAR SUCURSAL'),
(5, 'MODIFICAR ESTATUS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
`id_equipo` int(11) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `observaciones` varchar(400) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_sucursal_origen` int(11) DEFAULT NULL,
  `id_sucursal_actual` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `codigo`, `descripcion`, `observaciones`, `id_tipo`, `id_estado`, `id_sucursal_origen`, `id_sucursal_actual`) VALUES
(1, 'prueb', NULL, 'Observaciones', 1, 1, 1, 2),
(4, 'prueb', NULL, 'Observaciones', 1, 1, 1, 2),
(5, 'asdsa', NULL, 'asd', 1, 1, 2, 1),
(6, 'kjh', NULL, 'sad', 1, 1, 1, 2),
(7, 'kjhn', NULL, 'kjhk', 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`id_log` int(11) NOT NULL,
  `id_tipo_log` int(11) DEFAULT NULL,
  `detalle` varchar(300) DEFAULT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE IF NOT EXISTS `sucursal` (
`id_sucursal` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `descripcion`) VALUES
(1, 'Morelia'),
(2, 'Querétaro'),
(3, 'Uruapan'),
(4, 'León');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id_usuario` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `tipo` varchar(1) NOT NULL COMMENT 'A= Admin O= Operador'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `usuario`, `password`, `tipo`) VALUES
(1, 'administrador', 'admin', '12345', 'A'),
(2, 'operador', 'operador', '123', 'O');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_estados`
--
ALTER TABLE `cat_estados`
 ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `cat_tipo_equipos`
--
ALTER TABLE `cat_tipo_equipos`
 ADD PRIMARY KEY (`id_tipo_equipos`);

--
-- Indices de la tabla `cat_tipo_log`
--
ALTER TABLE `cat_tipo_log`
 ADD PRIMARY KEY (`id_tipo_log`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
 ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
 ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_estados`
--
ALTER TABLE `cat_estados`
MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cat_tipo_equipos`
--
ALTER TABLE `cat_tipo_equipos`
MODIFY `id_tipo_equipos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `cat_tipo_log`
--
ALTER TABLE `cat_tipo_log`
MODIFY `id_tipo_log` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
