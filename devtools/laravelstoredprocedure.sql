-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table laravelstoredprocedure.marks
CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table laravelstoredprocedure.marks: ~3 rows (approximately)
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` (`id`, `name`) VALUES
	(1, 'Estrella '),
	(2, 'La Dulce'),
	(3, 'Limpia todo');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;

-- Dumping structure for table laravelstoredprocedure.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravelstoredprocedure.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1),
	('2016_04_07_164029_create_mark_table', 1),
	('2016_04_07_164043_create_product_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravelstoredprocedure.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravelstoredprocedure.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravelstoredprocedure.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `marks_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_marks_id_foreign` (`marks_id`),
  CONSTRAINT `products_marks_id_foreign` FOREIGN KEY (`marks_id`) REFERENCES `marks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- Dumping data for table laravelstoredprocedure.products: ~68 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `marks_id`) VALUES
	(2, 'La Limpiador Todo', 36.50, 2),
	(7, 'Leche1', 2.30, 2),
	(14, 'Arroz Bella', 10.50, 1),
	(15, 'Arroz Dulc', 9.80, 1),
	(16, 'Leche Azul', 5.60, 2),
	(17, 'Leche Roja', 6.50, 2),
	(23, 'Harina 53x1', 2.50, 2),
	(24, 'Harina 40x1', 3.50, 2),
	(25, 'Leche Migor', 6.40, 3),
	(26, 'Aceite Primor', 2.50, 1),
	(27, 'Margarina', 3.60, 1),
	(28, 'Chocolates Azules', 2.60, 2),
	(29, 'Leche verdde', 5.60, 1),
	(33, 'Azucar Juli', 5.30, 1),
	(34, 'Azucar', 2.00, 1),
	(54, '222a', 3.00, 1),
	(55, '55aaa', 2.00, 1),
	(57, '67', 21.00, 2),
	(58, '67', 21.00, 2),
	(59, '67', 21.00, 2),
	(60, '765', 2.00, 1),
	(61, '765', 2.00, 1),
	(62, '765', 2.00, 1),
	(63, '765', 2.00, 1),
	(65, 'trtr', 4.00, 1),
	(66, 'trtr', 4.00, 1),
	(67, '5', 22.00, 2),
	(68, '5dd', 22.00, 2),
	(69, '656', 21.00, 2),
	(70, '4343', 34.00, 1),
	(71, '23jj', 23.00, 2),
	(72, '23jj66', 23.00, 2),
	(73, '698', 23.00, 2),
	(74, 'sdsdf', 22.00, 3),
	(75, 'kll', 2.00, 1),
	(76, 'eee', 2.00, 2),
	(77, 'eee55', 2.00, 2),
	(78, '6666', 12.00, 3),
	(79, 'fssfdfsf', 2.00, 2),
	(80, 'fssfdfsfwww', 2.00, 2),
	(81, '656656', 666.00, 1),
	(82, 'dsdsdsdsdsds ', 21.00, 1),
	(83, 'ghffhf', 22.00, 2),
	(84, 'iyt', 0.00, 3),
	(85, '656565', 22.00, 2),
	(86, '656565', 22.00, 2),
	(87, '656565', 22.00, 2),
	(88, 'tyy', 3.00, 1),
	(89, 'tyy', 3.00, 1),
	(90, 'dsdsds', 43.00, 3),
	(91, '6766', 45.00, 2),
	(92, 'gfgfgf', 3.00, 2),
	(93, 'ewe', 333.00, 1),
	(94, 'werwwr', 23.00, 2),
	(95, 'eee', 44.00, 1),
	(96, 'dsdsds', 33.00, 2),
	(97, 'dsdsds4', 33.00, 2),
	(98, '333', 3.00, 2),
	(99, 'dddddd', 23.00, 1),
	(100, 'uuu', 0.00, 2),
	(101, 'dweeee', 21.00, 2),
	(102, 'eeewee', 333.00, 1),
	(103, 'gtrtrt', 22.00, 2),
	(104, 'trtrtrt', 34.00, 2),
	(105, '43434', 4.00, 1),
	(106, 'loggad', 23.00, 1),
	(107, 'dsdd', 323.00, 1),
	(108, 'losss', 33.00, 2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for procedure laravelstoredprocedure.sp_producto
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_producto`(
	IN `cod` INT


)
BEGIN

	select 
		products.id,
        products.name as product,
        price,
        marks.name as mark
	from
		products
	Inner Join
		marks On marks.id = products.marks_id
	where
		marks.id = cod;
        
END//
DELIMITER ;

-- Dumping structure for table laravelstoredprocedure.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table laravelstoredprocedure.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Omar Sharif', 'developers@elcades.com', '$2y$10$PusC8XunUVFDSXh7rNm7.u3yO.cIC0lwfTAJOi96IXLMpxoxVc/Ti', '1w70HKW9IiHZQX9NIWagRyzJ6jltsJ2ElMZ17xkxPlzW75saqgdZ2dt09P1B', '2016-05-16 23:48:59', '2016-06-08 03:30:49'),
	(2, 'operador', 'operador@elcades.com', '$2y$10$MnCQHObiPDu3XEt.KUli2OgaJsT.3T2NZGareybU7RxIJqi15uLA.', NULL, '2016-05-21 04:42:54', '2016-05-21 04:42:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
