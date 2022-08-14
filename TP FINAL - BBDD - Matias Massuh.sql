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

-- 8) Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.--
INSERT INTO Dueno VALUES ('28166010', 'Matias', 'Massuh', '1125207471', 'Larrea 1290');
INSERT INTO Perro VALUES ( '10', 'Firulais', '20121-04-25', 'Hembra', '28166010');
INSERT INTO Historial VALUES ('9810', '2022-04-18', '10','Chequeo general anual', '2500')