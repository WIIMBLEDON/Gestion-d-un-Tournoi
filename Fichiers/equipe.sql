-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 15 Mars 2018 à 04:58
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wimbledon`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `Nom_equipe` varchar(100) NOT NULL DEFAULT '',
  `id_coach` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Atletico-Madrid', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Barcelona', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Bayern', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Chelsea', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Dortmund', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Juventus', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Liverpool', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Manchester-City', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Manchester_United', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Marseille', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Monaco', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Paris_Saint_Germain', NULL);
INSERT INTO `equipe` (`Nom_equipe`, `id_coach`) VALUES('Real_de_Madrid', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`Nom_equipe`),
  ADD KEY `fk_coach` (`id_coach`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_coach` FOREIGN KEY (`id_coach`) REFERENCES `coach` (`id_coach`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
