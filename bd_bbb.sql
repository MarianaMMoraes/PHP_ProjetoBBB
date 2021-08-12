-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Mar-2021 às 21:24
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_bbb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_anjo`
--

CREATE TABLE `tb_anjo` (
  `cod_anjo` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `dt_provaAnjo` date NOT NULL,
  `tipo_jogoAnjo` varchar(50) NOT NULL,
  `indicado_anjo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_batepapo`
--

CREATE TABLE `tb_batepapo` (
  `cod_batepapo` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `datahoramen` date NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_detalhesala`
--

CREATE TABLE `tb_detalhesala` (
  `cod_sala` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `cod_lider` int(2) NOT NULL,
  `cod_paredao` int(2) NOT NULL,
  `cod_anjo` int(2) NOT NULL,
  `dt_detalhesala` date NOT NULL,
  `status_sala` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_emotion`
--

CREATE TABLE `tb_emotion` (
  `cod_emot` int(2) NOT NULL,
  `tipo_emot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_jogodadiscordia`
--

CREATE TABLE `tb_jogodadiscordia` (
  `cod_jgdadiscordia` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `tipo_Jogo` varchar(50) NOT NULL,
  `dt_Jogo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_jogos`
--

CREATE TABLE `tb_jogos` (
  `cod_jogo` int(11) NOT NULL,
  `nm_jogo` varchar(50) NOT NULL,
  `ft_jogo` blob NOT NULL,
  `link_jogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_lider`
--

CREATE TABLE `tb_lider` (
  `cod_lider` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `dt_provaLider` date NOT NULL,
  `tipo_jogoLider` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_paredao`
--

CREATE TABLE `tb_paredao` (
  `cod_paredao` int(2) NOT NULL,
  `indicadolid` int(2) NOT NULL,
  `indicadosala` int(2) NOT NULL,
  `contragolpe` int(2) NOT NULL,
  `dt_paredao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_participantes`
--

CREATE TABLE `tb_participantes` (
  `cod_ptc` int(2) NOT NULL,
  `cod_usu` int(2) NOT NULL,
  `nome_ptc` varchar(60) NOT NULL,
  `dt_nascptc` date NOT NULL,
  `status_ptc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_queridometro`
--

CREATE TABLE `tb_queridometro` (
  `cod_quer` int(2) NOT NULL,
  `cod_ptc` int(2) NOT NULL,
  `cod_emot` int(2) NOT NULL,
  `dt_quer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `cod_usu` int(11) NOT NULL,
  `login_usu` varchar(80) NOT NULL,
  `senha_usu` varchar(80) NOT NULL,
  `ft_usu` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_anjo`
--

ALTER TABLE `tb_anjo`
  ADD PRIMARY KEY (`cod_anjo`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_batepapo`
--

ALTER TABLE `tb_batepapo`
  ADD PRIMARY KEY (`cod_batepapo`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_detalhesala`
--

ALTER TABLE `tb_detalhesala`
  ADD PRIMARY KEY (`cod_sala`),
  ADD KEY `cod_anjo` (`cod_anjo`),
  ADD KEY `cod_lider` (`cod_lider`),
  ADD KEY `cod_paredao` (`cod_paredao`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_emotion`
--

ALTER TABLE `tb_emotion`
  ADD PRIMARY KEY (`cod_emot`);

--
-- Índices para tabela `tb_jogodadiscordia`
--

ALTER TABLE `tb_jogodadiscordia`
  ADD PRIMARY KEY (`cod_jgdadiscordia`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_jogos`
--

ALTER TABLE `tb_jogos`
  ADD PRIMARY KEY (`cod_jogo`);

--
-- Índices para tabela `tb_lider`
--

ALTER TABLE `tb_lider`
  ADD PRIMARY KEY (`cod_lider`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_paredao`
--

ALTER TABLE `tb_paredao`
  ADD PRIMARY KEY (`cod_paredao`);

--
-- Índices para tabela `tb_participantes`
--

ALTER TABLE `tb_participantes`
  ADD PRIMARY KEY (`cod_ptc`),
  ADD KEY `cod_usu` (`cod_usu`);

--
-- Índices para tabela `tb_queridometro`
--

ALTER TABLE `tb_queridometro`
  ADD PRIMARY KEY (`cod_quer`),
  ADD KEY `cod_emot` (`cod_emot`),
  ADD KEY `cod_ptc` (`cod_ptc`);

--
-- Índices para tabela `tb_usuario`
--

ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`cod_usu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_anjo`
--

ALTER TABLE `tb_anjo`
  MODIFY `cod_anjo` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_batepapo`
--

ALTER TABLE `tb_batepapo`
  MODIFY `cod_batepapo` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_detalhesala`
--

ALTER TABLE `tb_detalhesala`
  MODIFY `cod_sala` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_emotion`
--

ALTER TABLE `tb_emotion`
  MODIFY `cod_emot` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_jogodadiscordia`
--

ALTER TABLE `tb_jogodadiscordia`
  MODIFY `cod_jgdadiscordia` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_jogos`
--

ALTER TABLE `tb_jogos`
  MODIFY `cod_jogo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_lider`
--

ALTER TABLE `tb_lider`
  MODIFY `cod_lider` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_paredao`
--

ALTER TABLE `tb_paredao`
  MODIFY `cod_paredao` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_participantes`
--

ALTER TABLE `tb_participantes`
  MODIFY `cod_ptc` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_queridometro`
--

ALTER TABLE `tb_queridometro`
  MODIFY `cod_quer` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--

ALTER TABLE `tb_usuario`
  MODIFY `cod_usu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_anjo`
--

ALTER TABLE `tb_anjo`
  ADD CONSTRAINT `tb_anjo_ibfk_1` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);

--
-- Limitadores para a tabela `tb_batepapo`
--

ALTER TABLE `tb_batepapo`
  ADD CONSTRAINT `tb_batepapo_ibfk_1` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);

--
-- Limitadores para a tabela `tb_detalhesala`
--

ALTER TABLE `tb_detalhesala`
  ADD CONSTRAINT `tb_detalhesala_ibfk_1` FOREIGN KEY (`cod_anjo`) REFERENCES `tb_anjo` (`cod_anjo`),
  ADD CONSTRAINT `tb_detalhesala_ibfk_2` FOREIGN KEY (`cod_lider`) REFERENCES `tb_lider` (`cod_lider`),
  ADD CONSTRAINT `tb_detalhesala_ibfk_3` FOREIGN KEY (`cod_paredao`) REFERENCES `tb_paredao` (`cod_paredao`),
  ADD CONSTRAINT `tb_detalhesala_ibfk_4` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);

--
-- Limitadores para a tabela `tb_jogodadiscordia`
--

ALTER TABLE `tb_jogodadiscordia`
  ADD CONSTRAINT `tb_jogodadiscordia_ibfk_1` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);

--
-- Limitadores para a tabela `tb_lider`
--

ALTER TABLE `tb_lider`
  ADD CONSTRAINT `tb_lider_ibfk_1` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);

--
-- Limitadores para a tabela `tb_participantes`
--

ALTER TABLE `tb_participantes`
  ADD CONSTRAINT `tb_participantes_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `tb_usuario` (`cod_usu`);

--
-- Limitadores para a tabela `tb_queridometro`
--

ALTER TABLE `tb_queridometro`
  ADD CONSTRAINT `tb_queridometro_ibfk_1` FOREIGN KEY (`cod_emot`) REFERENCES `tb_emotion` (`cod_emot`),
  ADD CONSTRAINT `tb_queridometro_ibfk_2` FOREIGN KEY (`cod_ptc`) REFERENCES `tb_participantes` (`cod_ptc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
