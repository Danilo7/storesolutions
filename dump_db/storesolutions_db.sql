-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para storesolutions
CREATE DATABASE IF NOT EXISTS `storesolutions` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `storesolutions`;


-- Copiando estrutura para tabela storesolutions.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL,
  `DESCRIPTION` text,
  `PRICE` double NOT NULL,
  `IMAGE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela storesolutions.product: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`ID`, `TITLE`, `DESCRIPTION`, `PRICE`, `IMAGE`) VALUES
	(1, 'Calculadora', 'Calculadora básica', 5000, 'images/calc.png'),
	(2, 'Calculadora', 'Calculadora básica', 5000, 'images/calc.png'),
	(3, 'FluxCaixa', 'Controle de caixa para supermercado', 15000, 'images/fluxcaixa.png'),
	(4, 'EdiTezt', 'Editor de Texto', 3000, 'images/editext.png'),
	(5, 'SQLConnect', 'SGBD', 35000, 'images/sgbd.png'),
	(6, 'NavWeb', 'Navegador', 15000, 'images/navweb.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
