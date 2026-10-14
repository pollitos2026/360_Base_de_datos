-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2026 a las 05:31:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_dulces`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'dulce', NULL),
(2, 'salado', NULL),
(3, 'jugos', NULL),
(4, 'sodas', NULL),
(5, 'cerveza', NULL),
(6, 'tequilas', NULL),
(7, 'yogurt', NULL),
(8, 'helados', NULL),
(9, 'leche', NULL),
(10, 'ácidos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `email`, `telefono`, `id_usuario`) VALUES
(1, 'ana', 'torrez', 'ana@gmail.com', '63562230', 4),
(2, 'adalid', 'perez', 'adalid@gmail.com', '60213095', 5),
(3, 'lucia', 'flores', 'luciaflores@gmail.com', '46430212', NULL),
(4, 'carlos', 'hueso', 'huesocarlos@gmail.com', '66442097', NULL),
(5, 'alex', 'leon', 'leon_alex@gmail.com', '70064890', NULL),
(6, 'brayan', 'colque', 'brayancolque@gmail.com', '66650430', NULL),
(7, 'brayan', 'mundocorre', 'mundocorrebrayan@gmail.com', '70364502', NULL),
(8, 'matias', 'martinez', 'matias@hotmail.com', '67985038', NULL),
(9, 'camen', 'balcera', 'balceracarmen@gamil.com', '69655330', NULL),
(10, 'luis', 'flores', 'floresluis@gmial.com', '46450963', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_proveedor`, `id_tienda`, `total`) VALUES
(1, 1, 1, 300.00),
(2, 2, 2, 450.00),
(3, 3, 3, 1000.00),
(4, 4, 4, 2500.00),
(5, 5, 6, 10000.00),
(6, 4, 10, 5000.50),
(7, 8, 6, 200.60),
(8, 6, 7, 6050.50),
(9, 5, 4, 5050.50),
(10, 10, 9, 1200.10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_detalle_compra` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id_detalle_compra`, `id_compra`, `id_producto`, `cantidad`) VALUES
(1, 1, 1, 100),
(2, 2, 2, 5),
(3, 3, 3, 20),
(4, 4, 4, 5),
(5, 5, 5, 10),
(6, 6, 6, 3),
(7, 7, 7, 15),
(8, 8, 11, 50),
(9, 9, 9, 100),
(10, 10, 12, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle_venta`, `id_venta`, `id_producto`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, 5, 1.50),
(2, 2, 2, 3, 3.50),
(3, 3, 3, 10, 10.00),
(4, 4, 4, 2, 10.00),
(5, 5, 5, 1, 2.00),
(6, 6, 6, 7, 1.50),
(7, 7, 7, 6, 2.50),
(8, 8, 8, 10, 3.00),
(9, 9, 9, 5, 4.50),
(10, 10, 10, 8, 10.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `puesto`, `salario`, `id_tienda`) VALUES
(1, 'maria lopez', 'vendedora', 2000.00, 1),
(2, 'carlos ruiz', 'cajero', 3000.00, 1),
(3, 'elena quispe', 'encargada', 3500.00, 1),
(4, 'jorge condori', 'almacen', 5000.00, 1),
(5, 'ismael alaca', 'limpieza', 3000.00, 1),
(6, 'deysi cruz', 'portera', 4000.00, 1),
(7, 'margarita flores', 'gerente', 8000.00, 1),
(8, 'juan valda', 'seguridad', 4000.00, 1),
(9, 'paola mamani', 'secretaria', 5000.00, 1),
(10, 'angelica ortuño', 'cajera', 3000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `id_tienda`, `cantidad`) VALUES
(1, 1, 1, 100),
(2, 2, 2, 200),
(3, 3, 3, 300),
(4, 4, 4, 400),
(5, 8, 5, 500),
(6, 5, 6, 600),
(7, 7, 7, 700),
(8, 9, 8, 800),
(9, 9, 9, 900),
(10, 10, 10, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `id_categoria`, `id_proveedor`) VALUES
(1, 'chupete', 2.00, 1, 1),
(2, 'chocolate', 5.00, 1, 1),
(3, 'masticables', 0.50, 1, 3),
(4, 'papas', 5.00, 2, 10),
(5, 'pipocas', 3.00, 2, 11),
(6, 'come come', 2.50, 1, 9),
(7, 'chisitos', 3.00, 1, 10),
(8, 'cremositas', 10.00, 1, 4),
(9, 'jugos', 0.50, 3, 5),
(10, 'sodas', 1.00, 1, 5),
(11, 'cerveza', 1.50, 5, 8),
(12, 'helados', 2.50, 8, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_promocion`
--

CREATE TABLE `producto_promocion` (
  `id_producto_promocion` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_promocion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_promocion`
--

INSERT INTO `producto_promocion` (`id_producto_promocion`, `id_producto`, `id_promocion`) VALUES
(1, 1, 2),
(2, 2, 9),
(3, 3, 4),
(4, 4, 6),
(5, 5, 10),
(6, 6, 3),
(7, 11, 8),
(8, 12, 7),
(9, 10, 10),
(10, 8, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id_promocion` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descuento` decimal(5,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id_promocion`, `nombre`, `descuento`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'por fin de año', 20.00, '2026-12-01', '2026-12-31'),
(2, '2 x1 chupetes', 0.50, '2026-11-01', '2026-12-01'),
(3, 'dulce navidad', 15.00, '2026-12-01', '2027-01-01'),
(4, 'haloween', 10.00, '2026-11-01', '2026-12-01'),
(5, 'fiestas patrias', 50.00, '2026-05-25', '2026-06-25'),
(6, 'san juan', 5.00, '2026-04-20', '2026-05-01'),
(7, 'dia de la madre', 100.00, '2026-05-01', '2026-05-30'),
(8, 'dia de padre', 100.00, '2026-03-01', '2026-04-01'),
(9, 'dia del niño', 60.00, '2026-04-01', '2026-04-30'),
(10, 'circuito oscar crespo', 80.00, '2026-08-01', '2026-08-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `contacto`, `telefono`, `email`) VALUES
(1, 'distribuidora mas', 'luis gomez', '70123456', 'ventas@mas.com.bo'),
(2, 'nestle bolivia', 'sofia rios', '71234567', 'pedidos@nestle.bo'),
(3, 'confiteria', 'liz mendoza', '64528044', 'confiteria@gmail.com'),
(4, 'mabel', 'diego apaza', '46467116', 'distribuidora@mabel.com.bo'),
(5, 'coca cola', 'jorge luna', '79550024', 'cocacola@gmail.com'),
(6, 'condori', 'ricardo mendoza', '76550068', 'condori@gmail.com.bo'),
(8, 'cerveceria', 'gabriela paz', '46455204', 'cerveceria@gmail.com'),
(9, 'vallesito', 'evelin candi', '79461300', 'vellesito@gmail.com.bo'),
(10, 'sabores', 'marcela paco', '60504030', 'sabores@hotmail.com'),
(11, 'los angeles', 'maria del rosario', '46430258', 'losangeles@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_tienda` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id_tienda`, `nombre`, `direccion`, `telefono`, `ciudad`) VALUES
(1, 'dulces mundo centro', 'bariio japon 6', '46412345', 'sucre'),
(2, 'dulces mundo sur', 'calle junin 456', '67686601', 'sucre'),
(3, 'dulces mundo norte', 'avenida viacha 150', '64558011', 'la paz'),
(4, 'mundo solar', 'avenida ejercito s/n', '46461776', 'oruro'),
(5, 'mabel', 'parque industrial', '46465420', 'santa cruz'),
(6, 'sabor de todo', 'avenida Tarija 55', '78945612', 'tarija'),
(7, 'sabor sin fin', 'calle Tocopilla 650', '75795046', 'potosí'),
(8, 'el buen gusto', 'barrio petrolero 22', '73554422', 'Cochabamba'),
(9, 'infinito', 'avenida de las américas 333', '65682045', 'sucre'),
(10, 'la tiendita', 'barrio judicial 88', '46455368', 'sucre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `email`, `password`, `rol`) VALUES
(1, 'edson', 'seno balcera', 'edsonsenobalcera@gmail.com', '11111111', NULL),
(2, 'alejandro', 'berrios duran', 'alejandroberriosduran@hotmail.com', '2222222222', NULL),
(3, 'maria', 'balcera paco', 'mariabalcerapaco@gmail.com', '3333333333', NULL),
(4, 'patricia', 'gomez velez', 'patriciagomezvelez@hotmail.com', '4444444444', NULL),
(5, 'gimena', 'tellez garnica', 'gimenatellezgarnica@gmail.com', '5555555555', NULL),
(6, 'america', 'baldosa guzman', 'americabaldosaguzman@gmail.com', '6666666666', NULL),
(7, 'mauricio', 'rivera rivero', 'mauricioriverarivero@hotmail.com', '7777777777', NULL),
(8, 'diego', 'alaca paz', 'diegoalacapaz@hotmail.com', '8888888888', NULL),
(9, 'daniel', 'vino villca', 'danielvinovillca@gamil.com', '9999999999', NULL),
(10, 'alberto', 'valda cruz', 'albertovaldacruz@hotmail.com', '1010101010', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `id_tienda`, `total`) VALUES
(1, 1, 1, 10.50),
(2, 2, 2, 8.00),
(3, 3, 3, 0.50),
(4, 4, 4, 60.00),
(5, 5, 5, 30.00),
(6, 6, 6, 70.00),
(7, 7, 7, 50.00),
(8, 8, 8, 1.00),
(9, 9, 9, 100.00),
(10, 10, 10, 2.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_uscoria` (`id_usuario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_tienda` (`id_tienda`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_detalle_compra`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_venta`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_tienda` (`id_tienda`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_tienda` (`id_tienda`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  ADD PRIMARY KEY (`id_producto_promocion`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_promocion` (`id_promocion`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id_promocion`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_tienda`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_tienda` (`id_tienda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  MODIFY `id_producto_promocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id_promocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_tienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  ADD CONSTRAINT `producto_promocion_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `producto_promocion_ibfk_2` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
