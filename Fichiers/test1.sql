-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 11 Mars 2018 à 17:17
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test1`
--

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE IF NOT EXISTS `arbitre` (
  `id_arbitre` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(100) DEFAULT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Nationalite` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `id_renc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_arbitre`),
  KEY `fk_renco` (`id_renc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `coach`
--

CREATE TABLE IF NOT EXISTS `coach` (
  `id_coach` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(100) DEFAULT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Nationalite` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_coach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `Nom_equipe` varchar(100) NOT NULL DEFAULT '',
  `id_coach` int(11) DEFAULT NULL,
  PRIMARY KEY (`Nom_equipe`),
  KEY `fk_coach` (`id_coach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id_even` int(11) NOT NULL AUTO_INCREMENT,
  `Type_even` varchar(20) DEFAULT NULL,
  `Heure` varchar(15) DEFAULT NULL,
  `id_renc` int(11) DEFAULT NULL,
  `id_joueur` int(11) DEFAULT NULL,
  `Nom_equipe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_even`),
  KEY `fk_renc` (`id_renc`),
  KEY `fk_joueur` (`id_joueur`),
  KEY `fk_ekip` (`Nom_equipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE IF NOT EXISTS `joueur` (
  `id_joueur` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(100) DEFAULT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Nationalite` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Taille` int(11) DEFAULT NULL,
  `Nom_equipe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_joueur`),
  KEY `fk_equip` (`Nom_equipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `phase`
--

CREATE TABLE IF NOT EXISTS `phase` (
  `id_phase` int(11) NOT NULL AUTO_INCREMENT,
  `Etape_Phase` varchar(20) DEFAULT NULL,
  `Duree_Phase` varchar(20) DEFAULT NULL,
  `id_tourn` int(11) DEFAULT NULL,
  `Nom_stade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_phase`),
  KEY `fk_tourn` (`id_tourn`),
  KEY `fk_stad` (`Nom_stade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `poule`
--

CREATE TABLE IF NOT EXISTS `poule` (
  `id_poule` varchar(20) NOT NULL DEFAULT '',
  `id_phas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_poule`),
  KEY `fk_phase` (`id_phas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE IF NOT EXISTS `rencontre` (
  `id_renc` int(11) NOT NULL AUTO_INCREMENT,
  `Lieu_renc` varchar(100) DEFAULT NULL,
  `Date_renc` date DEFAULT NULL,
  `Heure_renc` varchar(20) DEFAULT NULL,
  `Nom_Stade` varchar(100) DEFAULT NULL,
  `id_phase` int(11) DEFAULT NULL,
  `Nom_equipe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_renc`),
  KEY `fk_stade` (`Nom_Stade`),
  KEY `fk_equipe` (`Nom_equipe`),
  KEY `fk_phas` (`id_phase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `stade`
--

CREATE TABLE IF NOT EXISTS `stade` (
  `Nom_Stade` varchar(100) NOT NULL DEFAULT '',
  `Lieu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Nom_Stade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tournoi`
--

CREATE TABLE IF NOT EXISTS `tournoi` (
  `id_tour` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD CONSTRAINT `fk_renco` FOREIGN KEY (`id_renc`) REFERENCES `rencontre` (`id_renc`);

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_coach` FOREIGN KEY (`id_coach`) REFERENCES `coach` (`id_coach`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `fk_ekip` FOREIGN KEY (`Nom_equipe`) REFERENCES `equipe` (`Nom_equipe`),
  ADD CONSTRAINT `fk_joueur` FOREIGN KEY (`id_joueur`) REFERENCES `joueur` (`id_joueur`),
  ADD CONSTRAINT `fk_renc` FOREIGN KEY (`id_renc`) REFERENCES `rencontre` (`id_renc`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `fk_equip` FOREIGN KEY (`Nom_equipe`) REFERENCES `equipe` (`Nom_equipe`);

--
-- Contraintes pour la table `phase`
--
ALTER TABLE `phase`
  ADD CONSTRAINT `fk_stad` FOREIGN KEY (`Nom_stade`) REFERENCES `stade` (`Nom_Stade`),
  ADD CONSTRAINT `fk_tourn` FOREIGN KEY (`id_tourn`) REFERENCES `tournoi` (`id_tour`);

--
-- Contraintes pour la table `poule`
--
ALTER TABLE `poule`
  ADD CONSTRAINT `fk_phase` FOREIGN KEY (`id_phas`) REFERENCES `phase` (`id_phase`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `fk_phas` FOREIGN KEY (`id_phase`) REFERENCES `phase` (`id_phase`),
  ADD CONSTRAINT `fk_equipe` FOREIGN KEY (`Nom_equipe`) REFERENCES `equipe` (`Nom_equipe`),
  ADD CONSTRAINT `fk_stade` FOREIGN KEY (`Nom_Stade`) REFERENCES `stade` (`Nom_Stade`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
