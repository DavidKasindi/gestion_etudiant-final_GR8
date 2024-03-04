-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 mars 2024 à 13:03
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_personne`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(11) NOT NULL,
  `quartier` varchar(100) NOT NULL,
  `commune` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `domicile`
--

CREATE TABLE `domicile` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `avenue` int(11) NOT NULL,
  `numero_avenue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `postnom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `sexe` varchar(5) NOT NULL,
  `matricule` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `postnom`, `prenom`, `sexe`, `matricule`) VALUES
(1, 'MUSURURU', 'KASINDI', 'David', 'M', '22liagelj690213'),
(2, 'ISAMUNA', 'NKEMBO', 'Josué', 'M', '22CTLIAGE233574'),
(3, 'NGOMA', 'MBUMBA', 'Josaphat', 'M', '22liagelj6912093');

-- --------------------------------------------------------

--
-- Structure de la table `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `id_proprietaire` int(11) NOT NULL,
  `initial` varchar(10) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `telephone`
--

INSERT INTO `telephone` (`id`, `id_proprietaire`, `initial`, `numero`) VALUES
(1, 1, '+243', 828965620),
(2, 2, '+243', 822292159);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
