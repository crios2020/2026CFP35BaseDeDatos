/*
	- Crear la siguiente tabla
    - Ingresar 5 registros
    ----------------------------
	|	Empleados				|
    |---------------------------|
    | nroLegajo int PK auto		|
    | nombre varchar(20)        |
    | apellido varchar(20)      |
    | cargo varchar(20)			|
    | edad int                  |
    | fecha_ingreso date        |
    -----------------------------
*/

drop database if exists clase06;
create database clase06;
use clase06;
drop table if exists empleados;
create table empleados(
	nroLegajo int primary key auto_increment,
    nombre varchar(20),
    apellido varchar(20),
    cargo varchar(20),
    edad int,
    fecha_ingreso date
);

INSERT INTO empleados (nombre, apellido, cargo, edad, fecha_ingreso) VALUES
('Juan', 'Pérez', 'Administrador', 35, '2020-03-15'),
('María', 'Gómez', 'Contadora', 29, '2021-07-10'),
('Carlos', 'López', 'Desarrollador', 40, '2019-11-25'),
('Ana', 'Martínez', 'Diseñadora', 27, '2022-01-05'),
('Luis', 'Fernández', 'Soporte', 32, '2018-06-18');

show tables;
describe empleados;
select * from empleados;

-- https://codeshare.io/crios2020

-- Base de datos negocio
-- 1- Borrar si existe la base de datos Negocio.
drop database if exists Negocio;

-- 2- Crear la base de datos Negocio.
create database Negocio;

-- 3- Ingresar a la base de datos creada.
use Negocio;

-- 4- Crear la tabla Clientes dentro de la base de datos con el siguiente detalle:
-- codigo		int auto_increment y PK
-- nombre		varchar(20) not null
-- apellido		varchar(20) not null
-- cuit			char(13)
-- direccion	varchar(50)
-- comentarios 	varchar(140)
-- PK significa Primary Key
create table clientes(
		codigo int auto_increment primary key,
        nombre varchar(20) not null,
        apellido varchar(20) not null,
        cuit char(13),
        direccion varchar(50),
        comentarios varchar(140)
);

-- 5- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:

-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double,
-- primary key(letra,numero)
create table facturas(
	letra char(1),
    numero int,
    fecha date,
    monto double,
    primary key(letra,numero)
);

-- observar que se esta declarando una clave primaria compuesta
-- es decir primary key(letra,numero)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave

-- 6- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:

-- Codigo		integer auto_increment y PK 
-- Nombre 		varchar(50)
-- Precio		double
-- Stock		integer
create table articulos(
	codigo int auto_increment primary key,
    nombre varchar(50),
    precio double,
    stock int
);

-- 7- Cargar 5 registros aleatorios en cada tabla.
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Juan','Perez','20-12345678-3','Av. Rivadavia 123','Cliente frecuente');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Maria','Gomez','27-23456789-1','Calle San Martin 456','Compra online');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Carlos','Lopez','20-34567890-2','Belgrano 789','Pago con tarjeta');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Ana','Martinez','27-45678901-4','Mitre 321','Cliente nuevo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Luis','Rodriguez','20-56789012-5','Sarmiento 654','Compra mayorista');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Laura','Fernandez','27-67890123-6','Lavalle 987','Sin comentarios');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Diego','Sanchez','20-78901234-7','Moreno 147','Compra mensual');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Sofia','Ramirez','27-89012345-8','Urquiza 258','Cliente premium');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Pablo','Torres','20-90123456-9','Alsina 369','Entrega a domicilio');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Valeria','Flores','27-01234567-0','Saavedra 741','Compra ocasional');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Martin','Acosta','20-11223344-5','Colón 852','Pago en efectivo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Lucia','Castro','27-22334455-6','Independencia 963','Compra semanal');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Andres','Ortiz','20-33445566-7','Dorrego 159','Cliente activo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Camila','Silva','27-44556677-8','Italia 753','Promoción aplicada');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Fernando','Molina','20-55667788-9','España 357','Sin deudas');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Julieta','Herrera','27-66778899-1','Francia 951','Compra especial');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Ricardo','Medina','20-77889900-2','Peru 753','Cliente antiguo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Paula','Vargas','27-88990011-3','Paraguay 852','Pedido urgente');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Gabriel','Rojas','20-99001122-4','Chile 951','Compra empresarial');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Daniela','Navarro','27-10111213-5','Bolivia 159','Cliente regular');

