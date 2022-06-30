-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.cumtomers
DROP TABLE IF EXISTS `cumtomers`;
CREATE TABLE IF NOT EXISTS `cumtomers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name_customers` varchar(50) NOT NULL,
  `customers_premium` bit(1) NOT NULL DEFAULT b'1',
  `phone_customers` varchar(10) NOT NULL DEFAULT '3003003232',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla contiene todo sobre los clientes';

-- Volcando datos para la tabla tienda_deportiva_el_podio.cumtomers: ~3 rows (aproximadamente)
DELETE FROM `cumtomers`;
INSERT INTO `cumtomers` (`id`, `name_customers`, `customers_premium`, `phone_customers`) VALUES
	(1, 'ivan dario', b'1', '3003215690'),
	(2, 'chara', b'0', '3003003223'),
	(3, 'ferney', b'1', '3003003236');

-- Volcando estructura para tabla tienda_deportiva_el_podio.paymet_method
DROP TABLE IF EXISTS `paymet_method`;
CREATE TABLE IF NOT EXISTS `paymet_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.paymet_method: ~3 rows (aproximadamente)
DELETE FROM `paymet_method`;
INSERT INTO `paymet_method` (`id`, `method`) VALUES
	(1, 'cash'),
	(2, 'tdc_amex'),
	(3, 'check');

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(50) NOT NULL,
  `measure_product` varchar(50) NOT NULL,
  `product_import` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla muestra todo sobre los productos';

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name_product`, `measure_product`, `product_import`) VALUES
	(1, 'ball', '30cm', b'1'),
	(2, 'rackets', '15cm', b'0'),
	(3, 't-shirt', 's-xl', b'1');

-- Volcando estructura para tabla tienda_deportiva_el_podio.selling
DROP TABLE IF EXISTS `selling`;
CREATE TABLE IF NOT EXISTS `selling` (
  ` id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_value` float NOT NULL,
  `nro_sale` float NOT NULL,
  `date` date NOT NULL,
  `id_customers` smallint(6) NOT NULL,
  `id_product` smallint(6) NOT NULL,
  `id_paymet_method` smallint(6) NOT NULL,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla esta todo sobre las ventas';

-- Volcando datos para la tabla tienda_deportiva_el_podio.selling: ~3 rows (aproximadamente)
DELETE FROM `selling`;
INSERT INTO `selling` (` id`, `sale_value`, `nro_sale`, `date`, `id_customers`, `id_product`, `id_paymet_method`) VALUES
	(1, 20000, 1, '2020-12-05', 1, 1, 1),
	(2, 400000, 2, '2019-06-14', 2, 2, 2),
	(3, 500000, 3, '2022-06-14', 3, 3, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
