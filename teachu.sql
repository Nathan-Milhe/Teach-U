-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 22 mars 2018 à 17:44
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `teachu`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `courprof`
--

DROP TABLE IF EXISTS `courprof`;
CREATE TABLE IF NOT EXISTS `courprof` (
  `idProf` int(10) NOT NULL AUTO_INCREMENT,
  `commentProf` varchar(150) DEFAULT NULL,
  `dateProf` date DEFAULT NULL,
  `emailProf` varchar(50) DEFAULT NULL,
  `heureProf` varchar(8) DEFAULT NULL,
  `lieuProf` varchar(50) DEFAULT NULL,
  `matiereProf` varchar(50) DEFAULT NULL,
  `nomProf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idProf`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `courprof`
--

INSERT INTO `courprof` (`idProf`, `commentProf`, `dateProf`, `emailProf`, `heureProf`, `lieuProf`, `matiereProf`, `nomProf`) VALUES
(1, NULL, '2018-03-27', 'nathan.milhe@epsi.fr', '10:00', 'Lyon', 'C#', 'Prince'),
(2, NULL, '2018-04-18', 'trouli@outlook.fr', '11:00', 'Bordeaux', 'Java', 'Jean-Michel'),
(3, NULL, '2018-06-14', 'princeM@epsi.fr', '14:00', 'Nantes', 'HTML/CSS', 'Tristan'),
(4, NULL, '2018-06-15', 'testeur@gmail.fr', '16:00', 'Strasbourg', 'Mathématiques', 'Lionel');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emailEtud` varchar(50) DEFAULT NULL,
  `lieuEtud` varchar(50) DEFAULT NULL,
  `matiereEtud` varchar(50) DEFAULT NULL,
  `commentEtud` varchar(150) DEFAULT NULL,
  `dateEtud` varchar(10) DEFAULT NULL,
  `heureEtud` varchar(8) DEFAULT NULL,
  `nomEtudiant` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `emailEtud`, `lieuEtud`, `matiereEtud`, `commentEtud`, `dateEtud`, `heureEtud`, `nomEtudiant`) VALUES
(4, 'jb@gmail.fr', 'Strasbourg', 'Base de données', NULL, '2018-04-12', '09:00', 'Williams'),
(3, 'prince@gmail.fr', 'Paris', 'Français', '0', '2018-04-27', '16:00', 'Prince'),
(5, 'Patrick@hotmail.fr', 'Paris', 'Base de données', NULL, '2018-04-01', '13:00', 'Patrick');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `telephone` int(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `email`, `password`, `telephone`, `ville`) VALUES
(1, 'Milhe', 'Nathan', 'nathan.milhe@epsi.fr', '1234', 655447788, 'Montpellier'),
(2, 'Halbaut', 'Arthur', 'arthur.halbaut@epsi.fr', '12345', 655447788, 'Nantes');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomProf` varchar(50) NOT NULL,
  `nomEtud` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `competence` varchar(20) DEFAULT NULL,
  `heure` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `nomProf`, `nomEtud`, `date`, `lieu`, `competence`, `heure`) VALUES
(7, 'José', 'Romane', '2018-04-10', 'Carcassonne', 'Droit Juridique', '15:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
