-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema CSA
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CSA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CSA` DEFAULT CHARACTER SET latin1 ;
USE `CSA` ;

-- -----------------------------------------------------
-- Table `CSA`.`d_ip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_ip` (
  `id_ip` INT(10) NOT NULL AUTO_INCREMENT,
  `ip` VARCHAR(15) CHARACTER SET 'latin1' NOT NULL,
  PRIMARY KEY (`id_ip`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'IP Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_date`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_date` (
  `id_date` INT(10) NOT NULL AUTO_INCREMENT,
  `year` INT(5) NOT NULL,
  `week_of_year` INT(2) NOT NULL,
  `month` INT(2) NOT NULL,
  `month_desc` VARCHAR(20) CHARACTER SET 'latin1' NOT NULL,
  `day` INT(2) NOT NULL,
  `day_desc` VARCHAR(20) CHARACTER SET 'latin1' NOT NULL,
  `day_week` INT NOT NULL,
  `hour` INT(2) NOT NULL,
  `minute` INT(2) NOT NULL,
  `second` INT(2) NOT NULL,
  `tz` VARCHAR(10) NOT NULL,
  `date` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_date`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Date Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_browser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_browser` (
  `id_browser` INT(5) NOT NULL AUTO_INCREMENT,
  `browser_name` VARCHAR(256) CHARACTER SET 'latin1' NOT NULL,
  `browser_version` VARCHAR(50) CHARACTER SET 'latin1' NOT NULL,
  `browser_major` VARCHAR(50) NULL,
  PRIMARY KEY (`id_browser`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'OS Browser';


-- -----------------------------------------------------
-- Table `CSA`.`d_protocol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_protocol` (
  `id_protocol` INT(4) NOT NULL AUTO_INCREMENT,
  `protocol` VARCHAR(256) CHARACTER SET 'latin1' NOT NULL,
  `verb` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_protocol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Protocol Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_resource`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_resource` (
  `id_resource` INT(6) NOT NULL AUTO_INCREMENT,
  `resource` VARCHAR(1500) CHARACTER SET 'latin1' NOT NULL,
  PRIMARY KEY (`id_resource`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Resource Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_referer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_referer` (
  `id_referer` INT(10) NOT NULL AUTO_INCREMENT,
  `referer` VARCHAR(1500) CHARACTER SET 'latin1' NOT NULL,
  PRIMARY KEY (`id_referer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Referer Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_server_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_server_status` (
  `id_server_status` INT(5) NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(3) CHARACTER SET 'latin1' NOT NULL,
  `description` VARCHAR(31) CHARACTER SET 'latin1' NOT NULL,
  PRIMARY KEY (`id_server_status`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Server Status Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`d_os`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`d_os` (
  `id_os` INT(5) NOT NULL AUTO_INCREMENT,
  `os_name` VARCHAR(256) CHARACTER SET 'latin1' NOT NULL,
  `os_version` VARCHAR(50) CHARACTER SET 'latin1' NOT NULL,
  `cpu_architecture` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_os`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'OS Dimension';


-- -----------------------------------------------------
-- Table `CSA`.`h_clicks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSA`.`h_clicks` (
  `id_click` INT(10) NOT NULL AUTO_INCREMENT,
  `id_resource` INT(6) NOT NULL,
  `id_protocol` INT(4) NOT NULL,
  `id_server_status` INT(5) NOT NULL,
  `id_referer` INT(10) NOT NULL,
  `id_os` INT(5) NOT NULL,
  `id_ip` INT(10) NOT NULL,
  `id_browser` INT(5) NOT NULL,
  `id_date` INT(10) NOT NULL,
  `number_view` INT(10) NOT NULL,
  `bytes` INT(10) NOT NULL,
  PRIMARY KEY (`id_click`),
  INDEX `fk_clicks_ip` (`id_ip` ASC),
  INDEX `fk_clicks_resource` (`id_resource` ASC),
  INDEX `fk_clicks_referer` (`id_referer` ASC),
  INDEX `fk_clicks_os` (`id_os` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 511053
DEFAULT CHARACTER SET = utf8
COMMENT = 'Clicks Fact Table';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
