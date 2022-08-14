CREATE DATABASE FinalModulo;
use FinalModulo;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (50),
Apellido varchar (50),
Telefono int,
Direccion varchar (100),
constraint pk_cd primary key (DNI)
);


CREATE TABLE Perro
(
ID_perro int,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(50),
DNI_dueno int,
constraint pk_cp primary key (ID_perro),
constraint fk_fd foreign key (DNI_dueno) references Dueno (DNI)
);

CREATE TABLE Historial 
(
ID_historial int,
Fecha date,
Perro int,
Descripcion varchar(200),
Monto int,
constraint pk_ch primary key (ID_historial),
constraint fk_fp foreign key (Perro) references Perro (ID_perro)
);

-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.--
INSERT INTO Dueno VALUES ('30234567', 'Florencia', 'Gonzalez', '153887733', 'Córdoba 50');
INSERT INTO Perro VALUES ( '001', 'Ana', '2017-06-25', 'Hembra', '30234567');

-- Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE Perro SET Fecha_nac= '2018-06-25' where ID_perro ='001';


