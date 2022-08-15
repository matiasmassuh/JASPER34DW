use trabajofinalispc
-- Tabla perro
create table Perro(
ID_Perro int,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(30),
DNI_dueno int,
constraint pk_cid primary key(ID_Perro)
);

-- Tabla Dueno
create table Dueno(
DNI int,
Nombre varchar(70),
Apellido varchar(50),
Telefono int,
Direccion varchar(80),
constraint pk_cdni primary key(DNI)
);

-- Tabla Historial
create table Historial(
ID_Historial int,
Fecha date,
Perro int,
Descripción varchar(400),
Monto dec,
constraint pk_cid primary key(ID_Historial)
);

/* Insercion de datos de Perro */
Insert into Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)
Values
('1','TOBI','2017-09-24','MACHO','17584928');

/* Insercion de datos de Dueno */
Insert into Dueno (DNI,Nombre,Apellido,Telefono,Direccion)
values
('17584928','Jorge','Vallota','343407273','Yrigoyen 345');

/* Insercion de datos de Dueno */
Insert into Dueno (DNI,Nombre,Apellido,Telefono,Direccion)
values
('32456345','Lara','Ramirez','343407234','Pedro Paz 54');

/* Insercion de datos de Perro */
Insert into Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)
Values
('2','COCO','2020-04-29','MACHO','32456345');

/* Insercion de datos de Dueno */
Insert into Dueno (DNI,Nombre,Apellido,Telefono,Direccion)
values
('40343123','Lazaro','Balcar','343456345','Repeto 234');

/* Insercion de datos de Perro */
Insert into Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)
Values
('3','JUANA','2019-03-14','HEMBRA','40343123');

/* Insercion de datos de Historial */
Insert into Historial (ID_Historial,Fecha,Perro,Descripción,Monto)
Values
('1','2019-07-09','1','Control','3432');

/* Insercion de datos de Historial */
Insert into Historial (ID_Historial,Fecha,Perro,Descripción,Monto)
Values
('2','2021-04-20','2','Vacunas A','4500');

/* Insercion de datos de Historial */
Insert into Historial (ID_Historial,Fecha,Perro,Descripción,Monto)
Values 
('3','2021-09-10','3','Corte Unas','2000');

/* Insercion de datos de Historial */
Insert into Historial (ID_Historial,Fecha,Perro,Descripción,Monto)
Values 
('4','2021-08-13','4','Cirujia','7000');

/* Realizar Consulta */
Select * from Duenos;
Select * from Perros;
Select * from Historial; 

-- Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
select * from Dueno where Fecha_nac between '20170814' and '20220814' 

select Dueno.Nombre,Dueno.Apellido,Perro.Nombre,Historial.Perro from Dueno inner join perro on Dueno.DNI=Perro.DNI_Dueno
inner join historial on Perro.ID_Perro=Historial.Perro where Fecha <= '20220101'


