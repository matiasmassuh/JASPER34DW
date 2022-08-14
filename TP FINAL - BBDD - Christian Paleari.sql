CREATE DATABASE TP_MóduloProgramador;
use TP_MóduloProgramador;

CREATE TABLE Dueno
(
DNI int not null,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Telefono int not null,
Dirección varchar (100) not null,
constraint pk_cd primary key (DNI)
);


CREATE TABLE Perro
(
ID_perro int not null,
Nombre varchar (50) not null,
Fecha_nac date not null,
Sexo varchar (50) not null,
DNI_dueno int not null,
constraint pk_cp primary key (ID_perro),
constraint fk_fd foreign key (DNI_dueno) references Dueno (DNI)
);

CREATE TABLE Historial
(
ID_historial int,
Fecha date not null,
Perro int,
Descripcion varchar (200),
Monto int,
constraint pk_ch primary key (ID_historial),
constraint fk_fp foreign key (Perro) references Perro (ID_Perro)
);


INSERT INTO Dueno VALUES ('29968877', 'Alejandro', 'Medina', '155281971', 'Avenida Fuerza Aerea 3510'), ('29968880', 'Maria', 'Rosales', '153552832', 'Aconcagua 2421'), ('21440322', 'Ernesto', 'Gomez', '155325215', 'Laprida 98');
INSERT INTO Perro VALUES ('105', 'Pichicho', '2020-08-07', 'Macho', '29968877'), ('160', 'Cuqui', '2018-05-10', 'Hembra', '29968880'), ('175', 'Negro', '2010-01-04', 'Macho', '21440322');
INSERT INTO Historial VALUES ('9810', '2021-02-15', '105','Revisión dolor pata derecha trasera', '1000'), ('2048', '2020-07-12', '160','Bañado y Corte de pelo', '1500'), ('1478', '2012-05-09', '175','Cirujia de ojos', '9000');

-- EJERCICIO: Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo. --

SELECT * FROM historial ORDER BY fecha asc;

-- NOTA: El perro con más antiguedad es el ( ID_perro = 175 ) con el ( ID_historial = 1478 ) pero por la forma de construcción de la base de datos, no se puede eliminar directamente porque da error 1451. --
-- Para solucionar el problema, primero elimino el historial asociado al perro --

DELETE FROM Historial WHERE ID_historial = 1478;

-- Luego elimino el perro -- 

DELETE FROM Perro WHERE ID_perro = 175;



