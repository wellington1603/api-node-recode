-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Fev-2021 às 19:43
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstrack`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `msg`, `data`) VALUES
(1, 'wellington', 'teste novo banco de dados', '2020-11-04 23:49:54'),
(2, 'Teste', 'sasa', '2020-11-05 01:03:40'),
(3, 'Teste', 'sasa', '2020-11-05 01:05:18'),
(4, 'Teste', '', '2020-11-25 20:23:01'),
(5, 'teste', 'Oi', '2020-11-25 20:23:10'),
(6, 'Wellington', '', '2020-11-26 19:58:23'),
(7, 'Wellington', 'shaushauhsuahsuhaushuah', '2020-11-26 19:59:04'),
(8, 'josÃ©', 'OlÃ¡', '2020-11-26 19:59:47'),
(9, 'Meu celular', 'sad', '2020-12-03 05:55:15'),
(10, 'tttrtr', 'rwrwr', '2020-12-05 13:46:57'),
(11, 'dada', 'sadad', '2020-12-06 16:18:20'),
(12, 'Teste', 'hoje', '2020-12-09 22:59:17'),
(13, '', '', '2020-12-09 23:07:34'),
(14, 'Cassio', 'Teste de post', '2021-02-02 15:32:56'),
(15, NULL, NULL, '2021-02-02 15:36:13'),
(16, NULL, NULL, '2021-02-02 15:37:49'),
(17, 'wellington', 'sasa', '2021-02-02 16:08:59'),
(18, 'Teste', 'Teste de post node', '2021-02-02 16:09:43'),
(19, 'wellington barbosa ferreira', '15485', '2021-02-02 16:10:27'),
(20, 'wellington barbosa ferreira', '15485', '2021-02-02 16:10:51'),
(21, 'Carlos', 'Teste de post node', '2021-02-02 16:11:18'),
(22, 'Joice', 'Olá', '2021-02-02 16:18:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `nome_cliente` varchar(70) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `nome_produto` varchar(50) DEFAULT NULL,
  `valor_uni` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` int(11) DEFAULT NULL,
  `id_pedidos` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'stratocaster', 'Guitarra Tagima TG-530 Woodstock', '1399.90', '1099.90', 'strato01.jpg'),
(2, 'stratocaster', 'Guitarra Stratocaster Strinberg STS-100 MWR', '899.90', '750.90', 'strato02.webp'),
(3, 'stratocaster', 'Guitarra Stratocaster Fender Squier Classic Vibe 70\'s LR - Natural', '4399.00', '3999.90', 'strato01.jpg'),
(4, 'lespaul', 'Les Paul Strinberg LPS-200', '1099.90', '999.00', 'les01.webp'),
(5, 'lespaul', 'Les Paul Epiphone Special VE', '2399.90', '2199.90', 'les02.jpg'),
(6, 'lespaul', 'Jackson Monarkh JS22 585', '3899.90', '3599.90', 'les03.jpg'),
(7, 'telecaster', 'Guitarra Telecaster Vintage Icon Series V52MR American Alder - Butterscotch', '3899.90', '3599.90', 'tele01.webp'),
(8, 'flying', 'Flying V Strinberg CLG 45', '1899.00', '1799.00', 'fly01.jpg'),
(9, 'flying', 'Fly V', '249.99', '199.99', 'fly02.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
