show databases;
drop database if exists clase03;
create database clase03;
use clase03;
show tables;
drop table if exists computadoras;
create table computadoras(
	id int auto_increment primary key,
    procesador varchar(10),
    ram varchar(10),
    disco varchar(10),
    comentarios varchar(255)
);
describe computadoras;
insert into computadoras (procesador,ram,disco,comentarios) values 
('I5','16GB','540GB','');
select * from computadoras;
-- https://codeshare.io/crios2020
-- Laboratorio 1
-- 1- Borrar si existe la base de datos Agenda.
drop database if exists Agenda;
-- 2- Crear la base de datos Agenda.
create database Agenda;
-- 3- Ingresar a la base de datos creada.
use Agenda;
-- 4- Crear una tabla llamada "agenda". Debe tener los siguientes campos:
--    nombre (cadena de 20), 
--    domicilio (cadena de 30)
--    telefono (cadena de 11)
drop table if exists agenda;
create table agenda(
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);
-- 5- Visualizar las tablas existentes en la base de datos para verificar la creación de "agenda".
show tables;
-- 6- Visualizar la estructura de campos de la tabla "agenda". (describe).
describe agenda;
-- 7- Ingresar 10 registros con valores aleatorios.
insert into agenda (nombre,domicilio,telefono) values ('Melina','Lima 234','12134567');
insert into agenda (nombre, domicilio, telefono) values ('Carlos Perez', 'Av. Juarez 123', '55123456789');

insert into agenda (nombre, domicilio, telefono) values ('Maria Lopez', 'Calle Hidalgo 456', '55876543210');
insert into agenda (nombre, domicilio, telefono) values ('Juan Martinez', 'Blvd. Reforma 789', '55321456789');
insert into agenda (nombre, domicilio, telefono) values ('Ana Torres', 'Calle Morelos 321', '55987654321');
insert into agenda (nombre, domicilio, telefono) values ('Luis Ramirez', 'Av. Insurgentes 654', '55234567890');
insert into agenda (nombre, domicilio, telefono) values ('Sofia Hernandez', 'Calle Allende 987', '55678901234');
insert into agenda (nombre, domicilio, telefono) values ('Pedro Sanchez', 'Av. Universidad 147', '55432109876');
insert into agenda (nombre, domicilio, telefono) values ('Laura Gomez', 'Calle Zaragoza 258', '55789012345');
insert into agenda (nombre, domicilio, telefono) values ('Miguel Castro', 'Blvd. Independencia 369', '55345678901');
insert into agenda (nombre, domicilio, telefono) values ('Elena Ruiz', 'Av. Central 159', '55890123456');
-- 8- Seleccione y muestre todos los registros de la tabla:
select * from agenda;
-- Felicitaciones usted ha armado su agenda personal!!!!
