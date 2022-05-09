-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 09 mai 2022 à 12:55
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `todolist_interface`
--

-- --------------------------------------------------------

--
-- Structure de la table `effectuer_tache`
--

DROP TABLE IF EXISTS `effectuer_tache`;
CREATE TABLE IF NOT EXISTS `effectuer_tache` (
  `ref_employe` int(11) NOT NULL,
  `ref_tache` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_employe` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `service` varchar(20) NOT NULL,
  `poste` varchar(20) NOT NULL,
  `est_admin` int(11) NOT NULL,
  PRIMARY KEY (`id_employe`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_employe`, `nom`, `prenom`, `email`, `mdp`, `service`, `poste`, `est_admin`) VALUES
(1, 'Louisy', 'Arnaud', 'a.louisy@lprs.fr', '33ddebe4c759670c07a6d9da94b822e4', 'DRH', 'RH', 0);

-- --------------------------------------------------------

--
-- Structure de la table `liste_de_taches`
--

DROP TABLE IF EXISTS `liste_de_taches`;
CREATE TABLE IF NOT EXISTS `liste_de_taches` (
  `id_liste` int(11) NOT NULL AUTO_INCREMENT,
  `nom_liste` varchar(20) NOT NULL,
  PRIMARY KEY (`id_liste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

DROP TABLE IF EXISTS `tache`;
CREATE TABLE IF NOT EXISTS `tache` (
  `id_tache` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(20) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `ref_list` int(11) NOT NULL,
  `ref_type` int(11) NOT NULL,
  PRIMARY KEY (`id_tache`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
