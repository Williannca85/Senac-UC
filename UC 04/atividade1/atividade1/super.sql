-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Ago-2021 às 20:58
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `super`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `idcandidato` int(9) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `experiencia` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `candidatos`
--

INSERT INTO `candidatos` (`idcandidato`, `nome`, `experiencia`) VALUES
(1, 'João Paulo', 'Atendente de padaria'),
(2, 'Adamastor Júnior', 'Repositor'),
(3, 'Ana Cláudia', 'Atendente de caixa'),
(4, 'Daltron Silva', 'Mecânico de carros'),
(5, 'Tiel Evandro', 'Lavador de carros'),
(6, 'Amanda Carvalho', 'Atendente de caixa'),
(7, 'Clóvis Nogueira', 'Atendente de padaria'),
(8, 'Jorge Pereira', 'Coveiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumidor`
--

CREATE TABLE `consumidor` (
  `idConsumidor` int(11) NOT NULL,
  `tipoConsumidor` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `consumidor`
--

INSERT INTO `consumidor` (`idConsumidor`, `tipoConsumidor`) VALUES
(1, 'Aline'),
(2, 'Beatriz'),
(3, 'Claudio'),
(4, 'ConsumidorFinal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `idfornecedor` int(9) NOT NULL,
  `nomeProduto` varchar(200) DEFAULT NULL,
  `valorProduto` double(9,2) DEFAULT NULL,
  `quantidadeProduto` int(9) DEFAULT NULL,
  `setor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`idfornecedor`, `nomeProduto`, `valorProduto`, `quantidadeProduto`, `setor`) VALUES
(1, 'Leite integral', 2.00, 100, 'Padaria'),
(2, 'Pão de manteiga', 3.50, 125, 'Padaria'),
(3, 'Manteiga', 5.99, 60, 'Padaria'),
(4, 'Doce de morango', 2.90, 50, 'Padaria'),
(5, 'Queijo fatiado', 18.90, 60, 'Padaria'),
(6, 'Desodorante', 8.99, 100, 'Perfumaria'),
(7, 'Xampu', 6.99, 200, 'Perfumaria'),
(8, 'Condicionador', 8.90, 50, 'Perfumaria'),
(9, 'Sabonete', 0.89, 500, 'Perfumaria'),
(10, 'Cotonete', 2.50, 100, 'Perfumaria'),
(11, 'Batata-branca', 1.90, 100, 'Hortifruti'),
(12, 'Tomate', 3.90, 58, 'Hortifruti'),
(13, 'Cebola roxa', 2.99, 50, 'Hortifruti'),
(14, 'Abóbora', 0.98, 90, 'Hortifruti'),
(15, 'Pimentão', 5.99, 60, 'Hortifruti'),
(16, 'Arroz', 2.50, 200, 'Alimentos'),
(17, 'Feijão', 3.69, 250, 'Alimentos'),
(18, 'Farinha', 2.19, 500, 'Alimentos'),
(19, 'Açúcar', 2.39, 100, 'Alimentos'),
(20, 'Óleo de soja', 2.99, 300, 'Alimentos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `idFuncionarios` int(11) NOT NULL,
  `nomeFuncionario` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `setorFuncionario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`idFuncionarios`, `nomeFuncionario`, `cpf`, `setorFuncionario`) VALUES
(1, 'João Paulo', '00061690935', 'Atendente de padaria'),
(2, 'Adamastor Júnior', '45061690935', 'Repositor'),
(3, 'Ana Cláudia', '09865880935', 'Atendente de caixa'),
(6, 'Amanda Carvalho', '33256987525', 'Atendente de caixa'),
(7, 'Clóvis Nogueira', '00235656565', 'Atendente de padaria'),
(8, 'Tadeu', '98712348625', 'Repositor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_vendidos`
--

CREATE TABLE `itens_vendidos` (
  `idVenda` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `quantidadeVendida` int(100) DEFAULT NULL,
  `valorProduto` double(6,2) DEFAULT NULL,
  `valorTotalProduto` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens_vendidos`
--

INSERT INTO `itens_vendidos` (`idVenda`, `idProduto`, `quantidadeVendida`, `valorProduto`, `valorTotalProduto`) VALUES
(1, 22, 2, 6.99, 13.98),
(2, 26, 3, 2.50, 7.50),
(3, 26, 2, 2.50, 5.00),
(4, 27, 1, 3.69, 3.69),
(5, 24, 5, 3.90, 19.50),
(6, 25, 10, 2.99, 29.90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `nomeProduto` varchar(30) DEFAULT NULL,
  `valorProduto` double(6,2) DEFAULT NULL,
  `quantidadeProduto` int(9) DEFAULT NULL,
  `setorProduto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `nomeProduto`, `valorProduto`, `quantidadeProduto`, `setorProduto`) VALUES
(20, 'Pão de manteiga', 3.50, 125, 'Padaria'),
(21, 'Manteiga', 5.99, 60, 'Padaria'),
(22, 'Xampu', 6.99, 200, 'Perfumaria'),
(23, 'Sabonete', 0.89, 500, 'Perfumaria'),
(24, 'Tomate', 3.90, 58, 'Hortifruti'),
(25, 'Cebola roxa', 2.99, 50, 'Hortifruti'),
(26, 'Arroz', 2.50, 200, 'Alimentos'),
(27, 'Feijão', 3.69, 250, 'Alimentos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `selecionados`
--

CREATE TABLE `selecionados` (
  `idselecionado` int(9) NOT NULL,
  `idcandidato` int(11) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `selecionados`
--

INSERT INTO `selecionados` (`idselecionado`, `idcandidato`, `cpf`) VALUES
(1, 1, '00061690935'),
(2, 2, '45061690935'),
(3, 3, '09865880935'),
(4, 4, '12348956365'),
(5, 5, '88896532535'),
(6, 6, '33256987525'),
(7, 7, '00235656565'),
(8, 8, '77785545855');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `idConsumidor` int(11) DEFAULT NULL,
  `valorTotalVenda` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `idConsumidor`, `valorTotalVenda`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`idcandidato`);

--
-- Índices para tabela `consumidor`
--
ALTER TABLE `consumidor`
  ADD PRIMARY KEY (`idConsumidor`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`idfornecedor`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`idFuncionarios`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `itens_vendidos`
--
ALTER TABLE `itens_vendidos`
  ADD PRIMARY KEY (`idVenda`,`idProduto`),
  ADD KEY `idProduto` (`idProduto`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `selecionados`
--
ALTER TABLE `selecionados`
  ADD PRIMARY KEY (`idselecionado`),
  ADD KEY `candidatos` (`idcandidato`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `idConsumidor` (`idConsumidor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `idcandidato` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `consumidor`
--
ALTER TABLE `consumidor`
  MODIFY `idConsumidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `idfornecedor` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `idFuncionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `selecionados`
--
ALTER TABLE `selecionados`
  MODIFY `idselecionado` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens_vendidos`
--
ALTER TABLE `itens_vendidos`
  ADD CONSTRAINT `itens_vendidos_ibfk_1` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`),
  ADD CONSTRAINT `itens_vendidos_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produtos` (`idproduto`);

--
-- Limitadores para a tabela `selecionados`
--
ALTER TABLE `selecionados`
  ADD CONSTRAINT `candidatos` FOREIGN KEY (`idcandidato`) REFERENCES `candidatos` (`idcandidato`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`idConsumidor`) REFERENCES `consumidor` (`idConsumidor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
