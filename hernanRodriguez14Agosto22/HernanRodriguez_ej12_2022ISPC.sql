
-- creacion de la base de datos llamada ej12
create database ej12;

-- usar  la base de datos 
USE ej12;

-- CREACION DE LAS TABLAS
-- EN LA CREACION DE LLAVES FORANEAS SE UTILIZA EL METODO RESTRIC USADO POR DEFAULT POR NO DEFINIRSE EN ENUNCIADO

-- CREACION TABLA PERRO
CREATE TABLE Perro(ID_Perro INT NOT NULL,
					Nombre varchar(30) not null,
                    Fecha_nac date not null,
                    Sexo varchar(10) not null,
                    DNI_dueno int not null,
                    primary key(ID_Perro),
                    foreign key(DNI_dueno) references Dueno(DNI));
                    
-- CREACION TABLA DUENO
CREATE TABLE Dueno(DNI INT NOT NULL,
					Nombre varchar(45) not null,
                    Apellido varchar(30) not null,
                    Telefono int,
                    Direccion varchar(70),
                    primary key(DNI));
                    
-- CREACION TABLA HISTORIAL
CREATE TABLE Historial(ID_Historial INT NOT NULL,
					Fecha date not null, 
					Perro int not null,
                    Descripcion varchar(200),
                    Monto decimal not null,
                    primary key(ID_Historial),
                    foreign key(Perro) references Perro(ID_Perro));
 
 
 
/* INSERTAR DATOS EN TABLA PERRO */
INSERT INTO PERRO (ID_PERRO,NOMBRE,FECHA_NAC,SEXO,DNI_DUENO) VALUES
('1','RENZO','2021-08-27','MACHO','32654444');

/* INSERTAR DATOS EN TABLA DUENO */
INSERT INTO DUENO(DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION) VALUES
('32654444','HERNAN','RODRIGUEZ','4567891','AV SIEMPRE VIVA 742');

/* INSERTAR DATOS EN TABLA DUENO */
INSERT INTO DUENO(DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION) VALUES
('4878564','BETY','REVELLINO','7894651','ROSAS VIVAS 440');

/* INSERTAR DATOS EN TABLA PERRO */
INSERT INTO PERRO (ID_PERRO,NOMBRE,FECHA_NAC,SEXO,DNI_DUENO) VALUES
('2','PECOS','2018-08-27','HEMBRA','4878564');

/* INSERTAR DATOS EN TABLA DUENO */
INSERT INTO DUENO(DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION) VALUES
('07498123','MAURO','RODRIGUEZ','1194651','PARANA 999');

/* INSERTAR DATOS EN TABLA PERRO */
INSERT INTO PERRO (ID_PERRO,NOMBRE,FECHA_NAC,SEXO,DNI_DUENO) VALUES
('3','MASTERS','2017-02-27','MACHO','07498123');

/* INSERTAR DATOS EN TABLA HISTORIAL */
INSERT INTO HISTORIAL (ID_HISTORIAL,FECHA,PERRO,DESCRIPCION,MONTO) VALUES
('1','2017-08-17','1','VACUNACION DE RUTINA','1234.25');
INSERT INTO HISTORIAL (ID_HISTORIAL,FECHA,PERRO,DESCRIPCION,MONTO) VALUES
('2','2017-07-17','1','CONTROL PESO','12344');
INSERT INTO HISTORIAL (ID_HISTORIAL,FECHA,PERRO,DESCRIPCION,MONTO) VALUES
('3','2017-07-17','2','PELUQUERIA','4567');
INSERT INTO HISTORIAL (ID_HISTORIAL,FECHA,PERRO,DESCRIPCION,MONTO) VALUES
('4','2017-07-17','3','PELUQUERIA','4500');
/*CONSULTA*/
SELECT * FROM PERRO;
SELECT * FROM DUENO;
SELECT * FROM HISTORIAL;

select  *
FROM perro as p
inner join dueno  as d on perro.dni_dueno=dueno.dni;


select dueno.nombre,perro.nombre,historial.perro,historial.descripcion
from dueno 
inner join perro  on dueno.dni=perro.dni_dueno
inner join historial on perro.id_perro=historial.perro;


-- 12.	Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022
SELECT * FROM PERRO where SEXO = 'MACHO' AND FECHA_NAC BETWEEN '20200101' AND '20221231'; 

-- 12 prima Igual  a consulta requerida detallando nombre del dueño y su historial (macho nacido entre 2020 y 2022)
select dueno.nombre, dueno.apellido,perro.nombre,perro.sexo,perro.fecha_nac,historial.perro,
historial.descripcion, 
historial.descripcion,historial.monto
from dueno  
inner join perro  on dueno.dni=perro.dni_dueno
inner join historial  on perro.id_perro=historial.perro
where SEXO = 'MACHO' AND FECHA_NAC BETWEEN '20200101' AND '20221231';
                    
                   