insert into facturas (letra, numero, fecha, monto) values ('A',1001,'2024-01-15',15000.50);
insert into facturas (letra, numero, fecha, monto) values ('A',1002,'2024-01-20',23500.75);
insert into facturas (letra, numero, fecha, monto) values ('B',2001,'2024-02-05',18999.99);
insert into facturas (letra, numero, fecha, monto) values ('B',2002,'2024-02-18',12500.00);
insert into facturas (letra, numero, fecha, monto) values ('C',3001,'2024-03-02',9800.40);
insert into facturas (letra, numero, fecha, monto) values ('C',3002,'2024-03-10',45000.00);
insert into facturas (letra, numero, fecha, monto) values ('A',1003,'2024-03-15',22340.60);
insert into facturas (letra, numero, fecha, monto) values ('B',2003,'2024-04-01',17890.30);
insert into facturas (letra, numero, fecha, monto) values ('C',3003,'2024-04-12',15670.80);
insert into facturas (letra, numero, fecha, monto) values ('A',1004,'2024-05-05',30500.00);
insert into facturas (letra, numero, fecha, monto) values ('B',2004,'2024-05-18',11200.45);
insert into facturas (letra, numero, fecha, monto) values ('C',3004,'2024-06-07',26780.90);
insert into facturas (letra, numero, fecha, monto) values ('A',1005,'2024-06-20',13450.00);
insert into facturas (letra, numero, fecha, monto) values ('B',2005,'2024-07-11',9900.99);
insert into facturas (letra, numero, fecha, monto) values ('C',3005,'2024-07-25',41200.10);

insert into articulos (nombre, precio, stock) values ('Laptop Lenovo i5',350000.00,15);
insert into articulos (nombre, precio, stock) values ('Mouse Logitech',8500.50,50);
insert into articulos (nombre, precio, stock) values ('Teclado Mecanico Redragon',18500.75,30);
insert into articulos (nombre, precio, stock) values ('Monitor Samsung 24"',210000.00,20);
insert into articulos (nombre, precio, stock) values ('Impresora HP Laser',275000.90,10);
insert into articulos (nombre, precio, stock) values ('Disco SSD 1TB',95000.40,25);
insert into articulos (nombre, precio, stock) values ('Memoria RAM 16GB',72000.00,40);
insert into articulos (nombre, precio, stock) values ('Placa de Video RTX 4060',480000.00,8);
insert into articulos (nombre, precio, stock) values ('Gabinete ATX',65000.60,18);
insert into articulos (nombre, precio, stock) values ('Fuente 750W',89000.30,22);
insert into articulos (nombre, precio, stock) values ('Notebook HP Ryzen 7',420000.00,12);
insert into articulos (nombre, precio, stock) values ('Auriculares Bluetooth',19500.99,35);
insert into articulos (nombre, precio, stock) values ('Webcam Full HD',25400.80,27);
insert into articulos (nombre, precio, stock) values ('Silla Gamer',150000.00,9);
insert into articulos (nombre, precio, stock) values ('Tablet Samsung 10"',180000.50,14);

insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Alberto','Suarez','20-12121212-3','Maipu 123','Cliente nuevo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Carla','Mendez','27-13131313-4','San Juan 456','Compra mayorista');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Bruno','Ibarra','20-14141414-5','Junin 789','Pago en efectivo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Elena','Campos','27-15151515-6','Lima 321','Cliente frecuente');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Federico','Vega','20-16161616-7','Rioja 654','Sin observaciones');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Marina','Cabrera','27-17171717-8','Catamarca 987','Compra online');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Gustavo','Farias','20-18181818-9','Salta 147','Entrega programada');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Natalia','Paz','27-19191919-0','Formosa 258','Cliente activo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Hector','Leiva','20-20202020-1','Jujuy 369','Compra mensual');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Rocio','Aguilar','27-21212121-2','Chaco 741','Promocion aplicada');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Esteban','Luna','20-22222222-3','Tucuman 852','Cliente regular');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Veronica','Soto','27-23232323-4','Misiones 963','Pedido urgente');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Matias','Roldan','20-24242424-5','Santa Fe 159','Sin deuda');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Lorena','Godoy','27-25252525-6','Cordoba 753','Compra especial');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Cristian','Quiroga','20-26262626-7','Entre Rios 357','Cliente antiguo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Noelia','Benitez','27-27272727-8','Buenos Aires 951','Compra empresarial');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Damian','Peralta','20-28282828-9','Neuquen 753','Cliente premium');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Tamara','Cuevas','27-29292929-1','La Pampa 852','Compra semanal');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Jorge','Cardozo','20-30303030-2','San Luis 951','Pago tarjeta');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Melina','Villalba','27-31313131-3','Mendoza 159','Compra ocasional');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Sebastian','Ayala','20-32323232-4','Corrientes 357','Cliente activo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Daniel','Arce','20-33333333-5','Rawson 654','Sin comentarios');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Alicia','Ponce','27-34343434-6','Trelew 987','Compra online');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Ivan','Escobar','20-35353535-7','Ushuaia 111','Entrega rapida');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Patricia','Miranda','27-36363636-8','Bariloche 222','Cliente frecuente');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Leandro','Bravo','20-37373737-9','Rosario 333','Compra mayorista');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Claudia','Ocampo','27-38383838-1','Posadas 444','Promocion especial');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Ezequiel','Dominguez','20-39393939-2','Resistencia 555','Compra mensual');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Romina','Mora','27-40404040-3','San Rafael 666','Cliente nuevo');
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values ('Walter','Soria','20-41414141-4','Villa Maria 777','Pago efectivo');

insert into facturas (letra, numero, fecha, monto) values ('A',1006,'2024-08-01',18500.50);
insert into facturas (letra, numero, fecha, monto) values ('A',1007,'2024-08-05',22300.00);
insert into facturas (letra, numero, fecha, monto) values ('A',1008,'2024-08-12',15400.75);
insert into facturas (letra, numero, fecha, monto) values ('A',1009,'2024-08-18',31200.40);
insert into facturas (letra, numero, fecha, monto) values ('A',1010,'2024-08-25',9800.90);

insert into facturas (letra, numero, fecha, monto) values ('B',2006,'2024-09-01',14300.00);
insert into facturas (letra, numero, fecha, monto) values ('B',2007,'2024-09-07',27800.60);
insert into facturas (letra, numero, fecha, monto) values ('B',2008,'2024-09-15',35600.10);
insert into facturas (letra, numero, fecha, monto) values ('B',2009,'2024-09-21',11250.75);
insert into facturas (letra, numero, fecha, monto) values ('B',2010,'2024-09-28',19400.30);

insert into facturas (letra, numero, fecha, monto) values ('C',3006,'2024-10-02',8700.00);
insert into facturas (letra, numero, fecha, monto) values ('C',3007,'2024-10-09',26400.45);
insert into facturas (letra, numero, fecha, monto) values ('C',3008,'2024-10-16',32100.80);
insert into facturas (letra, numero, fecha, monto) values ('C',3009,'2024-10-23',17500.00);
insert into facturas (letra, numero, fecha, monto) values ('C',3010,'2024-10-30',28900.60);

insert into facturas (letra, numero, fecha, monto) values ('A',1011,'2024-11-05',45000.00);
insert into facturas (letra, numero, fecha, monto) values ('A',1012,'2024-11-12',23800.30);
insert into facturas (letra, numero, fecha, monto) values ('A',1013,'2024-11-20',16750.75);
insert into facturas (letra, numero, fecha, monto) values ('A',1014,'2024-11-27',29999.99);
insert into facturas (letra, numero, fecha, monto) values ('A',1015,'2024-12-02',13400.00);

insert into facturas (letra, numero, fecha, monto) values ('B',2011,'2024-12-05',18700.45);
insert into facturas (letra, numero, fecha, monto) values ('B',2012,'2024-12-10',9200.60);
insert into facturas (letra, numero, fecha, monto) values ('B',2013,'2024-12-15',41000.00);
insert into facturas (letra, numero, fecha, monto) values ('B',2014,'2024-12-20',22350.90);
insert into facturas (letra, numero, fecha, monto) values ('B',2015,'2024-12-28',30500.30);

