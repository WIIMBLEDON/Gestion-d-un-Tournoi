-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 15 Mars 2018 à 04:57
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

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1674, 'Roman', 'Weidenfeller', 'Allemagne', 37, 'Dortmund', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1675, 'Dominiic', 'Reimann', 'Allemagne', 20, 'Dortmund', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1676, 'Roman', 'BAPwrki', 'Suisse', 27, 'Dortmund', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1677, 'Dan-Axel', 'Zagadou', 'France', 18, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1678, 'Raphael', 'Guerreiro', 'Portugal', 24, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1679, 'Jeremy', 'Toljan', 'Allemagne', 23, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1680, 'Manuel', 'Akanji', 'Suisse', 22, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1681, 'Sokratis', 'Papasthatopoulos', 'Grece', 29, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1682, 'Lukasz', 'Piszczek', 'Pologne', 32, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1683, 'Marcel', 'Schmelzer', 'Allemagne', 30, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1684, 'ANYmer', 'Toprak', 'Turquie', 28, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1685, 'Erik', 'Durm', 'Allemagne', 25, 'Dortmund', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1686, 'Nuri', 'Sahin', 'Turquie', 29, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1687, 'Mario', 'Gotze', 'Allemagne', 25, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1688, 'Marco', 'Reus', 'Allemagne', 28, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1689, 'Sebastien', 'Rode', 'Allemagne', 28, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1690, 'Mahmoud', 'Dahoud', 'Allemagne', 22, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1691, 'Andre', 'Schurrle', 'Allemagne', 27, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1692, 'Christian', 'Pulisic', 'Etats-unis', 19, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1693, 'Shinji', 'Kagawa', 'Japon', 28, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1694, 'Gonzalo', 'Castro', 'Allemagne', 30, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1695, 'Julian', 'Weigl', 'Allemagne', 22, 'Dortmund', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1696, 'Jadon', 'Sancho', 'Angleterre', 17, 'Dortmund', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1697, 'Andriy', 'Yarmolenko', 'Ukraine', 28, 'Dortmund', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1698, 'Alexander', 'Isak', 'Suede', 18, 'Dortmund', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1699, 'Maximillian', 'Phillip', 'Allemagne', 24, 'Dortmund', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1700, 'Michy', 'Batshuayi', 'Belgique', 24, 'Dortmund', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1701, 'Loris', 'Karius', 'Allemagne', 24, 'Liverpool', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1702, 'Simon', 'Mignolet', 'Belgique', 30, 'Liverpool', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1703, 'Adam', 'Bogdan', 'Hongrie', 30, 'Liverpool', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1704, 'Danny', 'Ward', 'Pays-de-Galles', 24, 'Liverpool', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1705, 'Nathaniel', 'Clyne', 'Angleterre', 26, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1706, 'Virgil', 'Van djik', 'Pays-Bas', 26, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1707, 'Dejan', 'Lovren', 'Croatie', 28, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1708, 'Joe', 'Gomez', 'Angleterre', 20, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1709, 'Ragnar', 'Klavan', 'Estonie', 32, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1710, 'Alberto', 'Moreto', 'Espagne', 25, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1711, 'Andrew', 'Roberson', 'Ecosse', 24, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1712, 'JoÃ«l Matip', 'Trent', 'Cameroun', 26, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1713, 'Alenxender ', 'Arnoid', 'Angleterre', 19, 'Liverpool', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1714, 'Gerginio', 'Wijnaldum', 'Pays-Bas', 27, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1715, 'James ', 'Milner', 'Angleterre', 32, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1716, 'Jordan ', 'Enderson', 'Angleterre', 27, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1717, 'Adam', 'Lallana', 'Angleterre', 29, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1718, 'Oxlade', 'Chamberlain', 'Angleterre', 24, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1719, 'Emre', 'Can', 'Allemagne', 24, 'Liverpool', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1720, 'Roberto', 'Firmino', 'Bresil', 26, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1721, 'Mohammed', 'Salah', 'Egypte', 25, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1722, 'Sadio', 'Mane', 'Senegal', 25, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1723, 'Danny', 'Ings', 'Angleterre', 25, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1724, 'Dominic', 'Solanke', 'Angleterre', 20, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1725, 'Ben', 'Woodbum', 'Pays-de-Galles', 18, 'Liverpool', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1726, 'Romain', 'Cagnon', 'France', 20, 'Marseille', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1727, 'Yohan', 'PelÃ©', 'France', 35, 'Marseille', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1728, 'Steve', 'Mandanda', 'France', 32, 'Marseille', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1729, 'Florian', 'Escales', 'France', 22, 'Marseille', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1730, 'Hiroko', 'Sakai', 'Japon', 27, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1731, 'Boubakar', 'kamara', 'France', 18, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1732, 'Rolando', '', 'Portugal', 32, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1733, 'Henri', 'Bedimo', 'Cameroun', 33, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1734, 'Aymen', 'Abdennour', 'Tunisie', 28, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1735, 'Bouna', 'Sarr', 'Mali', 26, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1736, 'Jordan', 'Amavi', 'France', 24, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1737, 'Christopher', 'Rocchia', 'France', 20, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1738, 'Adil ', 'Rami', 'France', 32, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1739, 'Rod ', 'Fanni', 'France', 36, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1740, 'Brice', 'Niate', 'Cameroun', 22, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1741, 'GaÃ«l', 'Andonian', 'Armenie', 23, 'Marseille', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1742, 'Morgan', 'Sanson', 'France', 23, 'Marseille', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1743, 'Luiz', 'Gustavo', 'Bresil', 30, 'Marseille', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1744, 'Gregory', 'Sertic', 'France', 28, 'Marseille', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1745, 'Maxim', 'Lopez', 'France', 20, 'Marseille', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1746, 'Andre Zambo', 'Anguissa', 'Cameroun', 22, 'Marseille', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1747, 'Lucas', 'Ocampos', 'Argentine', 23, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1748, 'Dimitri', 'Payet', 'France', 30, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1749, 'Konstantinos', 'Mitroglou', 'Grece', 30, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1750, 'Florian', 'Thauvin', 'France', 25, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1751, 'Valere', 'Germain', 'France', 27, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1752, 'Clinton', 'Nije', 'Cal', 24, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1753, 'yusuf', 'Sari', 'France', 19, 'Marseille', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1754, 'Danijel ', 'SubaÅ¡iÄ‡', 'Croatie', 33, 'Monaco', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1755, 'Diego ', 'Benaglio', 'Suisse', 34, 'Monaco', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1756, 'Seydou ', 'Sy', 'Senegal', 22, 'Monaco', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1757, 'LoÃ¯c ', 'Badiashile', 'France', 20, 'Monaco', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1758, 'Jemerson', '', 'Bresil', 25, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1759, 'Jorge', '', 'Bresil', 21, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1760, 'Jorge', '', 'Bresil', 25, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1761, 'Djibril', 'Sidibe', 'France', 20, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1762, 'Julien', 'Serrano', 'France', 33, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1763, 'Andre', 'Raggi', 'Italie', 30, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1764, 'Kamil', 'Glik', 'Pologne', 21, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1765, 'Almamy', 'Toure', 'Mali', 24, 'Monaco', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1766, 'Fabinho', '', 'Bresil', 25, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1767, 'Rachid', 'Ghezzal', 'Algerie', 31, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1768, 'Joao', 'Moutinho', 'Portugal', 20, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1769, 'Youri', 'Tielemans', 'Belgique', 22, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1770, 'Rony', 'Lopes', 'Portugal', 22, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1771, 'Grabiel', 'Boschilia', 'Bresil', 22, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1772, 'Thomas', 'Lemar', 'France', 22, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1773, 'Adama', 'Traore', 'Mali', 19, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1774, 'Romain', 'Faivre', 'France', 22, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1775, 'Kevin', 'Nâ€™doram', 'France', 18, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1776, 'Franco', 'Antonucci', 'Belq', 18, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1777, 'Adrien', 'Bongiovanni', 'Belq', 32, 'Monaco', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1778, 'Radamel', 'Falcao', 'Colombie', 28, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1779, 'Stevan', 'Jovetic', 'Montenegro', 23, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1780, 'Keita', 'Balde', 'Senegal', 21, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1781, 'Adama', 'Diakhaby', 'France', 18, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1782, 'Jordi', 'Mboula', 'Espagne', 18, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1783, 'Moussa', 'Sylla', 'France', 18, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1784, 'Kevin', 'Appin', 'France', 20, 'Monaco', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1785, 'Jon', 'Oblak', 'Slovenie', 25, 'Atletico-Madrid', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1786, 'Axel', 'Werner', 'Argentine', 22, 'Atletico-Madrid', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1787, 'Diego', 'Godin', 'Uruguay', 32, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1788, 'Filipe', 'Luis', 'Bresil', 32, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1789, 'Stefan', 'Savic', 'Montenegro', 27, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1790, 'Sime', 'Vrsaljko', 'Croatie', 26, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1791, 'Lucas', 'Hernandez', 'France', 22, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1792, 'Juanfran', '', 'Espagne', 33, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1793, 'Jose', 'Gimenez', 'Argentine', 23, 'Atletico-Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1794, 'Thomas', 'Partey', 'Ghana', 24, 'Atletico-Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1795, 'Koke', '', 'Espagne', 26, 'Atletico-Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1796, 'Saul', 'Niguez', 'Espagne', 23, 'Atletico-Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1797, 'Gabi', '', 'Espagne', 34, 'Atletico-Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1798, 'Vitolo', '', 'Espagne', 28, 'Atletico-Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1799, 'Antoine', 'Griezmann', 'France', 26, 'Atletico-Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1800, 'Fernando', 'Torres', 'Espagne', 33, 'Atletico-Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1801, 'Angel', 'Correa', 'Argentine', 23, 'Atletico-Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1802, 'Diego', 'Costa', 'Espagne', 23, 'Atletico-Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1803, 'Kevin', 'Gameiro', 'France', 30, 'Atletico-Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1804, 'Willy', 'Caballero', 'Argentine', 36, 'Chelsea', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1805, 'Thibaut', 'Courtois', 'Belgique', 25, 'Chelsea', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1806, ' Eduardo', '', 'Portugal', 35, 'Chelsea', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1807, 'Antonio', 'RÃ¼diger', 'Allemagne', 25, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1808, 'Marcos', 'Alonso', 'Espagne', 27, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1809, 'Victor', 'Moses', 'Nigeria', 27, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1810, 'Davide', 'Zappacosta', 'Italie', 25, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1811, 'Gary', 'Cahill', 'Angleterre', 32, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1812, 'Andreas', 'Christensen', 'Danemark', 21, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1813, 'Cesar', 'Azpillicueta', 'Espagne', 28, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1814, 'David ', 'Luiz', 'Bresil', 30, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1815, 'Emerson', '', 'Italie', 24, 'Chelsea', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1816, 'Cesc', 'Frabegas', 'Espagne', 30, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1817, 'Danny', 'Drinkwater', 'Angleterre', 28, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1818, 'Nâ€™golo', 'Kante', 'France', 26, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1819, 'Ross', 'Barkley', 'Angleterre', 24, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1820, 'Eden', 'Hazard', 'Belgique', 27, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1821, 'Pedro', '', 'Espagne', 30, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1822, ' Tiemoue ', 'Bakayoko', 'France', 23, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1823, 'Willian', '', 'Bresil', 29, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1824, 'Ethan', 'Ampadu', 'Pays-de-Galles', 17, 'Chelsea', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1825, 'Alvaro', 'Morata', 'Espagne', 25, 'Chelsea', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1826, 'Olivier', 'Giroud', 'France', 31, 'Chelsea', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1827, 'Claudio', 'Bravo', 'Chili', 34, 'Manchester-City', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1828, 'Ederson', 'Moraes', 'Bresil', 24, 'Manchester-City', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1829, 'Kyle ', 'Walker', 'Angleterre', 25, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1830, 'Danilo', '', 'Bresil', 26, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1831, 'Vincent', 'Kompany', 'Belgique', 31, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1832, 'John', 'Stones', 'Angleterre', 23, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1833, 'Aymeric', 'Laporte', 'France', 23, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1834, 'Benjamin', 'Mendy', 'France', 23, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1835, 'Tosin', 'Adarabioko', 'Angleterre', 20, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1836, 'Nicolas', 'Otamendi', 'Argentine', 30, 'Manchester-City', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1837, 'Raheem', 'Sterling', 'Angleterre', 23, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1838, 'Ilkay', 'GÃ¼ndagon', 'Allemagne', 27, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1839, 'Kevin', 'De Bruyne', 'Belgique', 26, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1840, 'Fabian', 'Delph', 'Angleterre', 28, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1841, 'Leroy', 'Sane', 'Allemagne', 23, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1842, 'Bernado', 'Silva', 'Portugal', 23, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1843, 'David ', 'Silva', 'Espagne', 32, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1844, 'Fernandinho', '', 'Bresil', 32, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1845, 'Oleksandr', 'Zichenko', 'Ukraine', 21, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1846, 'Yaya', 'Toure', 'Cote dâ€™ivoire', 34, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1847, 'Phil', 'Foden', 'Angleterre', 17, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1848, 'Brahim', 'Diaz', 'Espagne', 18, 'Manchester-City', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1849, 'Sergio', 'Aguero', 'Argentine', 29, 'Manchester-City', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1850, 'Gabriel', 'Jesus', 'Bresil', 20, 'Manchester-City', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1851, 'Gianluggi', 'Buffon', 'Italie', 40, 'Juventus', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1852, 'Carlo', 'Pinsoglio', 'Italiie', 27, 'Juventus', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1853, 'Wojciech', 'Szczesny', 'Pologne', 27, 'Juventus', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1854, 'Mattia', 'Di Sciglio', 'Italie', 25, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1855, 'Giorgio', 'Chiellini', 'Iitalie', 33, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1856, 'Mehdi', 'Benetia', 'Maroc', 30, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1857, 'Alex', 'Sandro', 'Bresil', 27, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1858, 'Andrea', 'Barzagli', 'Italie', 26, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1859, 'Benedikt', 'Howedes', 'Allemagne', 30, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1860, 'Kwadwo', 'Assamoa', 'Ghana', 29, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1861, 'Daniele', 'Rugani', 'Italie', 23, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1862, 'Stephan', 'Lichtsteiner', 'Suisse', 34, 'Juventus', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1863, 'Miralem', 'Pjanic', 'Bosnie-Herzegovine', 27, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1864, 'Sami', 'Khedira', 'Allemagne', 30, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1865, 'Claudio', 'Marchisio', 'Italie', 32, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1866, 'Blaise', 'Matuidi', 'France', 30, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1867, 'Stefano', 'Sturaro', 'Italie', 25, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1868, 'Rodrigo', 'Bentancur', 'Uruguay', 21, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1869, 'Juan', 'Cuadrado', 'Colombie', 29, 'Juventus', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1870, 'Gonzalo', 'Higuain', 'Argentine', 30, 'Juventus', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1871, 'Paulo', 'Dybala', 'Argentine', 24, 'Juventus', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1872, 'Douglas', 'Costa', 'Bresil', 27, 'Juventus', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1873, 'Mario', 'Manzukic', 'Croatie', 31, 'Juventus', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1874, 'Federico', 'Bernardeshi', 'Italie', 24, 'Juventus', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1875, 'Marc-Andre', 'Tergen', 'Allemagne', 25, 'Barcelona', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1876, 'Jasper', 'Cillesen', 'Pays-Bas', 28, 'Barcelona', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1877, 'Nelson', 'Semedo', 'Portugal', 24, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1878, 'Gerard', 'Pique', 'Espagne', 31, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1879, 'Jordi', 'Alba', 'Espagne', 28, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1880, 'Lucas', 'Digne', 'France', 24, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1881, 'Aleix', 'Vidal', 'Espagne', 28, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1882, 'Samuel', 'Umtiti', 'France', 24, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1883, 'Yerry', 'Mina', 'Colombie', 23, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1884, 'Thomas', 'Vermaelen', 'Belgique', 32, 'Barcelona', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1885, 'Ivan', 'Rakitic', 'Croatie', 30, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1886, 'Sergio', 'Busquets', 'Espagne', 29, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1887, 'Denis', 'Suarez', 'Espagne', 24, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1888, 'Philippe', 'Coutinho', 'Bresil', 25, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1889, 'Andres', 'Iniesta', 'Espagne', 33, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1890, 'Paulinho', '', 'Bresil', 29, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1891, 'Sergi', 'Roberto', 'Espagne', 26, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1892, 'Andre', 'Gomes', 'Portugal', 24, 'Barcelona', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1893, 'Luis', 'Suarez', 'Uruguay', 31, 'Barcelona', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1894, 'Lionnel', 'Mess', 'Argentine', 30, 'Barcelona', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1895, 'Ousmane', 'Dembele', 'France', 20, 'Barcelona', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1896, 'Paco', 'Alcacer', 'Espagne', 24, 'Barcelona', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1897, 'Keylor ', 'Navas', 'Costa-Rica', 31, 'Real_de_Madrid', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1898, 'Kiko', 'Casillas', 'Espagne', 31, 'Real_de_Madrid', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1899, 'Luca', 'Zidane', 'France', 19, 'Real_de_Madrid', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1900, 'Daniel', 'Carvajal', 'Espagne', 26, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1901, 'Jesus', 'Vallejo', 'Espagne', 21, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1902, 'Sergio', 'Ramos', 'Espagne', 31, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1903, 'Rafael', 'Varane', 'France', 24, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1904, 'Nacho', '', 'Espagne', 28, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1905, 'Marcelo', '', 'Bresil', 29, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1906, 'Theo', 'Hernandez', 'France', 20, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1907, 'Achraf', 'Hakimi', 'Maroc', 19, 'Real_de_Madrid', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1908, 'Toni', 'Kroos', 'Allemagne', 28, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1909, 'Luka', 'Modric', 'Croatie', 32, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1910, 'Casemiro', '', 'Bresil', 26, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1911, 'Marcos', 'Llorente', 'Espagne', 23, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1912, 'Marco', 'Asensio', 'Espagne', 22, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1913, 'Isco', '', 'Espagne', 25, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1914, 'Mateo', 'Kovacic', 'Croatie', 23, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1915, 'Dani', 'Ceballos', 'Espagne', 21, 'Real_de_Madrid', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1916, 'Cristiano', 'Ronaldo', 'Portugal', 33, 'Real_de_Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1917, 'Karim', 'Benzema', 'France', 30, 'Real_de_Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1918, 'Gareth', 'Bale', 'Pays-De-Galles', 28, 'Real_de_Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1919, 'Lucas', 'Vasquez', 'Espagne', 26, 'Real_de_Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1920, 'Borja', 'Mayoral', 'Espagne', 20, 'Real_de_Madrid', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1921, 'David ', 'De Gea', 'Espagne', 27, 'Manchester_United', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1922, 'Sergio', 'Romero', 'Argentine', 31, 'Manchester_United', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1923, 'Joel', 'Pereira', 'Portugal', 21, 'Manchester_United', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1924, 'Victor', 'Lindelof', 'Suede', 23, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1925, 'Eric', 'Bailly', 'Cote divoire', 23, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1926, 'Phil', 'Jones', 'Angleterre', 26, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1927, 'Marcos', 'Rojo', 'Argentine', 27, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1928, 'Christian', 'Smalling', 'Angleterre', 28, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1929, 'Daley', 'Blind', 'Pays-Bas', 28, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1930, 'Luke', 'Shaw', 'Angleterre', 22, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1931, 'Antono', 'Valencia', 'Equateur', 32, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1932, 'Matteo', 'Darmian', 'Italie', 28, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1933, 'Cameron', 'Borthewick-Jackson', 'Angleterre', 21, 'Manchester_United', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1934, 'Paul', 'Pogba', 'France', 24, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1935, 'Juan', 'Mata', 'Espagne', 29, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1936, 'Jesse', 'Lingard', 'Angleterre', 25, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1937, 'Michael', 'Carrick', 'Angleterre', 36, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1938, 'Ashley', 'Young', 'Angleterre', 32, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1939, 'Ander', 'Herrera', 'Espagne', 28, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1940, 'Marouane', 'Fellaini', 'Belgique', 30, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1941, 'Nemanja', 'Matic', 'Serbie', 29, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1942, 'Aliou', 'Traore', 'France', 17, 'Manchester_United', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1943, 'Alexis', 'Sanchez', 'Chili', 29, 'Manchester_United', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1944, 'Romelu', 'Lukaku', 'Belgique', 24, 'Manchester_United', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1945, 'Zlatan', 'Ibrahimovic', 'Suede', 36, 'Manchester_United', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1946, 'Anthony', 'Martial', 'France', 22, 'Manchester_United', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1947, 'Marcus', 'Rashford', 'Angleterre', 20, 'Manchester_United', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1948, 'Kevin', 'Trap', 'Allemagne', 27, 'Paris_Saint_Germain', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1949, 'Alphonse', 'Areola', 'France', 24, 'Paris_Saint_Germain', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1950, 'Sebastian', 'Cibois', 'France', 20, 'Paris_Saint_Germain', 'G');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1951, 'Thiago', 'Sylva', 'Bresil', 32, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1952, 'Presnel', 'Kimpembe', 'France', 21, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1953, 'Marquinhos', '', 'Bresil', 23, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1954, 'Thomas', 'Meunier', 'Belgique', 25, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1955, 'Yuri', 'Berchiche', 'Espagne', 27, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1956, 'Layvin', 'Kurzawa', 'France', 24, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1957, 'Daniel', 'Alves', 'Bresil', 34, 'Paris_Saint_Germain', 'D');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1958, 'Marco', 'Verratti', 'Italie', 24, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1959, 'Thiago', 'Motta', 'Italie', 34, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1960, 'Angel', 'Di Maria', 'Argentine', 29, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1961, 'Giovani', 'Lo Celsio', 'Argentine', 21, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1962, 'Lassana', 'Diarra', 'France', 32, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1963, 'Hatem', 'Ben Arfa', 'France', 30, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1964, 'Julian', 'Daxler', 'Allemagne', 23, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1965, 'Christopher', 'Nkunku', 'France', 19, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1966, 'Adrien', 'Rabiot', 'France', 22, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1967, 'Javier', 'Pastore', 'Argentine', 28, 'Paris_Saint_Germain', 'M');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1968, 'Edinson', 'Cavani', 'Uruguay', 30, 'Paris_Saint_Germain', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1969, 'Kylian', 'Mbappe', 'France', 25, 'Paris_Saint_Germain', 'A');
INSERT INTO `joueur` (`id_joueur`, `Prenom`, `Nom`, `Nationalite`, `Age`, `Nom_equipe`, `Poste`) VALUES(1970, 'Neymar', 'Jr', 'Bresil', 18, 'Paris_Saint_Germain', 'A');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_joueur`),
  ADD KEY `fk_equip` (`Nom_equipe`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1971;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `fk_equip` FOREIGN KEY (`Nom_equipe`) REFERENCES `equipe` (`Nom_equipe`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
