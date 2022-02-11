CREATE TABLE `resellerdb`.`supplier` (
  `Supplier_ID` INT(10) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(80) NULL,
  `Phone` INT(10) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Supplier_ID`),
  UNIQUE INDEX `Supplier_ID_UNIQUE` (`Supplier_ID` ASC) VISIBLE);

CREATE TABLE `resellerdb`.`product` (
  `Product_ID` INT(10) NOT NULL AUTO_INCREMENT,
  `Product_Name` VARCHAR(100) NULL,
  `Product_Description` VARCHAR(200) NULL,
  `Product_Price` FLOAT(10,1) NULL,
  `Product_Quantity` INT(10) NULL,
  `Supplier_ID` INT(10) NULL,
  `Category_ID` INT(10) NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE INDEX `Product_ID_UNIQUE` (`Product_ID` ASC) VISIBLE,
  INDEX `Supplier_ID_idx` (`Supplier_ID` ASC) VISIBLE,
  CONSTRAINT `Supplier_ID`
    FOREIGN KEY (`Supplier_ID`)
    REFERENCES `resellerdb`.`supplier` (`Supplier_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
