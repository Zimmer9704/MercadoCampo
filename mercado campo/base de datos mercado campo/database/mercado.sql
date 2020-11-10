-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2018 a las 01:48:34
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `khanstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Cargill'),
(2, 'John Deere'),
(3, 'McCormick'),
(4, 'New Holland'),
(5, 'Honda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Maiz', 'maiz1.jpg', 1, 600, 750),
(2, 2, '0', 0, 'Trigo', 'trigo1.jpg', 1, 600, 750),
(3, 1, '0', 4, 'Sorgo', 'sorgo.jpg', 1, 600, 750),
(4, 2, '0', 4, 'Alfalfa', 'alfalfa.jpg', 1, 148, 185),
(6, 17, '0', 5, 'Semilla de Girasol', 'girasol.jpg', 1, 2906, 3700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Granos'),
(2, 'Semillas'),
(3, 'Maquinaria Agricola\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_date` date NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'Maiz ', 600, 'Maiz Amarillo en Grano ', 'maiz1.jpg', 'maiz amarillo grano'),
(2, 2, 1, 'Trigo', 600, 'Trigo en Grano calidad alta', 'trigo1.jpg', 'trigo grano'),
(3, 2, 2, 'Sorgo', 600, 'Semilla de Sorgo para cosecha', 'sorgo.jpg', 'semilla sorgo'),
(4, 1, 1, 'Alfalfa', 148, 'Semilla de Alfalfa ', 'alfalfa.jpg', 'alfalfa semilla'),
(5, 3, 2, 'Parveadora', 10000, 'Cosechadora John Deere S790', 'john.jpg', 'parveadora john deere'),
(6, 3, 3, 'Tractor', 68000, 'D125 Max T/Sincronizada McCormick', 'tractor.jpg', 'tractor mccormick '),
(7, 2, 1, 'Girasol', 296, 'Semilla de Girasol para sus animales', 'girasol.jpg', 'girasol semilla'),
(8, 3, 5, 'Motocultora Honda', 40000, 'F 560 M Honda potentes, con fresa trasera y frenos de ruedas.', 'honda.jpg', 'honda moto'),
(9, 3, 4, 'BOOMER 25 COMPACT', 90000, 'New Holland Tractor', 'holland.jpg', 'new holland tractor '),
(10, 2, 1, 'Alpiste', 2400, 'Alpiste en grano', 'alpiste.jpg', 'alpiste grano ');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` ( `user_id` int(10) NOT NULL, 
  `first_name` varchar(100) NOT NULL, 
  `last_name` varchar(100) NOT NULL, 
  `email` varchar(300) NOT NULL, 
  `password` varchar(300) NOT NULL, 
  `mobile` varchar(10) NOT NULL, 
  `address1` varchar(300) NOT NULL, 
  `address2` varchar(11) NOT NULL ,
  `tipo` varchar(100) COLLATE utf16_spanish2_ci NOT NULL,
  `passadmin` varchar(100) COLLATE utf16_spanish2_ci NOT NULL,
  `roll` int(3) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`, `tipo`, `passadmin`, `roll`) VALUES
(1, 'aleex', 'retana', 'alexretana@gmail.com', '12345', '6063201263', 'Durango', 'Victoria', 'Vendedor', '', 2),
(2, 'Juan', 'Retana', 'Juan.Retana@gmail.com', '1234', '6633215697', 'Victoria', 'Durango', 'Vendedor','', 2),
(3, 'Victoria', 'Munoz', 'nessymv@gmail.com', '1235', '6761003306', 'Durango', 'Victoria', 'Comprador','', 1);


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
