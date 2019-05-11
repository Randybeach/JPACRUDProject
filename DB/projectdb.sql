-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema projectdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `projectdb` ;

-- -----------------------------------------------------
-- Schema projectdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projectdb` DEFAULT CHARACTER SET utf8 ;
USE `projectdb` ;

-- -----------------------------------------------------
-- Table `passenger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `passenger` ;

CREATE TABLE IF NOT EXISTS `passenger` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `passport` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `passport_UNIQUE` (`passport` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO user@localhost;
 DROP USER user@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'user'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `passenger`
-- -----------------------------------------------------
START TRANSACTION;
USE `projectdb`;
INSERT INTO `passenger` (`id`, `first_name`, `last_name`, `age`, `country`, `passport`) VALUES (1, 'John', 'Alden', 34, 'USA', '43212345');
INSERT INTO `passenger` (`id`, `first_name`, `last_name`, `age`, `country`, `passport`) VALUES (2, 'Isaac', 'Allerton', 54, 'Canada', '45684735');

COMMIT;

