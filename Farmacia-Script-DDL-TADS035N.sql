-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema FarmarciaTADS035N
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema FarmarciaTADS035N
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `FarmarciaTADS035N` DEFAULT CHARACTER SET utf8mb3 ;
USE `FarmarciaTADS035N` ;

-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Cargo` (
  `cbo` INT(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `faixaSalario` DECIMAL(7,2) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`cbo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Cliente` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `dataNasc` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Fornecedor` (
  `cnpj` VARCHAR(18) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Compras` (
  `idCompras` INT(11) NOT NULL AUTO_INCREMENT,
  `cupomFiscal` VARCHAR(45) NOT NULL,
  `dataComp` DATETIME NOT NULL,
  `dataVenc` DATETIME NOT NULL,
  `dataPag` DATETIME NULL DEFAULT NULL,
  `dataEntrega` DATETIME NULL DEFAULT NULL,
  `desconto` DECIMAL(4,2) NULL DEFAULT NULL,
  `valorFrete` DECIMAL(5,2) NULL DEFAULT NULL,
  `Fornecedor_cnpj` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idCompras`),
  INDEX `fk_Compras_Fornecedor1_idx` (`Fornecedor_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Compras_Fornecedor1`
    FOREIGN KEY (`Fornecedor_cnpj`)
    REFERENCES `FarmarciaTADS035N`.`Fornecedor` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Funcionario` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `nomeSocial` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `estadoCivil` VARCHAR(15) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `ch` INT NOT NULL,
  `salario` DECIMAL(7,2) UNSIGNED ZEROFILL NOT NULL,
  `comissao` DECIMAL(6,2) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `dataAdm` DATETIME NOT NULL,
  `dataDem` DATETIME NULL DEFAULT NULL,
  `fg` DECIMAL(6,2) UNSIGNED ZEROFILL NULL,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Departamento` (
  `idDepartamento` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `local` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Gerente_cpf` VARCHAR(14) NULL DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Departamento_Funcionario1_idx` (`Gerente_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Departamento_Funcionario1`
    FOREIGN KEY (`Gerente_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Dependente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Dependente` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `parentesco` VARCHAR(15) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`cpf`),
  INDEX `fk_Dependente_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Dependente_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Despesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Despesa` (
  `idDespesa` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  `dataVenc` DATETIME NOT NULL,
  `dataPag` DATETIME NULL DEFAULT NULL,
  `juros` DECIMAL(5,2) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `Compras_idCompras` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDespesa`),
  INDEX `fk_Despesa_Compras1_idx` (`Compras_idCompras` ASC) VISIBLE,
  CONSTRAINT `fk_Despesa_Compras1`
    FOREIGN KEY (`Compras_idCompras`)
    REFERENCES `FarmarciaTADS035N`.`Compras` (`idCompras`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`EnderecoCli`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`EnderecoCli` (
  `Cliente_cpf` VARCHAR(14) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `cidade` VARCHAR(60) NOT NULL,
  `bairro` VARCHAR(60) NOT NULL,
  `rua` VARCHAR(70) NOT NULL,
  `numero` INT(11) NOT NULL,
  `comp` VARCHAR(45) NULL DEFAULT NULL,
  `cep` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`Cliente_cpf`),
  CONSTRAINT `fk_EnderecoCli_Cliente1`
    FOREIGN KEY (`Cliente_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Cliente` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`EnderecoFunc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`EnderecoFunc` (
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `cidade` VARCHAR(60) NOT NULL,
  `bairro` VARCHAR(60) NOT NULL,
  `rua` VARCHAR(70) NOT NULL,
  `numero` INT(11) NOT NULL,
  `comp` VARCHAR(45) NULL,
  `cep` VARCHAR(9) NOT NULL,
  INDEX `fk_EnderecoFunc_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  PRIMARY KEY (`Funcionario_cpf`),
  CONSTRAINT `fk_EnderecoFunc_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Ferias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Ferias` (
  `idFerias` INT(11) NOT NULL AUTO_INCREMENT,
  `dataInicio` DATE NOT NULL,
  `dataFim` DATE NOT NULL,
  `qtdDias` INT(11) NOT NULL,
  `anoRef` YEAR(4) NOT NULL,
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idFerias`),
  INDEX `fk_Ferias_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Ferias_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Venda` (
  `idVenda` INT(11) NOT NULL AUTO_INCREMENT,
  `dataVenda` DATETIME NOT NULL,
  `valorTotal` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  `desconto` DECIMAL(4,2) NULL DEFAULT NULL,
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  `Cliente_cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idVenda`),
  INDEX `fk_Venda_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  INDEX `fk_Venda_Cliente1_idx` (`Cliente_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_Cliente1`
    FOREIGN KEY (`Cliente_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Cliente` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Venda_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`FormaPag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`FormaPag` (
  `idFormaPag` INT(11) NOT NULL AUTO_INCREMENT,
  `valorPago` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `parcela` INT(11) NULL,
  `Venda_idVenda` INT(11) NOT NULL,
  PRIMARY KEY (`idFormaPag`),
  INDEX `fk_FormaPag_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_FormaPag_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `FarmarciaTADS035N`.`Venda` (`idVenda`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Produto` (
  `idProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `dataValidade` DATE NOT NULL,
  `lote` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`ItensCompra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`ItensCompra` (
  `Produto_idProduto` INT(11) NOT NULL,
  `Compras_idCompras` INT(11) NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `valorComp` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Compras_idCompras`),
  INDEX `fk_Produto_has_Compras_Compras1_idx` (`Compras_idCompras` ASC) VISIBLE,
  INDEX `fk_Produto_has_Compras_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_has_Compras_Compras1`
    FOREIGN KEY (`Compras_idCompras`)
    REFERENCES `FarmarciaTADS035N`.`Compras` (`idCompras`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_has_Compras_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `FarmarciaTADS035N`.`Produto` (`idProduto`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`ItensVendaProd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`ItensVendaProd` (
  `Venda_idVenda` INT(11) NOT NULL,
  `Produto_idProduto` INT(11) NOT NULL,
  `valorDeVenda` DECIMAL(6,2) NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `descontoProd` DECIMAL(4,2) NULL DEFAULT NULL,
  PRIMARY KEY (`Venda_idVenda`, `Produto_idProduto`),
  INDEX `fk_Venda_has_Produto_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Venda_has_Produto_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `FarmarciaTADS035N`.`Produto` (`idProduto`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venda_has_Produto_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `FarmarciaTADS035N`.`Venda` (`idVenda`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Servico` (
  `idServico` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`idServico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`ItensVendaServico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`ItensVendaServico` (
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  `Venda_idVenda` INT(11) NOT NULL,
  `Servico_idServico` INT(11) NOT NULL,
  `valorVenda` DECIMAL(6,2) UNSIGNED ZEROFILL NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `desconto` DECIMAL(4,2) NULL DEFAULT NULL,
  PRIMARY KEY (`Funcionario_cpf`, `Venda_idVenda`, `Servico_idServico`),
  INDEX `fk_ItensVendaServico_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  INDEX `fk_ItensVendaServico_Servico1_idx` (`Servico_idServico` ASC) VISIBLE,
  CONSTRAINT `fk_ItensVendaServico_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ItensVendaServico_Servico1`
    FOREIGN KEY (`Servico_idServico`)
    REFERENCES `FarmarciaTADS035N`.`Servico` (`idServico`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ItensVendaServico_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `FarmarciaTADS035N`.`Venda` (`idVenda`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`PlanoSaude`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`PlanoSaude` (
  `Cliente_cpf` VARCHAR(14) NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  INDEX `fk_PlanoSaude_Cliente1_idx` (`Cliente_cpf` ASC) VISIBLE,
  PRIMARY KEY (`Cliente_cpf`),
  CONSTRAINT `fk_PlanoSaude_Cliente1`
    FOREIGN KEY (`Cliente_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Cliente` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`ReceitasMedica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`ReceitasMedica` (
  `idReceitas` INT(11) NOT NULL,
  `descricao` VARCHAR(140) NOT NULL,
  `arquivoReceita` BLOB NULL DEFAULT NULL,
  `Venda_idVenda` INT(11) NOT NULL,
  PRIMARY KEY (`idReceitas`),
  INDEX `fk_ReceitasMedica_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_ReceitasMedica_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `FarmarciaTADS035N`.`Venda` (`idVenda`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Telefone` (
  `idTelefone` INT(11) NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(15) NOT NULL,
  `Funcionario_cpf` VARCHAR(14) NULL DEFAULT NULL,
  `Departamento_idDepartamento` INT(11) NULL DEFAULT NULL,
  `Fornecedor_cnpj` VARCHAR(18) NULL DEFAULT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  INDEX `fk_Telefone_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  INDEX `fk_Telefone_Fornecedor1_idx` (`Fornecedor_cnpj` ASC) VISIBLE,
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `FarmarciaTADS035N`.`Departamento` (`idDepartamento`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefone_Fornecedor1`
    FOREIGN KEY (`Fornecedor_cnpj`)
    REFERENCES `FarmarciaTADS035N`.`Fornecedor` (`cnpj`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Telefone_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `FarmarciaTADS035N`.`Trabalhar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FarmarciaTADS035N`.`Trabalhar` (
  `Funcionario_cpf` VARCHAR(14) NOT NULL,
  `Cargo_cbo` INT(11) NOT NULL,
  `Departamento_idDepartamento` INT(11) NOT NULL,
  PRIMARY KEY (`Funcionario_cpf`, `Cargo_cbo`, `Departamento_idDepartamento`),
  INDEX `fk_Funcionario_has_Cargo_Cargo1_idx` (`Cargo_cbo` ASC) VISIBLE,
  INDEX `fk_Funcionario_has_Cargo_Funcionario1_idx` (`Funcionario_cpf` ASC) VISIBLE,
  INDEX `fk_Funcionario_has_Cargo_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_has_Cargo_Funcionario1`
    FOREIGN KEY (`Funcionario_cpf`)
    REFERENCES `FarmarciaTADS035N`.`Funcionario` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Funcionario_has_Cargo_Cargo1`
    FOREIGN KEY (`Cargo_cbo`)
    REFERENCES `FarmarciaTADS035N`.`Cargo` (`cbo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Funcionario_has_Cargo_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `FarmarciaTADS035N`.`Departamento` (`idDepartamento`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;