insert into facturas (letra, numero, fecha, monto) values ('C',3011,'2025-01-03',19800.00);
insert into facturas (letra, numero, fecha, monto) values ('C',3012,'2025-01-08',27600.75);
insert into facturas (letra, numero, fecha, monto) values ('C',3013,'2025-01-15',35900.20);
insert into facturas (letra, numero, fecha, monto) values ('C',3014,'2025-01-22',14800.40);
insert into facturas (letra, numero, fecha, monto) values ('C',3015,'2025-01-30',26500.00);

insert into articulos (nombre, precio, stock) values ('Smartphone Samsung A54',250000.00,20);
insert into articulos (nombre, precio, stock) values ('Smartphone Motorola G84',210000.50,25);
insert into articulos (nombre, precio, stock) values ('Cargador Rapido USB-C',9500.75,60);
insert into articulos (nombre, precio, stock) values ('Cable HDMI 2m',4500.00,100);
insert into articulos (nombre, precio, stock) values ('Router TP-Link AC1200',38500.90,18);
insert into articulos (nombre, precio, stock) values ('Switch 8 Puertos',27500.40,22);
insert into articulos (nombre, precio, stock) values ('Disco Externo 2TB',120000.00,16);
insert into articulos (nombre, precio, stock) values ('Pendrive 64GB',8500.00,80);
insert into articulos (nombre, precio, stock) values ('Notebook Dell i7',520000.00,10);
insert into articulos (nombre, precio, stock) values ('Monitor LG 27"',295000.00,14);
insert into articulos (nombre, precio, stock) values ('Teclado Inalambrico',12500.60,45);
insert into articulos (nombre, precio, stock) values ('Mouse Gamer RGB',18500.30,35);
insert into articulos (nombre, precio, stock) values ('Microfono USB',36500.80,19);
insert into articulos (nombre, precio, stock) values ('Parlantes Bluetooth',27500.00,28);
insert into articulos (nombre, precio, stock) values ('Silla Oficina',98000.00,12);
insert into articulos (nombre, precio, stock) values ('Tablet Lenovo M10',175000.00,17);
insert into articulos (nombre, precio, stock) values ('Camara Seguridad IP',45000.50,30);
insert into articulos (nombre, precio, stock) values ('Smartwatch Xiaomi',89000.00,26);
insert into articulos (nombre, precio, stock) values ('Hub USB 4 Puertos',7200.75,55);
insert into articulos (nombre, precio, stock) values ('Placa Madre B550',185000.00,11);
insert into articulos (nombre, precio, stock) values ('Procesador Ryzen 5',265000.00,13);
insert into articulos (nombre, precio, stock) values ('Procesador Intel i7',345000.00,9);
insert into articulos (nombre, precio, stock) values ('Cooler CPU RGB',22000.00,33);
insert into articulos (nombre, precio, stock) values ('Gabinete Gamer Vidrio',110000.00,15);
insert into articulos (nombre, precio, stock) values ('Fuente 650W',78000.00,21);
insert into articulos (nombre, precio, stock) values ('Memoria RAM 8GB',42000.00,50);
insert into articulos (nombre, precio, stock) values ('SSD NVMe 500GB',67000.00,34);
insert into articulos (nombre, precio, stock) values ('Joystick PS5',125000.00,18);
insert into articulos (nombre, precio, stock) values ('Joystick Xbox',118000.00,20);
insert into articulos (nombre, precio, stock) values ('Impresora Epson Multifuncion',198000.00,14);

-- DML Select

-- Comodín *	permite ver todos los campos de los registros
select * from clientes;
select nombre,apellido from clientes;
select apellido,nombre,apellido,curdate() fecha from clientes;
select concat(apellido,', ',nombre) nombre from clientes;
select concat(apellido,', ',nombre) nombre, direccion from clientes;
-- columnas calculadas
select letra,numero,fecha,monto,monto*0.21 valor_iva from facturas;
select letra,numero,fecha,monto,round(monto*0.21,2) valor_iva from facturas;

INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
('Laura', 'García', '20-12345678-3', 'Av. Siempre Viva 123', 'Cliente frecuente'),
('Laura', 'Martínez', '27-23456789-4', 'Calle Falsa 456', 'Prefiere contacto por email'),
('Laura', 'Rodríguez', '23-34567890-5', 'San Martín 789', 'Sin comentarios'),
('Laura', 'López', '24-45678901-6', 'Belgrano 321', 'Cliente nuevo'),
('Laura', 'Fernández', '25-56789012-7', 'Rivadavia 654', 'Compra mensual'),
('Laura', 'Gómez', '26-67890123-8', 'Mitre 987', 'Solicita factura A'),
('Laura', 'Díaz', '27-78901234-9', 'Sarmiento 159', 'Buen historial de pagos'),
('Laura', 'Pérez', '20-89012345-0', 'Lavalle 753', 'Prefiere WhatsApp'),
('Laura', 'Sánchez', '23-90123456-1', 'Corrientes 852', 'Cliente VIP'),
('Laura', 'Romero', '24-01234567-2', 'Callao 951', 'Sin deudas');
INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
('Carlos', 'Fernandez', '20-11223344-5', 'Av. Córdoba 1234', 'Cliente nuevo'),
('Miguel', 'Fernandez', '23-22334455-6', 'Av. Santa Fe 2345', 'Compra ocasional'),
('Jorge', 'Fernandez', '24-33445566-7', 'Av. Cabildo 3456', 'Prefiere atención telefónica'),
('Ricardo', 'Fernandez', '27-44556677-8', 'Av. Nazca 4567', 'Buen historial crediticio'),
('Diego', 'Fernandez', '20-55667788-9', 'Av. Directorio 5678', 'Cliente frecuente');
-- filtrado de registros
select * from clientes where nombre='Laura';

-- operadores lógicos and or
select * from clientes where nombre='Laura' and apellido='Fernandez';
select * from clientes where nombre='Laura' or apellido='Fernandez';

select * from clientes where codigo=5;
select * from clientes where codigo<5;
select * from clientes where codigo<=5;

-- operador not != <>
select * from clientes where nombre!='Laura';
select * from clientes where nombre<>'Laura';

-- Mostrar las facturas con monto entre 20000 y 30000
select * from facturas where monto>=20000 and monto<=30000;

-- Operador between
select * from facturas where monto between 20000 and 30000;

-- Mostrar las facturas cuyo monto no este entre 20000 y 30000
select * from facturas where monto<20000 or monto>30000;
select * from facturas where monto not between 20000 and 30000;

-- Mostrar los clientes con código 5, 17, 23, 31, 48
select * from clientes
	where codigo=5
    or codigo=17
    or codigo=23
    or codigo=31
    or codigo=48;

-- Operador in
select * from clientes where codigo in(5,17,23,31,48);

-- Mostrar todos los clientes menos los clientes con código 5, 17, 23
select * from clientes 
	where codigo!=5
    and codigo!=17
    and codigo!=23;
select * from clientes where codigo not in(5,17,23);

-- Valores null
insert into clientes (nombre,apellido,direccion) values
	('Angela','Gallardo',null),
    ('Lautaro','Godoy','');
    
select * from clientes where direccion is null;
select * from clientes where direccion is not null;
select * from clientes where direccion='';

select * from clientes where direccion=null;	-- no funciona

-- busqueda de expresiones
insert into clientes (nombre,apellido) values 
	('Omar','Perez'), ('Marcia','Perez'),
    ('Armando','Perez'), ('Carlos','Perez'),
	('Marta','Perez'), ('María','Perez'),
    ('Marcelo','Perez'), ('Marcela','Perez'),
    ('Magali','Perez'), ('Melina','Perez'),
    ('Mirta','Perez'), ('Mercedes','Perez');
-- select * from libros where autor='Borges';
-- select * from libros where autor like '%Borges%';
select * from clientes where nombre like 'm%';
select * from clientes where nombre like 'ma%';
select * from clientes where nombre like 'mar%';
select * from clientes where nombre like '%a';
select * from clientes where nombre like '%ar%';
select * from clientes where nombre like 'm_r%';
select * from clientes where nombre like '___';  -- 3
select * from clientes where nombre like '____';  -- 4
select * from clientes where nombre like '_____%';  -- 5

select * from clientes where nombre not like 'm%';
select * from clientes where nombre not like '_____%'; -- 5

-- order by
select * from clientes;
select * from clientes order by apellido;
select * from clientes order by apellido asc;
select * from clientes order by apellido desc;
select * from clientes order by apellido,nombre;

-- Listado de facturas ordenadas por monto de menor a mayor
select * from facturas order by monto;

-- Listado de facturas ordenadas por fecha de la ultima a la primera
select * from facturas order by fecha desc;
 

