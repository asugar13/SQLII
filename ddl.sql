-- Active: 1745487748000@@localhost@3306@db
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb`;

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`address_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`address_type` ;

CREATE TABLE IF NOT EXISTS `mydb`.`address_type` (
  `TYPE_ID` CHAR(1) NOT NULL,
  `DESCRIPTION` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`zipcode`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`zipcode` ;

CREATE TABLE IF NOT EXISTS `mydb`.`zipcode` (
  `ZIPCODE` INT(11) NOT NULL,
  `CITY` VARCHAR(20) NOT NULL,
  `STATE` VARCHAR(20) NOT NULL,
  `COUNTRY` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ZIPCODE`, `COUNTRY`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user_role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user_role` (
  `role_id` SMALLINT(5) NOT NULL,
  `role_description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`users` ;

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `user_id` BIGINT(20) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(30) NOT NULL,
  `encrypted_pwd` VARCHAR(100) NOT NULL,
  `registration_date` DATE NOT NULL,
  `is_active` SMALLINT(1) NOT NULL,
  `role_id` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `role_id`
    FOREIGN KEY (`role_id`)
    REFERENCES `mydb`.`user_role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `role_id_idx` ON `mydb`.`users` (`role_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`address` ;

CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `ADDRESS_ID` INT(11) NOT NULL,
  `TYPE_ID` CHAR(1) NOT NULL,
  `NAME` VARCHAR(40) NOT NULL,
  `NUMBER` SMALLINT(6) NULL DEFAULT NULL,
  `ZIPCODE` INT(11) NOT NULL,
  `COUNTRY` VARCHAR(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  CONSTRAINT `address_ibfk_1`
    FOREIGN KEY (`TYPE_ID`)
    REFERENCES `mydb`.`address_type` (`TYPE_ID`),
  CONSTRAINT `address_ibfk_2`
    FOREIGN KEY (`ZIPCODE` , `COUNTRY`)
    REFERENCES `mydb`.`zipcode` (`ZIPCODE` , `COUNTRY`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `TYPE_ID` ON `mydb`.`address` (`TYPE_ID` ASC) VISIBLE;

CREATE INDEX `ZIPCODE` ON `mydb`.`address` (`ZIPCODE` ASC, `COUNTRY` ASC) VISIBLE;

CREATE INDEX `user_id_idx` ON `mydb`.`address` (`user_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`contact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`contact` ;

CREATE TABLE IF NOT EXISTS `mydb`.`contact` (
  `CONTACT_ID` INT(11) NOT NULL,
  `NAME` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`CONTACT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`brand` ;

CREATE TABLE IF NOT EXISTS `mydb`.`brand` (
  `BRAND_ID` INT(11) NOT NULL,
  `NAME` VARCHAR(40) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  `CONTACT_ID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`BRAND_ID`),
  CONSTRAINT `brand_ibfk_1`
    FOREIGN KEY (`CONTACT_ID`)
    REFERENCES `mydb`.`contact` (`CONTACT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CONTACT_ID` ON `mydb`.`brand` (`CONTACT_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`segment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`segment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`segment` (
  `SEGMENT_ID` BIGINT(20) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  PRIMARY KEY (`SEGMENT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`family`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`family` ;

CREATE TABLE IF NOT EXISTS `mydb`.`family` (
  `FAMILY_ID` BIGINT(20) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  `SEGMENT_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`FAMILY_ID`),
  CONSTRAINT `family_ibfk_1`
    FOREIGN KEY (`SEGMENT_ID`)
    REFERENCES `mydb`.`segment` (`SEGMENT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `SEGMENT_ID` ON `mydb`.`family` (`SEGMENT_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`class` ;

CREATE TABLE IF NOT EXISTS `mydb`.`class` (
  `CLASS_ID` BIGINT(20) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  `FAMILY_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`CLASS_ID`),
  CONSTRAINT `class_ibfk_1`
    FOREIGN KEY (`FAMILY_ID`)
    REFERENCES `mydb`.`family` (`FAMILY_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `FAMILY_ID` ON `mydb`.`class` (`FAMILY_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`category` (
  `CATEGORY_ID` BIGINT(20) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  `CLASS_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  CONSTRAINT `category_ibfk_1`
    FOREIGN KEY (`CLASS_ID`)
    REFERENCES `mydb`.`class` (`CLASS_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CLASS_ID` ON `mydb`.`category` (`CLASS_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`category_attributes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`category_attributes` ;

CREATE TABLE IF NOT EXISTS `mydb`.`category_attributes` (
  `CATEGORY_ID` BIGINT(20) NOT NULL,
  `ATTRIBUTE_ID` SMALLINT(6) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`, `ATTRIBUTE_ID`),
  CONSTRAINT `category_attributes_ibfk_1`
    FOREIGN KEY (`CATEGORY_ID`)
    REFERENCES `mydb`.`category` (`CATEGORY_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`category_attrvalues`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`category_attrvalues` ;

CREATE TABLE IF NOT EXISTS `mydb`.`category_attrvalues` (
  `CATEGORY_ID` BIGINT(20) NOT NULL,
  `ATTRIBUTE_ID` SMALLINT(6) NOT NULL,
  `ATTRVALUE_ID` SMALLINT(6) NOT NULL,
  `VALUE` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`, `ATTRIBUTE_ID`, `ATTRVALUE_ID`),
  CONSTRAINT `category_attrvalues_ibfk_1`
    FOREIGN KEY (`CATEGORY_ID` , `ATTRIBUTE_ID`)
    REFERENCES `mydb`.`category_attributes` (`CATEGORY_ID` , `ATTRIBUTE_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`ccentry_methd`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ccentry_methd` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ccentry_methd` (
  `CCMETHD` CHAR(1) NOT NULL,
  `DESCRIPTION` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`CCMETHD`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`currency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`currency` ;

CREATE TABLE IF NOT EXISTS `mydb`.`currency` (
  `CURRENCY_ID` CHAR(3) NOT NULL,
  `CURRENCY_CODE` SMALLINT(6) NOT NULL,
  `DESCRIPTION` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`CURRENCY_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`ccpayment_state`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ccpayment_state` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ccpayment_state` (
  `CCSTATE` CHAR(1) NOT NULL,
  `DESCRIPTION` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`CCSTATE`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`ccpayment_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ccpayment_type` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ccpayment_type` (
  `CCTYPE` CHAR(2) NOT NULL,
  `DESCRIPTION` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`CCTYPE`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`ccpayment_card`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ccpayment_card` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ccpayment_card` (
  `user_id` BIGINT(20) NOT NULL,
  `PAYMENT_TYPE` CHAR(2) NOT NULL,
  `IS_ENCRYPT` CHAR(1) NOT NULL,
  `CARD_NUMBER` VARCHAR(64) NOT NULL,
  `BANKNAME` VARCHAR(64) NOT NULL,
  `CCEXPDATE` CHAR(6) NOT NULL,
  `cc_num_seq` SMALLINT(1) NOT NULL,
  PRIMARY KEY (`user_id`, `cc_num_seq`),
  CONSTRAINT `ccpayment_card_ibfk_3`
    FOREIGN KEY (`PAYMENT_TYPE`)
    REFERENCES `mydb`.`ccpayment_type` (`CCTYPE`),
  CONSTRAINT `P_users_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `PAYMENT_TYPE` ON `mydb`.`ccpayment_card` (`PAYMENT_TYPE` ASC) INVISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`ccpayment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ccpayment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ccpayment` (
  `CCPAYMENT_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `CCPAYTRAN_ID` BIGINT(20) NULL DEFAULT NULL,
  `CURRENCY_ID` CHAR(3) NOT NULL,
  `EXPECTED_AMOUNT` DECIMAL(20,5) NOT NULL,
  `APPROVING_AMOUNT` DECIMAL(20,5) NULL DEFAULT NULL,
  `APPROVED_AMOUNT` DECIMAL(20,5) NULL DEFAULT NULL,
  `CCPAYMENT_STATE` CHAR(1) NOT NULL,
  `TIMECREATED` TIMESTAMP NOT NULL,
  `TIMEUPDATED` TIMESTAMP NULL DEFAULT NULL,
  `TIMEEXPIRED` TIMESTAMP NULL DEFAULT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `cc_num_seq` SMALLINT(1) NOT NULL,
  `ccentry_method` CHAR(1) NULL,
  `ccpaymentcol` VARCHAR(45) NULL,
  PRIMARY KEY (`CCPAYMENT_ID`),
  CONSTRAINT `ccpayment_ibfk_1`
    FOREIGN KEY (`CURRENCY_ID`)
    REFERENCES `mydb`.`currency` (`CURRENCY_ID`),
  CONSTRAINT `ccpayment_ibfk_2`
    FOREIGN KEY (`CCPAYMENT_STATE`)
    REFERENCES `mydb`.`ccpayment_state` (`CCSTATE`),
  CONSTRAINT `f_user_id`
    FOREIGN KEY (`user_id` , `cc_num_seq`)
    REFERENCES `mydb`.`ccpayment_card` (`user_id` , `cc_num_seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cc2entry_method`
    FOREIGN KEY (`ccentry_method`)
    REFERENCES `mydb`.`ccentry_methd` (`CCMETHD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CURRENCY_ID` ON `mydb`.`ccpayment` (`CURRENCY_ID` ASC) VISIBLE;

CREATE INDEX `CCPAYMENT_STATE` ON `mydb`.`ccpayment` (`CCPAYMENT_STATE` ASC) VISIBLE;

CREATE INDEX `user_id_idx` ON `mydb`.`ccpayment` (`user_id` ASC, `cc_num_seq` ASC) VISIBLE;

CREATE INDEX `cc2entry_method_idx` ON `mydb`.`ccpayment` (`ccentry_method` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`color` ;

CREATE TABLE IF NOT EXISTS `mydb`.`color` (
  `COLOR_ID` BIGINT(20) NOT NULL,
  `RGB_RED` SMALLINT(6) NOT NULL,
  `RGB_GREEN` SMALLINT(6) NOT NULL,
  `RGB_BLUE` SMALLINT(6) NOT NULL,
  `HEX_CODE` CHAR(6) NOT NULL,
  `COLOR_NAME` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`COLOR_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`supplier` ;

CREATE TABLE IF NOT EXISTS `mydb`.`supplier` (
  `SUPPLIER_ID` INT(11) NOT NULL,
  `NAME` VARCHAR(40) NOT NULL,
  `CONTACT_ID` INT(11) NULL DEFAULT NULL,
  `PAYMENT_TERMS` VARCHAR(1024) NULL DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`),
  CONSTRAINT `supplier_ibfk_1`
    FOREIGN KEY (`CONTACT_ID`)
    REFERENCES `mydb`.`contact` (`CONTACT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CONTACT_ID` ON `mydb`.`supplier` (`CONTACT_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`unit_measure`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`unit_measure` ;

CREATE TABLE IF NOT EXISTS `mydb`.`unit_measure` (
  `METRIC_CODE` CHAR(2) NOT NULL,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(128) NULL DEFAULT NULL,
  PRIMARY KEY (`METRIC_CODE`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`product` ;

CREATE TABLE IF NOT EXISTS `mydb`.`product` (
  `PRODUCT_ID` BIGINT(20) NOT NULL,
  `CATEGORY_ID` BIGINT(20) NOT NULL,
  `SIZE_CODE` CHAR(2) NULL DEFAULT NULL,
  `SIZE` DECIMAL(10,2) NULL DEFAULT NULL,
  `WEIGHT_CODE` CHAR(2) NULL DEFAULT NULL,
  `WEIGHT` DECIMAL(10,2) NULL DEFAULT NULL,
  `PACK_CODE` CHAR(2) NULL DEFAULT NULL,
  `COLOR_ID` BIGINT(20) NULL DEFAULT NULL,
  `NAME` VARCHAR(40) NOT NULL,
  `BRAND_ID` INT(11) NOT NULL,
  `SUPPLIER_ID` INT(11) NOT NULL,
  `SHORT_DESCRIPTION` VARCHAR(128) NOT NULL,
  `LONG_DESCRIPTION` VARCHAR(1024) NOT NULL,
  `THUMBNAIL` VARCHAR(254) NULL DEFAULT NULL,
  `FULLIMAGE` VARCHAR(254) NULL DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  CONSTRAINT `product_ibfk_1`
    FOREIGN KEY (`BRAND_ID`)
    REFERENCES `mydb`.`brand` (`BRAND_ID`),
  CONSTRAINT `product_ibfk_2`
    FOREIGN KEY (`SUPPLIER_ID`)
    REFERENCES `mydb`.`supplier` (`SUPPLIER_ID`),
  CONSTRAINT `product_ibfk_3`
    FOREIGN KEY (`COLOR_ID`)
    REFERENCES `mydb`.`color` (`COLOR_ID`),
  CONSTRAINT `product_ibfk_4`
    FOREIGN KEY (`SIZE_CODE`)
    REFERENCES `mydb`.`unit_measure` (`METRIC_CODE`),
  CONSTRAINT `product_ibfk_5`
    FOREIGN KEY (`WEIGHT_CODE`)
    REFERENCES `mydb`.`unit_measure` (`METRIC_CODE`),
  CONSTRAINT `product_ibfk_6`
    FOREIGN KEY (`PACK_CODE`)
    REFERENCES `mydb`.`unit_measure` (`METRIC_CODE`),
  CONSTRAINT `product_ibfk_7`
    FOREIGN KEY (`CATEGORY_ID`)
    REFERENCES `mydb`.`category` (`CATEGORY_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `BRAND_ID` ON `mydb`.`product` (`BRAND_ID` ASC) VISIBLE;

CREATE INDEX `SUPPLIER_ID` ON `mydb`.`product` (`SUPPLIER_ID` ASC) VISIBLE;

CREATE INDEX `COLOR_ID` ON `mydb`.`product` (`COLOR_ID` ASC) VISIBLE;

CREATE INDEX `SIZE_CODE` ON `mydb`.`product` (`SIZE_CODE` ASC) VISIBLE;

CREATE INDEX `WEIGHT_CODE` ON `mydb`.`product` (`WEIGHT_CODE` ASC) VISIBLE;

CREATE INDEX `PACK_CODE` ON `mydb`.`product` (`PACK_CODE` ASC) VISIBLE;

CREATE INDEX `CATEGORY_ID` ON `mydb`.`product` (`CATEGORY_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`product_attrvalues`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`product_attrvalues` ;

CREATE TABLE IF NOT EXISTS `mydb`.`product_attrvalues` (
  `PRODUCT_ID` BIGINT(20) NOT NULL,
  `CATEGORY_ID` BIGINT(20) NOT NULL,
  `ATTRIBUTE_ID` SMALLINT(6) NOT NULL,
  `ATTRVALUE_ID` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`, `CATEGORY_ID`, `ATTRIBUTE_ID`, `ATTRVALUE_ID`),
  CONSTRAINT `product_attrvalues_ibfk_1`
    FOREIGN KEY (`PRODUCT_ID`)
    REFERENCES `mydb`.`product` (`PRODUCT_ID`),
  CONSTRAINT `product_attrvalues_ibfk_2`
    FOREIGN KEY (`CATEGORY_ID` , `ATTRIBUTE_ID` , `ATTRVALUE_ID`)
    REFERENCES `mydb`.`category_attrvalues` (`CATEGORY_ID` , `ATTRIBUTE_ID` , `ATTRVALUE_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CATEGORY_ID` ON `mydb`.`product_attrvalues` (`CATEGORY_ID` ASC, `ATTRIBUTE_ID` ASC, `ATTRVALUE_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`shopping_cart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`shopping_cart` ;

CREATE TABLE IF NOT EXISTS `mydb`.`shopping_cart` (
  `cart_id` BIGINT(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `shopping_date` DATE NOT NULL,
  `is_paid` SMALLINT(1) NOT NULL,
  `is_cancelled` SMALLINT(1) NOT NULL,
  PRIMARY KEY (`cart_id`),
  CONSTRAINT `sc_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `user_id_idx` ON `mydb`.`shopping_cart` (`user_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`ticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ticket` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ticket` (
  `TICKET_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `TIMEPLACED` TIMESTAMP NOT NULL,
  `TOTAL_PRODUCT` DECIMAL(20,5) NOT NULL,
  `TOTAL_TAX` DECIMAL(20,5) NOT NULL,
  `TOTAL_ORDER` DECIMAL(20,5) NOT NULL,
  `CURRENCY_ID` CHAR(3) NOT NULL,
  `PAYMENT_ID` BIGINT(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `cart_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`TICKET_ID`),
  CONSTRAINT `ticket_ibfk_1`
    FOREIGN KEY (`CURRENCY_ID`)
    REFERENCES `mydb`.`currency` (`CURRENCY_ID`),
  CONSTRAINT `ticket_ibfk_2`
    FOREIGN KEY (`PAYMENT_ID`)
    REFERENCES `mydb`.`ccpayment` (`CCPAYMENT_ID`),
  CONSTRAINT `t_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `t_cart_id`
    FOREIGN KEY (`cart_id`)
    REFERENCES `mydb`.`shopping_cart` (`cart_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `CURRENCY_ID` ON `mydb`.`ticket` (`CURRENCY_ID` ASC) VISIBLE;

CREATE INDEX `PAYMENT_ID` ON `mydb`.`ticket` (`PAYMENT_ID` ASC) VISIBLE;

CREATE INDEX `user_id_idx` ON `mydb`.`ticket` (`user_id` ASC) VISIBLE;

CREATE INDEX `cart_id_idx` ON `mydb`.`ticket` (`cart_id` ASC) VISIBLE;

CREATE UNIQUE INDEX `cart_id_UNIQUE` ON `mydb`.`ticket` (`cart_id` ASC) VISIBLE;

CREATE UNIQUE INDEX `PAYMENT_ID_UNIQUE` ON `mydb`.`ticket` (`PAYMENT_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`ticket_item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ticket_item` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ticket_item` (
  `TICKET_ID` BIGINT(20) NOT NULL,
  `NUMSEQ` SMALLINT(6) NOT NULL,
  `PRODUCT_ID` BIGINT(20) NOT NULL,
  `DESCRIPTION` VARCHAR(80) NOT NULL,
  `QUANTITY` SMALLINT(6) NOT NULL,
  `CURRENCY` VARCHAR(10) NOT NULL,
  `PRICE` DECIMAL(20,5) NOT NULL,
  `TAX_AMOUNT` DECIMAL(20,5) NOT NULL,
  `PRODUCT_AMOUNT` DECIMAL(20,5) NOT NULL,
  PRIMARY KEY (`TICKET_ID`, `NUMSEQ`),
  CONSTRAINT `ticket_item_ibfk_1`
    FOREIGN KEY (`TICKET_ID`)
    REFERENCES `mydb`.`ticket` (`TICKET_ID`),
  CONSTRAINT `ticket_item_ibfk_2`
    FOREIGN KEY (`PRODUCT_ID`)
    REFERENCES `mydb`.`product` (`PRODUCT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `PRODUCT_ID` ON `mydb`.`ticket_item` (`PRODUCT_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`items_delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`items_delivery` ;

CREATE TABLE IF NOT EXISTS `mydb`.`items_delivery` (
  `ticket_id` BIGINT(20) NOT NULL,
  `delivery_date` DATE NOT NULL,
  `address_id` INT(11) NOT NULL,
  `is_delivered` SMALLINT(1) NOT NULL,
  PRIMARY KEY (`ticket_id`, `address_id`),
  CONSTRAINT `ticket_id`
    FOREIGN KEY (`ticket_id`)
    REFERENCES `mydb`.`ticket` (`TICKET_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `mydb`.`address` (`ADDRESS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `address_id_idx` ON `mydb`.`items_delivery` (`address_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`price`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`price` ;

CREATE TABLE IF NOT EXISTS `mydb`.`price` (
  `product_id` BIGINT(20) NOT NULL,
  `cost_currency` CHAR(3) NOT NULL,
  `cost_decimal` DECIMAL(10,2) NOT NULL,
  `price_currency` CHAR(3) NOT NULL,
  `price_decimal` DECIMAL(10,2) NOT NULL,
  `price_promotion_decimal` DECIMAL(10,2) NULL,
  `taxes_decimal` DECIMAL(10,2) NULL,
  `pricecol` VARCHAR(45) NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `mydb`.`product` (`PRODUCT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cost_currency`
    FOREIGN KEY (`cost_currency`)
    REFERENCES `mydb`.`currency` (`CURRENCY_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `price_currency`
    FOREIGN KEY (`price_currency`)
    REFERENCES `mydb`.`currency` (`CURRENCY_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `cost_currency_idx` ON `mydb`.`price` (`cost_currency` ASC) VISIBLE;

CREATE INDEX `price_currency_idx` ON `mydb`.`price` (`price_currency` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`shopping_cart_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`shopping_cart_items` ;

CREATE TABLE IF NOT EXISTS `mydb`.`shopping_cart_items` (
  `cart_id` BIGINT(20) NOT NULL,
  `num_seq` SMALLINT(6) NOT NULL,
  `product_id` BIGINT(20) NOT NULL,
  `quantity` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`cart_id`, `num_seq`),
  CONSTRAINT `cart_id`
    FOREIGN KEY (`cart_id`)
    REFERENCES `mydb`.`shopping_cart` (`cart_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sci_product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `mydb`.`product` (`PRODUCT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `product_id_idx` ON `mydb`.`shopping_cart_items` (`product_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;