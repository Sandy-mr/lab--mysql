-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.30.22
-- Tiempo de generación: 03-09-2018 a las 04:04:34
-- Versión del servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión de PHP: 7.2.8-1+0~20180725124257.2+stretch~1.gbp571e56

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `JS09_MessagesBy_SandyMulato`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Messages`
--

CREATE TABLE `Messages` (
  `Message_Id` int(11) NOT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Content` text,
  `Created_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Messages`
--

INSERT INTO `Messages` (`Message_Id`, `User_Id`, `Content`, `Created_At`) VALUES
(1, 1, 'How is it going my friend?', '2018-09-02 00:18:12'),
(2, 1, 'Are u there?', '2018-09-02 00:18:13'),
(4, 2, 'I’m here! Really cool. How about you man? Tell me something.', '2018-09-02 00:18:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `User_Id` int(11) NOT NULL,
  `Username` tinytext,
  `Password` char(41) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`User_Id`, `Username`, `Password`) VALUES
(1, 'tapeface', '*241922C6153A203FF153C5661611D9623BB377A4'),
(2, 'butterface', '*CB48C592BACF8FC43AAA2FAE79DEDE64F9DB7504');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`Message_Id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Messages`
--
ALTER TABLE `Messages`
  MODIFY `Message_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `Messages_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `Users` (`User_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
