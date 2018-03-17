-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 17 Mars 2018 à 13:43
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
CREATE DATABASE IF NOT EXISTS `wimbledon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wimbledon`;

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE `arbitre` (
  `id_arbitre` int(11) NOT NULL,
  `Prenom` varchar(100) DEFAULT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Nationalite` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `id_renc` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `motdepasse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `coach`
--

CREATE TABLE `coach` (
  `id_coach` int(11) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `nationalite` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `motdepasse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `Nom_equipe` varchar(100) NOT NULL DEFAULT '',
  `id_coach` int(11) NOT NULL,
  `nom_stade` varchar(50) NOT NULL,
  `id_poule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_even` int(11) NOT NULL,
  `Type_even` varchar(20) DEFAULT NULL,
  `minute` varchar(20) DEFAULT NULL,
  `id_renc` int(11) DEFAULT NULL,
  `id_joueur` int(11) DEFAULT NULL,
  `Nom_equipe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id_joueur` int(11) NOT NULL,
  `Prenom` varchar(100) DEFAULT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Nationalite` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Nom_equipe` varchar(100) DEFAULT NULL,
  `Poste` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offficielle`
--

CREATE TABLE `offficielle` (
  `email` varchar(100) NOT NULL,
  `motdepasse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phase`
--

CREATE TABLE `phase` (
  `id_phase` int(11) NOT NULL,
  `etape_phase` varchar(20) DEFAULT NULL,
  `duree_phase` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `poule`
--

CREATE TABLE `poule` (
  `id_poule` varchar(20) NOT NULL DEFAULT '',
  `nom_poule` varchar(50) NOT NULL,
  `id_phas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `id_renc` int(11) NOT NULL,
  `date_renc` datetime DEFAULT NULL,
  `nom_stade` varchar(100) DEFAULT NULL,
  `id_phase` int(11) DEFAULT NULL,
  `nom_equipe` varchar(100) DEFAULT NULL,
  `nom_equip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stade`
--

CREATE TABLE `stade` (
  `nom_stade` varchar(100) NOT NULL DEFAULT '',
  `lieu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD PRIMARY KEY (`id_arbitre`),
  ADD KEY `fk_renco` (`id_renc`);

--
-- Index pour la table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id_coach`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`Nom_equipe`),
  ADD KEY `fk_coach` (`id_coach`),
  ADD KEY `fk_Stade` (`nom_stade`),
  ADD KEY `fk_idPoule` (`id_poule`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_even`),
  ADD KEY `fk_renc` (`id_renc`),
  ADD KEY `fk_joueur` (`id_joueur`),
  ADD KEY `fk_ekip` (`Nom_equipe`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_joueur`),
  ADD KEY `fk_equip` (`Nom_equipe`);

--
-- Index pour la table `offficielle`
--
ALTER TABLE `offficielle`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`id_phase`);

--
-- Index pour la table `poule`
--
ALTER TABLE `poule`
  ADD PRIMARY KEY (`id_poule`),
  ADD KEY `fk_phase` (`id_phas`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`id_renc`),
  ADD KEY `fk_stade` (`nom_stade`),
  ADD KEY `fk_equipe` (`nom_equipe`),
  ADD KEY `fk_phas` (`id_phase`),
  ADD KEY `fk_equip` (`nom_equip`);

--
-- Index pour la table `stade`
--
ALTER TABLE `stade`
  ADD PRIMARY KEY (`nom_stade`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `arbitre`
--
ALTER TABLE `arbitre`
  MODIFY `id_arbitre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `coach`
--
ALTER TABLE `coach`
  MODIFY `id_coach` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_even` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;
--
-- AUTO_INCREMENT pour la table `phase`
--
ALTER TABLE `phase`
  MODIFY `id_phase` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rencontre`
--
ALTER TABLE `rencontre`
  MODIFY `id_renc` int(11) NOT NULL AUTO_INCREMENT;
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
-- Contraintes pour la table `poule`
--
ALTER TABLE `poule`
  ADD CONSTRAINT `fk_phase` FOREIGN KEY (`id_phas`) REFERENCES `phase` (`id_phase`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `fk_equipe` FOREIGN KEY (`nom_equipe`) REFERENCES `equipe` (`Nom_equipe`),
  ADD CONSTRAINT `fk_phas` FOREIGN KEY (`id_phase`) REFERENCES `phase` (`id_phase`),
  ADD CONSTRAINT `fk_stade` FOREIGN KEY (`nom_stade`) REFERENCES `stade` (`nom_stade`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
