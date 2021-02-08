-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Dez-2020 às 18:11
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nacionalidade` varchar(20) DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id_autor`, `nome`, `nacionalidade`, `data_nascimento`, `fotografia`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Luis Borges Gouveia', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(2, 'João Ranito', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(3, 'Nuno Magalhães Ribeiro', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(4, 'Paulo Rurato', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(5, 'Sofia Gaio', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(6, 'Rui Moreira', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(7, 'Margarida Bairrão', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(8, 'Judite Gonçalves de Freitas', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(9, 'António Borges Regedor', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(10, 'José Dias Coelho', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(11, 'Paula Moura', 'Portugal', NULL, NULL, NULL, NULL, NULL),
(12, 'Luis Alves', 'Portugal', NULL, 'Lindo', NULL, '2020-11-27 16:09:18', NULL),
(13, 'Pereira Alfredo', 'Angola', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores_livros`
--

CREATE TABLE `autores_livros` (
  `id_al` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autores_livros`
--

INSERT INTO `autores_livros` (`id_al`, `id_autor`, `id_livro`, `updated_at`, `created_at`) VALUES
(6, 13, 16, '2020-12-04 15:10:27', '2020-12-04 15:10:27'),
(8, 1, 1, '2020-12-04 15:17:15', '2020-12-04 15:17:15'),
(9, 4, 10, '2020-12-04 15:27:33', '2020-12-04 15:27:33'),
(10, 12, 2, '2020-12-04 15:52:00', '2020-12-04 15:52:00'),
(11, 13, 2, '2020-12-04 15:52:00', '2020-12-04 15:52:00'),
(12, 2, 3, '2020-12-04 15:52:24', '2020-12-04 15:52:24'),
(13, 2, 4, '2020-12-04 15:52:37', '2020-12-04 15:52:37'),
(14, 3, 4, '2020-12-04 15:52:37', '2020-12-04 15:52:37'),
(15, 2, 5, '2020-12-04 15:52:46', '2020-12-04 15:52:46'),
(16, 3, 5, '2020-12-04 15:52:46', '2020-12-04 15:52:46'),
(17, 4, 5, '2020-12-04 15:52:46', '2020-12-04 15:52:46'),
(18, 1, 7, '2020-12-04 15:53:01', '2020-12-04 15:53:01'),
(19, 1, 8, '2020-12-04 15:53:13', '2020-12-04 15:53:13'),
(20, 2, 8, '2020-12-04 15:53:13', '2020-12-04 15:53:13'),
(21, 3, 8, '2020-12-04 15:53:13', '2020-12-04 15:53:13'),
(22, 4, 8, '2020-12-04 15:53:13', '2020-12-04 15:53:13'),
(23, 1, 9, '2020-12-04 15:53:22', '2020-12-04 15:53:22'),
(24, 11, 11, '2020-12-04 15:53:38', '2020-12-04 15:53:38'),
(25, 12, 11, '2020-12-04 15:53:38', '2020-12-04 15:53:38'),
(26, 13, 11, '2020-12-04 15:53:38', '2020-12-04 15:53:38'),
(27, 10, 12, '2020-12-04 15:53:48', '2020-12-04 15:53:48'),
(28, 11, 12, '2020-12-04 15:53:48', '2020-12-04 15:53:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `aprovado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `edicoes`
--

CREATE TABLE `edicoes` (
  `id_livro` int(11) NOT NULL,
  `id_editora` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id_editora`, `nome`, `morada`, `observacoes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SPI-Principia', '', NULL, NULL, NULL, NULL),
(2, 'Edições Universidade Fernando Pessoa', '', NULL, NULL, NULL, NULL),
(3, 'Edições GestKnowing', '', NULL, NULL, NULL, NULL),
(4, 'VDM - Verlag Dr. Muller', '', NULL, NULL, NULL, NULL),
(5, 'Sílabo', '', NULL, NULL, NULL, NULL),
(6, 'Green Lines Instituto', '', NULL, NULL, NULL, NULL),
(7, 'Lambert Academic Publishing', '', NULL, NULL, NULL, NULL),
(8, 'Porto editora', 'Porto', 'Portugal', NULL, '2020-11-27 16:03:52', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras_livros`
--

CREATE TABLE `editoras_livros` (
  `id_editora` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras_livros`
--

INSERT INTO `editoras_livros` (`id_editora`, `id_livro`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL),
(2, 12, '2020-12-04 16:43:52', '2020-12-04 16:43:52', NULL),
(3, 12, '2020-12-04 16:43:52', '2020-12-04 16:43:52', NULL),
(4, 12, '2020-12-04 16:43:52', '2020-12-04 16:43:52', NULL),
(5, 12, '2020-12-04 16:43:52', '2020-12-04 16:43:52', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `designacao` varchar(30) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id_genero`, `designacao`, `observacoes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Memórias e Testemunhos', NULL, NULL, NULL, NULL),
(2, 'Direito Civil portugues', 'Portugal', NULL, '2020-11-27 15:58:53', NULL),
(3, 'Culinária', NULL, NULL, NULL, NULL),
(4, 'Romance', NULL, NULL, NULL, NULL),
(5, 'Policial e Thriller', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id_livro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `likes`
--

INSERT INTO `likes` (`id_livro`, `id_user`, `id_like`) VALUES
(1, 1, 2),
(1, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `idioma` varchar(10) NOT NULL,
  `total_paginas` int(11) DEFAULT NULL,
  `data_edicao` datetime DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `imagem_capa` varchar(255) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `sinopse` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `titulo`, `idioma`, `total_paginas`, `data_edicao`, `isbn`, `observacoes`, `imagem_capa`, `id_genero`, `id_autor`, `sinopse`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'sistema de informação de apoio a gestão', 'Portugal', NULL, NULL, '9728589433214', NULL, NULL, 1, 1, NULL, NULL, '2020-12-04 15:17:15', NULL, 0),
(2, 'cidades e regiões digitais:impacte na cidade e nas pessoas', 'Portugal', NULL, NULL, '1234567890123', NULL, NULL, 2, 1, NULL, NULL, '2020-12-04 15:51:50', NULL, 0),
(3, 'Informatica e Competencias Tecnologicas para a Sociedade da Informação', 'Portugal', NULL, NULL, '9789728830304', NULL, NULL, 1, 3, NULL, NULL, NULL, NULL, 0),
(4, 'Readings in Information Society', 'Portugal', NULL, NULL, '9789727228997', NULL, NULL, 3, 5, NULL, NULL, NULL, NULL, 0),
(5, 'Sociedade da Informação: balanço e implicações', 'Portugal', NULL, NULL, '9789728830182', NULL, NULL, 3, 7, NULL, NULL, '2020-12-04 15:52:46', NULL, 0),
(6, 'O Tribunal de Contas e as Autarquias Locais', 'Portugal', NULL, NULL, '9789899936614', NULL, NULL, 2, 7, NULL, NULL, NULL, NULL, 0),
(7, 'Informática e Competências Tecnológicas para a Sociedade da Informação 2ed', 'Portugal', NULL, '2019-10-15 00:00:00', '9789728830304', NULL, NULL, 2, 8, NULL, NULL, NULL, NULL, 0),
(8, 'Negócio Eletrónico - conceitos e perspetivas de desenvolvimento', 'Portugal', NULL, NULL, '9789899552258', NULL, NULL, 1, 8, NULL, NULL, NULL, NULL, 0),
(9, 'Gestão da Informação na Biblioteca Escolar', 'Portugal', NULL, NULL, '9789722314916', NULL, NULL, 1, 9, NULL, NULL, NULL, NULL, 0),
(10, 'A virtual environment to share knowledge', 'Portugal', NULL, NULL, '9781351729901', NULL, NULL, 2, 4, NULL, NULL, NULL, NULL, 0),
(11, 'Ciência da Informação: contributos para o seu estudo', 'Português', NULL, NULL, '9789896430900', NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 0),
(12, 'Repensar a Sociedade da Informação e do Conhecimento no Início do Século XXI', 'Portugal', NULL, NULL, '9789726186953', NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Luis Alves', 'a15016@aedah.pt', NULL, '$2y$10$utdJfUMKfO4jeaQw3jsM4elbd3Gm77Y9MNSijfQ4muYR5Z.4T2c/G', NULL, '2020-12-10 13:55:57', '2020-12-10 13:55:57'),
(2, 'Luis Filipe', 'a1234@aedah.pt', NULL, '$2y$10$Bbo.s0hS3/zSmpyRR3GlM.dRnzAHBkWdmEaw8VFx.JOu4VzVyQ9l6', NULL, '2020-12-14 16:42:56', '2020-12-14 16:42:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indexes for table `autores_livros`
--
ALTER TABLE `autores_livros`
  ADD PRIMARY KEY (`id_al`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_livro` (`id_livro`,`id_user`);

--
-- Indexes for table `edicoes`
--
ALTER TABLE `edicoes`
  ADD PRIMARY KEY (`id_livro`,`id_editora`);

--
-- Indexes for table `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id_editora`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_livro` (`id_livro`,`id_user`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `autores_livros`
--
ALTER TABLE `autores_livros`
  MODIFY `id_al` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;