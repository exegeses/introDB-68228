-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema introDB68228
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB68228
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB68228` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `introDB68228` ;

-- -----------------------------------------------------
-- Table `introDB68228`.`regiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`regiones` (
  `idRegion` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `regNombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE INDEX `regNombre` (`regNombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB68228`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`destinos` (
  `idDestino` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `destNombre` VARCHAR(100) NOT NULL,
  `destPrecio` FLOAT(12,2) UNSIGNED NOT NULL,
  `idRegion` TINYINT UNSIGNED NOT NULL,
  `destTotales` TINYINT UNSIGNED NOT NULL,
  `destDisponibles` TINYINT UNSIGNED NOT NULL,
  `destActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDestino`),
  UNIQUE INDEX `destNombre` (`destNombre` ASC) VISIBLE,
  INDEX `idRegion` (`idRegion` ASC) VISIBLE,
  CONSTRAINT `destinos_ibfk_1`
    FOREIGN KEY (`idRegion`)
    REFERENCES `introDB68228`.`regiones` (`idRegion`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB68228`.`productos_apple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`productos_apple` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `precio` FLOAT(12,4) UNSIGNED NULL DEFAULT NULL,
  `stock` SMALLINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB68228`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) unique  NOT NULL,
  PRIMARY KEY (`idCategoria`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB68228`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) unique NOT NULL,
  PRIMARY KEY (`idMarca`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB68228`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB68228`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) unique  NOT NULL,
  `prdPrecio` FLOAT(9,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idProducto`),
  CONSTRAINT `fk_productos_marcas1`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introDB68228`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introDB68228`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
