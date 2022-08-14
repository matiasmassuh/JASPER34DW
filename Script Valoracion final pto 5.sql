CREATE TABLE `dueno` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `apellido` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8

CREATE TABLE `perro` (
  `idPerro` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `dni_dueno` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPerro`),
  KEY `dni_dueno_idx` (`dni_dueno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8

CREATE TABLE `historial` (
  `idHistorial` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `perro` int(11) DEFAULT NULL,
  `descripcion` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `monto` float DEFAULT NULL,
  PRIMARY KEY (`idHistorial`),
  KEY `perro_idx` (`perro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8

INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (25847564,'Pedro','Sanchez','3814524254','San Juan 3251');
INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (34587695,'Miguel Angel','Fernandez','3815400752','Santiago 150');
INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (34765432,'Francisco Pedro','Gomez','3814758521','San Miguel 521');
INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (21654876,'Juan Pedro','Alvarez','3814574525','Colombia 2500');
INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (41582456,'Marcos Roberto','Torres','3814492589','Las Heras 15');
INSERT INTO `dueno` (`dni`,`nombre`,`apellido`,`telefono`,`direccion`) VALUES (28957346,'Maria Emilia','Garcia','3815200452','Mendoza 859');

INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (1,'Bobbi','12/05/2015','macho',41582456);
INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (2,'Odie','15/08/2020','macho',28957346);
INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (3,'Snoopy','21/11/2019','macho',21654876);
INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (4,'Lassie','18/02/2018','hembra',34765432);
INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (5,'Laika','05/06/2020','hembra',25847564);
INSERT INTO `perro` (`idPerro`,` nombre`,`fecha_nac`,`sexo`,`dni_dueno`) VALUES (6,'Lady','10/10/2021','hembra',34587695);



SELECT perro.nombre FROM dueno, perro WHERE dueno.dni = perro.dni_dueno and dueno.nombre LIKE '%Pedro%';
