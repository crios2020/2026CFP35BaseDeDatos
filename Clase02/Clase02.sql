-- linea de comentarios
/* 
	Bloque 
    de 
    comentarios 
*/

show databases; 	-- muestra las bds del server
-- ctrol - enter	ejecutamos el ultimo comando
-- ; es el terminador de sentencias
SHOW DATABASES;		-- Lenguaje no case sensitive

drop database if exists clase02;	-- borra la bd si existe
create database clase02;			-- crea la bd

use clase02;			-- activa la bd clase02

show tables;			-- muestra las tablas en la BD

drop table if exists clientes;
create table clientes(
	id int auto_increment primary key,
    nombre varchar(25),
    apellido varchar(25),
    cuit varchar(25),
    direccion varchar(50),
    comentarios varchar(150)
);

describe clientes;		-- muestra el metadato de la tabla

-- insertamos un registro en la tabla
insert into clientes (nombre, apellido, cuit, direccion) values
	('Juan','Perez','26263737','Algarrobo 1041');
    
select * from clientes; 	-- muestra los registros de la tabla
    