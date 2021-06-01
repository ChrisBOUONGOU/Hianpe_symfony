-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 01 juin 2021 à 17:10
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blogs`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`) VALUES
(1, 'Titre de l\'article n°1', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32'),
(2, 'Titre de l\'article n°2', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32'),
(3, 'Titre de l\'article n°3', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32'),
(4, 'Titre de l\'article n°4', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32'),
(5, 'Titre de l\'article n°5', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32'),
(6, 'Titre de l\'article n°6', '<p>Contenu</p>', 'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg', '2021-06-01 16:24:32');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210601091645', '2021-06-01 09:20:02', 139),
('DoctrineMigrations\\Version20210601160908', '2021-06-01 16:10:10', 791);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`) VALUES
(8, 'chrisbouk@outlook.fr', '[]', '$2y$13$FABO03VSFSOgtquWJrq1r.eotk3/MA8Xciq5YNJsIDKkRjUU6POXq', 'Chris');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
