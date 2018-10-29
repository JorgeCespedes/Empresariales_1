-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BDPersonalLocal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BDPersonalLocal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BDPersonalLocal` DEFAULT CHARACTER SET utf8 ;
USE `BDPersonalLocal` ;

-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBPAIS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBPAIS` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBPAIS` (
  `idPais` INT NOT NULL AUTO_INCREMENT,
  `nombrePais` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBMONEDA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBMONEDA` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBMONEDA` (
  `idMoneda` INT NOT NULL AUTO_INCREMENT,
  `nombreMoneda` VARCHAR(60) NOT NULL,
  `simboloMoneda` VARCHAR(3) NOT NULL,
  `paraAsignacion` VARCHAR(2) NOT NULL,
  `idPais` INT NOT NULL,
  PRIMARY KEY (`idMoneda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBTIPOOSE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBTIPOOSE` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBTIPOOSE` (
  `idTipoOse` INT NOT NULL AUTO_INCREMENT,
  `tipoOse` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoOse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBOSE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBOSE` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBOSE` (
  `idOSE` INT NOT NULL AUTO_INCREMENT,
  `nombreOSE` VARCHAR(120) NOT NULL,
  `denominacionOse` VARCHAR(15) NOT NULL,
  `idPais` INT NOT NULL,
  `idTipoOse` INT NOT NULL,
  PRIMARY KEY (`idOSE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBCARGO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBCARGO` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBCARGO` (
  `idCargo` INT NOT NULL AUTO_INCREMENT,
  `cargo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBDESCUENTOSYAPORTES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBDESCUENTOSYAPORTES` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBDESCUENTOSYAPORTES` (
  `idDescuentosAportes` INT NOT NULL AUTO_INCREMENT,
  `descuentos` DECIMAL(5,2) NOT NULL,
  `aportes` DECIMAL(5,2) NOT NULL,
  `idCargo` INT NOT NULL,
  PRIMARY KEY (`idDescuentosAportes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBCONTRATO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBCONTRATO` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBCONTRATO` (
  `idContrato` INT NOT NULL AUTO_INCREMENT,
  `tipoContrato` VARCHAR(10) NOT NULL DEFAULT 'Definido',
  `fechaInicio` DATETIME NOT NULL,
  `fechaFinal` DATETIME NOT NULL,
  `estadoContrato` VARCHAR(15) NOT NULL,
  `sueldo` DECIMAL(10,2) NOT NULL,
  `idDescuentosAportes` INT NOT NULL,
  PRIMARY KEY (`idContrato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBPERSONAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBPERSONAL` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBPERSONAL` (
  `idPersonal` INT NOT NULL AUTO_INCREMENT,
  `nombrePersonal` VARCHAR(45) NOT NULL,
  `apellidoPersonal` VARCHAR(45) NOT NULL,
  `idOSE` INT NOT NULL,
  `Sexo` VARCHAR(2) NOT NULL,
  `idContrato` INT NOT NULL,
  PRIMARY KEY (`idPersonal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDPersonalLocal`.`TBUSUARIO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BDPersonalLocal`.`TBUSUARIO` ;

CREATE TABLE IF NOT EXISTS `BDPersonalLocal`.`TBUSUARIO` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `correo` VARCHAR(45) NOT NULL,
  `clave` VARCHAR(4) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
