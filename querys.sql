CREATE TABLE IF NOT EXISTS `mydb`.`Duenio` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(50) NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB


CREATE TABLE IF NOT EXISTS `mydb`.`Perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Fecha_Nac` DATE NOT NULL,
  `Sexo` VARCHAR(45) NULL,
  `DNI_Duenio` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`, `DNI_Duenio`),
  INDEX `fk_Perro_Dueño_idx` (`DNI_Duenio` ASC) VISIBLE,
  CONSTRAINT `fk_Perro_Duenio`
    FOREIGN KEY (`DNI_Duenio`)
    REFERENCES `mydb`.`Duenio` (`DNI`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`Historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Monto` VARCHAR(45) NOT NULL,
  `Perro` INT NOT NULL,
  PRIMARY KEY (`ID_Historial`, `Perro`),
  INDEX `fk_Historial_Perro1_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Perro1`
    FOREIGN KEY (`Perro`)
    REFERENCES `mydb`.`Perro` (`ID_Perro`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB

INSERT INTO `mydb`.`Dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES 
(11111111, 'Mateo', 'Garcia', '555-555-2345', 'Sarmiento 1452');

INSERT INTO `mydb`.`Perro` (`ID_Perro`, `Nombre`, `Fecha_Nac`, `Sexo`, `DNI_Dueno`) VALUES 
(1, 'Mancha', '01-06-2021', 'M', 11111111);

UPDATE `mydb`.`Duenio`
SET Direccion = 'Libertad 123'
WHERE DNI = 11111111
