-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.6.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for lol
CREATE DATABASE IF NOT EXISTS `lol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `lol`;

-- Dumping structure for table lol.campeonato
CREATE TABLE IF NOT EXISTS `campeonato` (
  `idCampeonato` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(11) NOT NULL,
  `idEquipeVencedora` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCampeonato`),
  KEY `idEquipeVencedora` (`idEquipeVencedora`),
  CONSTRAINT `campeonato_ibfk_1` FOREIGN KEY (`idEquipeVencedora`) REFERENCES `equipe` (`idEquipe`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.campeonato: ~5 rows (approximately)
INSERT INTO `campeonato` (`idCampeonato`, `ano`, `idEquipeVencedora`) VALUES
	(1, 2020, 1),
	(2, 2021, 6),
	(3, 2022, 2),
	(4, 2023, 8),
	(5, 2024, 5);

-- Dumping structure for table lol.equipe
CREATE TABLE IF NOT EXISTS `equipe` (
  `idEquipe` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`idEquipe`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.equipe: ~12 rows (approximately)
INSERT INTO `equipe` (`idEquipe`, `nome`) VALUES
	(1, 'Gen.G'),
	(2, 'Bilibili Gaming'),
	(3, 'Hanwha Life Esports'),
	(4, 'Top Esports'),
	(5, 'G2 Esports'),
	(6, 'T1'),
	(7, 'Dplus Kia'),
	(8, 'Beijing JDG Intel Esports'),
	(9, 'kt Rolster'),
	(10, 'Suzhou LNG Ninebot Esports'),
	(50, 'Ecompers');

-- Dumping structure for table lol.itens
CREATE TABLE IF NOT EXISTS `itens` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `AP` int(11) DEFAULT 0,
  `penetMagica` int(11) DEFAULT 0,
  `regMana` int(11) DEFAULT 0,
  `vida` int(11) DEFAULT 0,
  `armadura` int(11) DEFAULT 0,
  `resistMagica` int(11) DEFAULT 0,
  `danAtaque` int(11) DEFAULT 0,
  `velocAtaque` float DEFAULT 0,
  `escudoConcedido` int(11) DEFAULT 0,
  `curaConcedida` int(11) DEFAULT 0,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.itens: ~24 rows (approximately)
INSERT INTO `itens` (`idItem`, `nome`, `AP`, `penetMagica`, `regMana`, `vida`, `armadura`, `resistMagica`, `danAtaque`, `velocAtaque`, `escudoConcedido`, `curaConcedida`) VALUES
	(1, 'Infinity Edge', 0, 0, 0, 0, 0, 0, 70, 0, 0, 0),
	(2, 'Immortal Shieldbow', 0, 0, 0, 0, 0, 0, 50, 0.2, 250, 0),
	(3, 'Galeforce', 0, 0, 0, 0, 0, 0, 55, 0.2, 0, 0),
	(4, 'Kraken Slayer', 0, 0, 0, 0, 0, 0, 65, 0.25, 0, 0),
	(5, 'Prowler\'s Claw', 0, 0, 0, 0, 0, 0, 60, 0, 0, 0),
	(6, 'Eclipse', 0, 0, 0, 0, 0, 0, 55, 0, 0, 0),
	(7, 'Axiom Arc', 0, 0, 0, 0, 0, 0, 55, 0, 0, 0),
	(8, 'Duskblade of Draktharr', 0, 0, 0, 0, 0, 0, 60, 0, 0, 0),
	(9, 'Black Cleaver', 0, 0, 0, 300, 0, 0, 50, 0, 0, 0),
	(10, 'Death\'s Dance', 0, 0, 0, 0, 0, 0, 55, 0, 0, 0),
	(11, 'Bloodthirster', 0, 0, 0, 0, 0, 0, 55, 0, 0, 25),
	(12, 'Blade of the Ruined King', 0, 0, 0, 0, 0, 0, 40, 0.25, 0, 0),
	(13, 'Ravenous Hydra', 0, 0, 0, 0, 0, 0, 65, 0, 0, 0),
	(14, 'Titanic Hydra', 0, 0, 0, 500, 0, 0, 30, 0, 0, 0),
	(15, 'Guinsoo\'s Rageblade', 30, 0, 0, 0, 0, 0, 30, 0.25, 0, 0),
	(16, 'Mortal Reminder', 0, 0, 0, 0, 0, 0, 25, 0, 0, 0),
	(17, 'Wit\'s End', 0, 0, 0, 0, 0, 40, 0, 0.4, 0, 0),
	(18, 'Stormrazor', 0, 0, 0, 0, 0, 0, 40, 0.15, 0, 0),
	(19, 'Rapid Firecannon', 0, 0, 0, 0, 0, 0, 0, 0.3, 0, 0),
	(20, 'Phantom Dancer', 0, 0, 0, 0, 0, 0, 0, 0.3, 0, 0),
	(21, 'Luden\'s Tempest', 80, 6, 0, 0, 0, 0, 0, 0, 0, 0),
	(22, 'Liandry\'s Anguish', 80, 6, 0, 0, 0, 0, 0, 0, 0, 0),
	(23, 'Rabadon\'s Deathcap', 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(24, 'Zhonya\'s Hourglass', 65, 0, 0, 0, 45, 0, 0, 0, 0, 0);

-- Dumping structure for table lol.itenspatusuario
CREATE TABLE IF NOT EXISTS `itenspatusuario` (
  `idPartidaUsuario` int(11) NOT NULL,
  `idItem` int(11) NOT NULL,
  PRIMARY KEY (`idPartidaUsuario`,`idItem`),
  KEY `idItem` (`idItem`),
  CONSTRAINT `itenspatusuario_ibfk_1` FOREIGN KEY (`idPartidaUsuario`) REFERENCES `partidausuario` (`idPartidaUsuario`),
  CONSTRAINT `itenspatusuario_ibfk_2` FOREIGN KEY (`idItem`) REFERENCES `itens` (`idItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.itenspatusuario: ~420 rows (approximately)
INSERT INTO `itenspatusuario` (`idPartidaUsuario`, `idItem`) VALUES
	(1, 1),
	(5, 1),
	(9, 1),
	(13, 1),
	(17, 1),
	(24, 1),
	(28, 1),
	(32, 1),
	(36, 1),
	(40, 1),
	(44, 1),
	(48, 1),
	(52, 1),
	(56, 1),
	(60, 1),
	(61, 1),
	(65, 1),
	(69, 1),
	(1, 2),
	(5, 2),
	(9, 2),
	(13, 2),
	(17, 2),
	(24, 2),
	(28, 2),
	(32, 2),
	(36, 2),
	(40, 2),
	(44, 2),
	(48, 2),
	(52, 2),
	(56, 2),
	(60, 2),
	(61, 2),
	(65, 2),
	(69, 2),
	(1, 3),
	(5, 3),
	(9, 3),
	(13, 3),
	(17, 3),
	(24, 3),
	(28, 3),
	(32, 3),
	(36, 3),
	(40, 3),
	(44, 3),
	(48, 3),
	(52, 3),
	(56, 3),
	(60, 3),
	(61, 3),
	(65, 3),
	(69, 3),
	(1, 4),
	(5, 4),
	(9, 4),
	(13, 4),
	(17, 4),
	(24, 4),
	(28, 4),
	(32, 4),
	(36, 4),
	(40, 4),
	(44, 4),
	(48, 4),
	(52, 4),
	(56, 4),
	(60, 4),
	(61, 4),
	(65, 4),
	(69, 4),
	(1, 5),
	(5, 5),
	(9, 5),
	(13, 5),
	(17, 5),
	(24, 5),
	(28, 5),
	(32, 5),
	(36, 5),
	(40, 5),
	(44, 5),
	(48, 5),
	(52, 5),
	(56, 5),
	(60, 5),
	(61, 5),
	(65, 5),
	(69, 5),
	(1, 6),
	(5, 6),
	(9, 6),
	(13, 6),
	(17, 6),
	(24, 6),
	(28, 6),
	(32, 6),
	(36, 6),
	(40, 6),
	(44, 6),
	(48, 6),
	(52, 6),
	(56, 6),
	(60, 6),
	(61, 6),
	(65, 6),
	(69, 6),
	(2, 7),
	(6, 7),
	(10, 7),
	(14, 7),
	(18, 7),
	(21, 7),
	(25, 7),
	(29, 7),
	(33, 7),
	(37, 7),
	(41, 7),
	(45, 7),
	(49, 7),
	(53, 7),
	(57, 7),
	(62, 7),
	(66, 7),
	(70, 7),
	(2, 8),
	(6, 8),
	(10, 8),
	(14, 8),
	(18, 8),
	(21, 8),
	(25, 8),
	(29, 8),
	(33, 8),
	(37, 8),
	(41, 8),
	(45, 8),
	(49, 8),
	(53, 8),
	(57, 8),
	(62, 8),
	(66, 8),
	(70, 8),
	(2, 9),
	(6, 9),
	(10, 9),
	(14, 9),
	(18, 9),
	(21, 9),
	(25, 9),
	(29, 9),
	(33, 9),
	(37, 9),
	(41, 9),
	(45, 9),
	(49, 9),
	(53, 9),
	(57, 9),
	(62, 9),
	(66, 9),
	(70, 9),
	(2, 10),
	(6, 10),
	(10, 10),
	(14, 10),
	(18, 10),
	(21, 10),
	(25, 10),
	(29, 10),
	(33, 10),
	(37, 10),
	(41, 10),
	(45, 10),
	(49, 10),
	(53, 10),
	(57, 10),
	(62, 10),
	(66, 10),
	(70, 10),
	(2, 11),
	(6, 11),
	(10, 11),
	(14, 11),
	(18, 11),
	(21, 11),
	(25, 11),
	(29, 11),
	(33, 11),
	(37, 11),
	(41, 11),
	(45, 11),
	(49, 11),
	(53, 11),
	(57, 11),
	(62, 11),
	(66, 11),
	(70, 11),
	(2, 12),
	(6, 12),
	(10, 12),
	(14, 12),
	(18, 12),
	(21, 12),
	(25, 12),
	(29, 12),
	(33, 12),
	(37, 12),
	(41, 12),
	(45, 12),
	(49, 12),
	(53, 12),
	(57, 12),
	(62, 12),
	(66, 12),
	(70, 12),
	(3, 13),
	(7, 13),
	(11, 13),
	(15, 13),
	(19, 13),
	(22, 13),
	(26, 13),
	(30, 13),
	(34, 13),
	(38, 13),
	(42, 13),
	(46, 13),
	(50, 13),
	(54, 13),
	(58, 13),
	(63, 13),
	(67, 13),
	(3, 14),
	(7, 14),
	(11, 14),
	(15, 14),
	(19, 14),
	(22, 14),
	(26, 14),
	(30, 14),
	(34, 14),
	(38, 14),
	(42, 14),
	(46, 14),
	(50, 14),
	(54, 14),
	(58, 14),
	(63, 14),
	(67, 14),
	(3, 15),
	(7, 15),
	(11, 15),
	(15, 15),
	(19, 15),
	(22, 15),
	(26, 15),
	(30, 15),
	(34, 15),
	(38, 15),
	(42, 15),
	(46, 15),
	(50, 15),
	(54, 15),
	(58, 15),
	(63, 15),
	(67, 15),
	(3, 16),
	(7, 16),
	(11, 16),
	(15, 16),
	(19, 16),
	(22, 16),
	(26, 16),
	(30, 16),
	(34, 16),
	(38, 16),
	(42, 16),
	(46, 16),
	(50, 16),
	(54, 16),
	(58, 16),
	(63, 16),
	(67, 16),
	(3, 17),
	(7, 17),
	(11, 17),
	(15, 17),
	(19, 17),
	(22, 17),
	(26, 17),
	(30, 17),
	(34, 17),
	(38, 17),
	(42, 17),
	(46, 17),
	(50, 17),
	(54, 17),
	(58, 17),
	(63, 17),
	(67, 17),
	(3, 18),
	(7, 18),
	(11, 18),
	(15, 18),
	(19, 18),
	(22, 18),
	(26, 18),
	(30, 18),
	(34, 18),
	(38, 18),
	(42, 18),
	(46, 18),
	(50, 18),
	(54, 18),
	(58, 18),
	(63, 18),
	(67, 18),
	(4, 19),
	(8, 19),
	(12, 19),
	(16, 19),
	(20, 19),
	(23, 19),
	(27, 19),
	(31, 19),
	(35, 19),
	(39, 19),
	(43, 19),
	(47, 19),
	(51, 19),
	(55, 19),
	(59, 19),
	(64, 19),
	(68, 19),
	(4, 20),
	(8, 20),
	(12, 20),
	(16, 20),
	(20, 20),
	(23, 20),
	(27, 20),
	(31, 20),
	(35, 20),
	(39, 20),
	(43, 20),
	(47, 20),
	(51, 20),
	(55, 20),
	(59, 20),
	(64, 20),
	(68, 20),
	(4, 21),
	(8, 21),
	(12, 21),
	(16, 21),
	(20, 21),
	(23, 21),
	(27, 21),
	(31, 21),
	(35, 21),
	(39, 21),
	(43, 21),
	(47, 21),
	(51, 21),
	(55, 21),
	(59, 21),
	(64, 21),
	(68, 21),
	(4, 22),
	(8, 22),
	(12, 22),
	(16, 22),
	(20, 22),
	(23, 22),
	(27, 22),
	(31, 22),
	(35, 22),
	(39, 22),
	(43, 22),
	(47, 22),
	(51, 22),
	(55, 22),
	(59, 22),
	(64, 22),
	(68, 22),
	(4, 23),
	(8, 23),
	(12, 23),
	(16, 23),
	(20, 23),
	(23, 23),
	(27, 23),
	(31, 23),
	(35, 23),
	(39, 23),
	(43, 23),
	(47, 23),
	(51, 23),
	(55, 23),
	(59, 23),
	(64, 23),
	(68, 23),
	(4, 24),
	(8, 24),
	(12, 24),
	(16, 24),
	(20, 24),
	(23, 24),
	(27, 24),
	(31, 24),
	(35, 24),
	(39, 24),
	(43, 24),
	(47, 24),
	(51, 24),
	(55, 24),
	(59, 24),
	(64, 24),
	(68, 24);

-- Dumping structure for table lol.partida
CREATE TABLE IF NOT EXISTS `partida` (
  `idPartida` int(11) NOT NULL AUTO_INCREMENT,
  `placar` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `etapa` varchar(50) NOT NULL,
  `idEquipeAzul` int(11) NOT NULL,
  `idEquipeVermelha` int(11) NOT NULL,
  `idCampeonato` int(11) NOT NULL,
  `duracao` time NOT NULL,
  PRIMARY KEY (`idPartida`),
  KEY `idEquipeAzul` (`idEquipeAzul`),
  KEY `idEquipeVermelha` (`idEquipeVermelha`),
  KEY `idCampeonato` (`idCampeonato`),
  CONSTRAINT `partida_ibfk_1` FOREIGN KEY (`idEquipeAzul`) REFERENCES `equipe` (`idEquipe`),
  CONSTRAINT `partida_ibfk_2` FOREIGN KEY (`idEquipeVermelha`) REFERENCES `equipe` (`idEquipe`),
  CONSTRAINT `partida_ibfk_3` FOREIGN KEY (`idCampeonato`) REFERENCES `campeonato` (`idCampeonato`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.partida: ~32 rows (approximately)
INSERT INTO `partida` (`idPartida`, `placar`, `data`, `hora`, `etapa`, `idEquipeAzul`, `idEquipeVermelha`, `idCampeonato`, `duracao`) VALUES
	(1, '2-1', '2020-11-01', '18:00:00', 'Quartas de Final', 1, 2, 1, '00:30:12'),
	(2, '3-0', '2020-11-02', '19:00:00', 'Quartas de Final', 3, 4, 1, '00:32:45'),
	(3, '2-3', '2020-11-03', '20:00:00', 'Quartas de Final', 5, 6, 1, '00:35:08'),
	(4, '1-2', '2020-11-04', '21:00:00', 'Quartas de Final', 7, 8, 1, '00:37:21'),
	(5, '3-2', '2020-11-07', '18:00:00', 'Semifinal', 1, 3, 1, '00:40:05'),
	(6, '0-3', '2020-11-08', '19:00:00', 'Semifinal', 6, 8, 1, '00:42:13'),
	(7, '3-1', '2020-11-14', '20:00:00', 'Final', 1, 8, 1, '00:44:59'),
	(8, '3-1', '2021-11-01', '18:00:00', 'Quartas de Final', 1, 2, 2, '00:46:35'),
	(9, '2-3', '2021-11-02', '19:00:00', 'Quartas de Final', 3, 4, 2, '00:50:12'),
	(10, '3-0', '2021-11-03', '20:00:00', 'Quartas de Final', 5, 6, 2, '00:52:18'),
	(11, '1-2', '2021-11-04', '21:00:00', 'Quartas de Final', 7, 8, 2, '00:54:09'),
	(12, '3-2', '2021-11-07', '18:00:00', 'Semifinal', 1, 4, 2, '00:31:45'),
	(13, '2-3', '2021-11-08', '19:00:00', 'Semifinal', 6, 8, 2, '00:33:20'),
	(14, '3-1', '2021-11-14', '20:00:00', 'Final', 4, 6, 2, '00:36:41'),
	(15, '2-0', '2022-11-01', '18:00:00', 'Quartas de Final', 2, 3, 3, '00:38:05'),
	(16, '3-1', '2022-11-02', '19:00:00', 'Quartas de Final', 4, 5, 3, '00:41:30'),
	(17, '1-3', '2022-11-03', '20:00:00', 'Quartas de Final', 6, 7, 3, '00:43:22'),
	(18, '2-3', '2022-11-04', '21:00:00', 'Quartas de Final', 8, 9, 3, '00:45:44'),
	(19, '3-1', '2022-11-07', '18:00:00', 'Semifinal', 2, 4, 3, '00:47:15'),
	(20, '3-2', '2022-11-08', '19:00:00', 'Semifinal', 7, 8, 3, '00:49:50'),
	(21, '3-0', '2022-11-14', '20:00:00', 'Final', 2, 7, 3, '00:51:11'),
	(22, '2-0', '2023-11-01', '18:00:00', 'Quartas de Final', 1, 5, 3, '00:53:00'),
	(23, '3-2', '2023-11-02', '19:00:00', 'Quartas de Final', 2, 6, 3, '00:55:35'),
	(24, '1-3', '2023-11-03', '20:00:00', 'Quartas de Final', 3, 7, 3, '00:34:12'),
	(25, '2-3', '2023-11-04', '21:00:00', 'Quartas de Final', 4, 8, 3, '00:36:40'),
	(26, '1-3', '2023-11-07', '18:00:00', 'Semifinal', 1, 2, 3, '00:39:18'),
	(27, '0-3', '2023-11-08', '19:00:00', 'Semifinal', 7, 8, 3, '00:42:00'),
	(28, '2-3', '2023-11-14', '20:00:00', 'Final', 2, 8, 3, '00:44:30'),
	(29, '2-1', '2024-11-01', '18:00:00', 'Quartas de Final', 1, 2, 5, '00:46:55'),
	(30, '1-3', '2024-11-02', '19:00:00', 'Quartas de Final', 3, 5, 5, '00:50:25'),
	(31, '3-2', '2024-11-03', '20:00:00', 'Quartas de Final', 6, 7, 5, '00:52:40'),
	(32, '0-3', '2024-11-04', '21:00:00', 'Quartas de Final', 8, 10, 5, '00:54:15'),
	(33, '3-0', '2024-11-07', '18:00:00', 'Semifinal', 1, 5, 5, '00:30:35'),
	(34, '2-3', '2024-11-08', '19:00:00', 'Semifinal', 6, 10, 5, '00:33:25'),
	(35, '3-1', '2024-11-14', '20:00:00', 'Final', 5, 10, 5, '00:40:55');

-- Dumping structure for table lol.partidausuario
CREATE TABLE IF NOT EXISTS `partidausuario` (
  `idPartidaUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idPartida` int(11) NOT NULL,
  `kills` int(11) DEFAULT 0,
  `deaths` int(11) DEFAULT 0,
  `assists` int(11) DEFAULT 0,
  `idCampeao` int(11) NOT NULL,
  `nomeCampeao` varchar(255) NOT NULL,
  `classeCampeao` varchar(255) NOT NULL,
  `ouroAdquirido` int(11) DEFAULT 0,
  `FARM` int(11) DEFAULT 0,
  PRIMARY KEY (`idPartidaUsuario`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idPartida` (`idPartida`),
  CONSTRAINT `partidausuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `partidausuario_ibfk_2` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idPartida`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.partidausuario: ~70 rows (approximately)
INSERT INTO `partidausuario` (`idPartidaUsuario`, `idUsuario`, `idPartida`, `kills`, `deaths`, `assists`, `idCampeao`, `nomeCampeao`, `classeCampeao`, `ouroAdquirido`, `FARM`) VALUES
	(1, 1, 1, 5, 3, 8, 101, 'Azir', 'Mage', 8792, 256),
	(2, 2, 1, 2, 4, 12, 67, 'Vayne', 'Marksman', 9392, 227),
	(3, 3, 1, 8, 2, 6, 266, 'Aatrox', 'Fighter', 9361, 231),
	(4, 4, 1, 1, 5, 15, 412, 'Thresh', 'Support', 12190, 291),
	(5, 5, 1, 3, 3, 10, 76, 'Nidalee', 'Assassin', 8744, 288),
	(6, 6, 1, 4, 6, 5, 39, 'Irelia', 'Fighter', 8963, 206),
	(7, 7, 1, 2, 7, 9, 18, 'Tristana', 'Marksman', 9993, 234),
	(8, 8, 1, 6, 4, 3, 157, 'Yasuo', 'Fighter', 11850, 254),
	(9, 9, 1, 0, 8, 12, 350, 'Yuumi', 'Support', 10884, 228),
	(10, 10, 1, 5, 5, 7, 64, 'Gragas', 'Mage', 9511, 262),
	(11, 11, 2, 7, 1, 10, 55, 'Kassadin', 'Mage', 12808, 255),
	(12, 12, 2, 5, 2, 8, 523, 'Aphelios', 'Marksman', 8733, 204),
	(13, 13, 2, 4, 0, 12, 120, 'Hecarim', 'Fighter', 12053, 263),
	(14, 14, 2, 0, 1, 20, 350, 'Yuumi', 'Support', 11224, 265),
	(15, 15, 2, 6, 3, 5, 10, 'Kayle', 'Fighter', 11223, 260),
	(16, 16, 2, 2, 5, 3, 777, 'Yone', 'Fighter', 10707, 268),
	(17, 17, 2, 0, 6, 2, 18, 'Tristana', 'Marksman', 12035, 261),
	(18, 18, 2, 1, 7, 1, 80, 'Pantheon', 'Support', 8089, 231),
	(19, 19, 2, 0, 8, 4, 432, 'Amumu', 'Tank', 11331, 201),
	(20, 20, 2, 3, 6, 6, 30, 'Ryze', 'Mage', 8238, 289),
	(21, 21, 3, 6, 4, 9, 164, 'Camille', 'Fighter', 8582, 245),
	(22, 22, 3, 4, 6, 10, 203, 'Kindred', 'Marksman', 9724, 224),
	(23, 23, 3, 3, 7, 12, 105, 'Twisted Fate', 'Mage', 8970, 244),
	(24, 24, 3, 1, 9, 20, 111, 'Nautilus', 'Tank', 8968, 292),
	(25, 25, 3, 7, 3, 5, 145, 'Kai\'Sa', 'Marksman', 10426, 243),
	(26, 26, 3, 8, 2, 6, 24, 'Jax', 'Fighter', 12201, 241),
	(27, 27, 3, 5, 4, 8, 141, 'Kayn', 'Fighter', 12430, 202),
	(28, 28, 3, 7, 3, 7, 134, 'Orianna', 'Mage', 9198, 200),
	(29, 29, 3, 0, 5, 21, 497, 'Rakan', 'Support', 10344, 290),
	(30, 30, 3, 6, 2, 12, 119, 'Draven', 'Marksman', 11968, 227),
	(31, 31, 4, 4, 5, 6, 86, 'Garen', 'Tank', 8033, 275),
	(32, 32, 4, 2, 6, 8, 56, 'Nocturne', 'Assassin', 11828, 256),
	(33, 33, 4, 3, 3, 12, 45, 'Veigar', 'Mage', 8230, 249),
	(34, 34, 4, 1, 7, 15, 32, 'Alistar', 'Support', 11675, 252),
	(35, 35, 4, 5, 4, 7, 81, 'Ezreal', 'Marksman', 9359, 292),
	(36, 36, 4, 6, 3, 8, 75, 'Renekton', 'Fighter', 10530, 240),
	(37, 37, 4, 5, 2, 9, 28, 'Shyvana', 'Fighter', 12224, 236),
	(38, 38, 4, 8, 1, 7, 157, 'Yasuo', 'Fighter', 12620, 225),
	(39, 39, 4, 0, 4, 20, 117, 'Janna', 'Support', 8211, 224),
	(40, 40, 4, 7, 2, 12, 222, 'Jinx', 'Marksman', 9503, 253),
	(41, 1, 5, 9, 4, 12, 164, 'Camille', 'Fighter', 10847, 232),
	(42, 2, 5, 6, 5, 10, 203, 'Kindred', 'Marksman', 11027, 207),
	(43, 3, 5, 7, 3, 11, 238, 'Zed', 'Assassin', 9180, 245),
	(44, 4, 5, 0, 7, 20, 117, 'Janna', 'Support', 10061, 234),
	(45, 5, 5, 10, 2, 9, 51, 'Klad', 'Fighter', 8271, 267),
	(46, 11, 5, 8, 6, 8, 41, 'Twisted Fate', 'Mage', 9502, 244),
	(47, 12, 5, 7, 4, 6, 81, 'Ezreal', 'Marksman', 11414, 223),
	(48, 13, 5, 5, 6, 10, 120, 'Hecarim', 'Fighter', 10442, 265),
	(49, 14, 5, 1, 9, 16, 267, 'Nami', 'Support', 12154, 201),
	(50, 15, 5, 6, 3, 12, 84, 'Annie', 'Mage', 11390, 288),
	(51, 26, 6, 2, 8, 4, 266, 'Aatrox', 'Fighter', 10835, 239),
	(52, 27, 6, 1, 7, 5, 203, 'Kindred', 'Marksman', 11305, 206),
	(53, 28, 6, 3, 6, 8, 84, 'Annie', 'Mage', 12217, 204),
	(54, 29, 6, 0, 9, 12, 497, 'Rakan', 'Support', 11043, 284),
	(55, 30, 6, 4, 5, 7, 145, 'Kai\'Sa', 'Marksman', 9156, 238),
	(56, 36, 6, 10, 1, 6, 75, 'Renekton', 'Fighter', 12955, 257),
	(57, 37, 6, 7, 2, 9, 35, 'Sejuani', 'Tank', 12971, 203),
	(58, 38, 6, 8, 3, 5, 157, 'Yasuo', 'Fighter', 10866, 244),
	(59, 39, 6, 1, 4, 20, 40, 'Soraka', 'Support', 8097, 221),
	(60, 40, 6, 9, 2, 12, 222, 'Jinx', 'Marksman', 11492, 258),
	(61, 1, 7, 10, 3, 8, 164, 'Camille', 'Fighter', 11330, 258),
	(62, 2, 7, 7, 5, 12, 121, 'Zoe', 'Mage', 10568, 236),
	(63, 3, 7, 8, 4, 9, 131, 'Ryze', 'Mage', 8751, 232),
	(64, 4, 7, 2, 6, 15, 412, 'Thresh', 'Support', 12364, 278),
	(65, 5, 7, 11, 2, 10, 145, 'Kai\'Sa', 'Marksman', 10429, 247),
	(66, 36, 7, 6, 4, 7, 75, 'Renekton', 'Fighter', 8465, 296),
	(67, 37, 7, 4, 6, 8, 28, 'Shyvana', 'Fighter', 10654, 293),
	(68, 38, 7, 7, 3, 6, 157, 'Yasuo', 'Fighter', 12757, 266),
	(69, 39, 7, 0, 7, 18, 40, 'Soraka', 'Support', 10162, 291),
	(70, 40, 7, 9, 4, 10, 222, 'Jinx', 'Marksman', 12209, 271);

-- Dumping structure for table lol.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `ranque` varchar(50) NOT NULL,
  `posicao` varchar(50) NOT NULL,
  `idEquipe` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idEquipe` (`idEquipe`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idEquipe`) REFERENCES `equipe` (`idEquipe`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table lol.usuario: ~53 rows (approximately)
INSERT INTO `usuario` (`idUsuario`, `nome`, `ranque`, `posicao`, `idEquipe`) VALUES
	(1, 'Kim Ki-in', 'Challenger', 'Top', 1),
	(2, 'Kim Geon-bu', 'Challenger', 'Jungle', 1),
	(3, 'Jeong Ji-hoon', 'Challenger', 'Mid', 1),
	(4, 'Park Jae-hyuk', 'Challenger', 'ADC', 1),
	(5, 'Joo Min-kyu', 'Challenger', 'Support', 1),
	(6, 'Chen Zebin', 'Challenger', 'Top', 2),
	(7, 'Peng Lixun', 'Challenger', 'Jungle', 2),
	(8, 'Zhuo Ding', 'Challenger', 'Mid', 2),
	(9, 'Zhao Jiahao', 'Challenger', 'ADC', 2),
	(10, 'Luo Wenjun', 'Challenger', 'Support', 2),
	(11, 'Choi Woo-je', 'Challenger', 'Top', 3),
	(12, 'Han Wang-ho', 'Challenger', 'Jungle', 3),
	(13, 'Kim Geon-woo', 'Challenger', 'Mid', 3),
	(14, 'Park Do-hyeon', 'Challenger', 'ADC', 3),
	(15, 'Yoo Hwan-joong', 'Challenger', 'Support', 3),
	(16, 'Bai Jiahao', 'Challenger', 'Top', 4),
	(17, 'Gao Tianliang', 'Challenger', 'Jungle', 4),
	(18, 'Su Hanwei', 'Challenger', 'Mid', 4),
	(19, 'Yu Wenbo', 'Challenger', 'ADC', 4),
	(20, 'Tian Ye', 'Challenger', 'Support', 4),
	(21, 'Sergen Çelik', 'Challenger', 'Top', 5),
	(22, 'Rudy Semaan', 'Challenger', 'Jungle', 5),
	(23, 'Rasmus Winther', 'Challenger', 'Mid', 5),
	(24, 'Steven Liv', 'Challenger', 'ADC', 5),
	(25, 'Labros Papoutsakis', 'Challenger', 'Support', 5),
	(26, 'Choi Hyeon-joon', 'Challenger', 'Top', 6),
	(27, 'Moon Hyeon-jun', 'Challenger', 'Jungle', 6),
	(28, 'Lee Sang-hyeok', 'Challenger', 'Mid', 6),
	(29, 'Lee Min-hyeong', 'Challenger', 'ADC', 6),
	(30, 'Ryu Min-seok', 'Challenger', 'Support', 6),
	(31, 'Jeon Si-woo', 'Challenger', 'Top', 7),
	(32, 'Choi Yong-hyeok', 'Challenger', 'Jungle', 7),
	(33, 'Heo Su', 'Challenger', 'Mid', 7),
	(34, 'Kim Ha-ram', 'Challenger', 'ADC', 7),
	(35, 'Cho Geon-hee', 'Challenger', 'Support', 7),
	(36, 'Hu Jiale', 'Challenger', 'Top', 8),
	(37, 'Seo Jin-hyeok', 'Challenger', 'Jungle', 8),
	(38, 'Zeng Qi', 'Challenger', 'Mid', 8),
	(39, 'Park Jae-hyuk', 'Challenger', 'ADC', 8),
	(40, 'Lou Yunfeng', 'Challenger', 'Support', 8),
	(41, 'Kim Gi-in', 'Challenger', 'Top', 9),
	(42, 'Mun U-chan', 'Challenger', 'Jungle', 9),
	(43, 'Gwak Bo-seong', 'Challenger', 'Mid', 9),
	(44, 'Kim Ha-ram', 'Challenger', 'ADC', 9),
	(45, 'Son Si-woo', 'Challenger', 'Support', 9),
	(46, 'Hu Zhiwei', 'Challenger', 'Top', 10),
	(47, 'Wei Lian', 'Challenger', 'Jungle', 10),
	(48, 'Lee Ye-chan', 'Challenger', 'Mid', 10),
	(49, 'Chen Wei', 'Challenger', 'ADC', 10),
	(50, 'Luo Siyuan', 'Challenger', 'Support', 10),
	(101, 'Teste', 'Ranque', 'Top', 50),
	(102, 'XUAOOOOO', 'bronze', 'Top', 50),
	(103, 'Novo Jogador', 'Platina', 'Meio', 50);

-- Dumping structure for view lol.vw_campeoes
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_campeoes` (
	`idCampeao` INT(11) NOT NULL,
	`nomeCampeao` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`classeCampeao` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`vezesSelecionado` BIGINT(21) NOT NULL,
	`totalKills` DECIMAL(32,0) NULL,
	`totalDeaths` DECIMAL(32,0) NULL,
	`totalAssists` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view lol.vw_partida
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_partida` (
	`idUsuario` INT(11) NOT NULL,
	`idEquipe` INT(11) NOT NULL,
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`ranque` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`posicao` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`idPartida` INT(11) NOT NULL,
	`kills` INT(11) NULL,
	`deaths` INT(11) NULL,
	`assists` INT(11) NULL,
	`idCampeao` INT(11) NOT NULL,
	`nomeCampeao` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`classeCampeao` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`ouroAdquirido` INT(11) NULL,
	`farm` INT(11) NULL,
	`item1id` BIGINT(11) NULL,
	`item1nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`item2id` BIGINT(11) NULL,
	`item2nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`item3id` BIGINT(11) NULL,
	`item3nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`item4id` BIGINT(11) NULL,
	`item4nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`item5id` BIGINT(11) NULL,
	`item5nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci',
	`item6id` BIGINT(11) NULL,
	`item6nome` VARCHAR(1) NULL COLLATE 'utf8mb4_uca1400_ai_ci'
) ENGINE=MyISAM;

-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_campeoes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_campeoes` AS SELECT 
    pu.idCampeao,
    pu.nomeCampeao,
    pu.classeCampeao,
    COUNT(pu.idPartidaUsuario) AS vezesSelecionado,
    COALESCE(SUM(pu.kills), 0) AS totalKills,
    COALESCE(SUM(pu.deaths), 0) AS totalDeaths,
    COALESCE(SUM(pu.assists), 0) AS totalAssists
FROM partidaUsuario pu
GROUP BY pu.idCampeao, pu.nomeCampeao, pu.classeCampeao ;

-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_partida`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_partida` AS SELECT 
    u.idUsuario,
    u.idEquipe,
    u.nome,
    u.ranque,
    u.posicao,
    up.idPartida,
    up.kills,
    up.deaths,
    up.assists,
    up.idCampeao,
    up.nomeCampeao,
    up.classeCampeao,
    up.ouroAdquirido,
    up.farm,
    -- Itens dos jogadores
    MAX(CASE WHEN ipu.rank = 1 THEN i.idItem END) AS item1id,
    MAX(CASE WHEN ipu.rank = 1 THEN i.nome END) AS item1nome,
    MAX(CASE WHEN ipu.rank = 2 THEN i.idItem END) AS item2id,
    MAX(CASE WHEN ipu.rank = 2 THEN i.nome END) AS item2nome,
    MAX(CASE WHEN ipu.rank = 3 THEN i.idItem END) AS item3id,
    MAX(CASE WHEN ipu.rank = 3 THEN i.nome END) AS item3nome,
    MAX(CASE WHEN ipu.rank = 4 THEN i.idItem END) AS item4id,
    MAX(CASE WHEN ipu.rank = 4 THEN i.nome END) AS item4nome,
    MAX(CASE WHEN ipu.rank = 5 THEN i.idItem END) AS item5id,
    MAX(CASE WHEN ipu.rank = 5 THEN i.nome END) AS item5nome,
    MAX(CASE WHEN ipu.rank = 6 THEN i.idItem END) AS item6id,
    MAX(CASE WHEN ipu.rank = 6 THEN i.nome END) AS item6nome
FROM 
    usuario u
JOIN 
    partidausuario up ON u.idUsuario = up.idUsuario
LEFT JOIN (
    SELECT 
        ipu.idPartidaUsuario, 
        ipu.idItem, 
        ROW_NUMBER() OVER (PARTITION BY ipu.idPartidaUsuario ORDER BY ipu.idItem) AS rank
    FROM 
        itensPatUsuario ipu
) ipu ON ipu.idPartidaUsuario = up.idPartidaUsuario
LEFT JOIN 
    itens i ON ipu.idItem = i.idItem
GROUP BY 
    u.idUsuario, u.idEquipe, u.nome, up.idPartida, up.kills, up.deaths, up.assists,
    up.idCampeao, up.nomeCampeao, up.classeCampeao, up.ouroAdquirido, up.farm ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
