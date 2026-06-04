
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

-- https://codeshare.io/crios2020


-- creamos el campo foreign key (Clave Foranea) (FK) en la tabla facturas
alter table facturas add codigo_cliente int;
describe facturas;
select * from facturas;
select * from clientes;
set sql_safe_updates=0;
update facturas set codigo_cliente=1 where letra='a';
update facturas set codigo_cliente=2 where letra='b';
update facturas set codigo_cliente=3 where letra='c';

-- creamos la resctricción de Clave Foranea
alter table facturas
	add constraint 
    foreign key(codigo_cliente)
    references clientes(codigo);
    
-- probamos la restriccion
insert into facturas values ('a',5001,curdate(),5400,605);		-- no anda
insert into facturas values ('a',5002,curdate(),5400,5);		-- anda


-- Laboratorio 
-- Usando la base de datos negocio (solo tablas clientes y facturas).

show databases;
use negocio;
insert into facturas values 
    ('C',5001,curdate(),6000,10),
    ('C',5002,curdate(),13000,15),
    ('C',5003,curdate(),34000,16),
    ('C',5004,curdate(),23500,10);
-- 1-	Informar que clientes (codigo, nombre, apellido) han comprado en el día de hoy.
select distinct codigo, nombre, apellido 
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    where fecha=curdate();
-- 2-	Informar la suma de los montos de cada cliente (código,nombre,apellido,total_comprado).
select distinct c.codigo, c.nombre, c.apellido, round(sum(monto),2) total_facturado 
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    group by c.codigo;
-- 3-	Informar cual es el cliente que más ha comprado (codigo, nombre, apellido).
select distinct c.codigo, c.nombre, c.apellido, round(sum(monto),2) total_facturado 
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    group by c.codigo order by total_facturado desc limit 1;

select distinct c.codigo, c.nombre, c.apellido, round(sum(monto),2) total_facturado 
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    group by c.codigo
    having total_facturado=(select round(sum(monto),2) total
                            from clientes c join facturas f on c.codigo=f.codigo_cliente
                            group by c.codigo order by total desc limit 1);

-- 4-	Informar la cantidad de facturas de cada cliente (codigo, nombre, apellido,cantidad_facturas).
select distinct c.codigo, c.nombre, c.apellido, count(*) cantidad_facturas
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    group by c.codigo;
-- 5-	Informar quienes compraron el primer día de ventas (codigo, nombre, apellido).
select distinct codigo, nombre, apellido 
    from clientes c join facturas f on c.codigo=f.codigo_cliente 
    where fecha=(select min(fecha) from facturas);

-- 6-	Informar que compro el cliente Juan Perez (letra,nro,fecha,monto).
select letra,numero,fecha,monto 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    where c.nombre='Juan' and c.apellido='Perez' order by fecha desc; 


-- Agregamos la tabla detalles
show databases;
use negocio;
drop table if exists detalles;
create table detalles(
    letra char(1),
    numero int,
    codigo int,
    cantidad int,
    valor_unitario double,
    primary key(letra,numero,codigo)
);
describe facturas;
describe detalles;

-- Agregamos las restricciones de FK
alter table detalles 
    add constraint FK_Detalles_Facturas 
    foreign key(letra,numero)
    references facturas(letra,numero);

alter table detalles
    add constraint FK_Detalles_Articulos
    foreign key(codigo)
    references articulos(codigo);

insert into detalles values
('A',1001,1,2,350000.00),
('A',1001,2,3,8500.50),
('A',1002,3,1,18500.75),
('A',1002,4,2,210000.00),
('B',2001,5,1,275000.90),
('B',2001,6,2,95000.40),
('B',2002,7,4,72000.00),
('B',2002,8,1,480000.00),
('C',3001,9,2,65000.60),
('C',3001,10,1,89000.30),
('C',3002,11,1,420000.00),
('C',3002,12,2,19500.99),
('A',1003,13,3,25400.80),
('A',1003,14,1,150000.00),
('B',2003,15,2,180000.50),
('B',2003,16,1,250000.00),
('C',3003,17,2,210000.50),
('C',3003,18,5,9500.75),
('A',1004,19,10,4500.00),
('A',1004,20,1,38500.90),
('B',2004,21,2,27500.40),
('B',2004,22,1,120000.00),
('C',3004,23,4,8500.00),
('C',3004,24,1,520000.00),
('A',1005,25,2,295000.00),
('A',1005,26,3,12500.60),
('B',2005,27,1,18500.30),
('B',2005,28,2,36500.80),
('C',3005,29,2,27500.00),
('C',3005,30,1,98000.00),
('A',1006,31,2,175000.00),
('A',1006,32,3,45000.50),
('A',1007,33,1,89000.00),
('A',1007,34,5,7200.75),
('A',1008,35,1,185000.00),
('A',1008,36,1,265000.00),
('A',1009,37,1,345000.00),
('A',1009,38,2,22000.00),
('A',1010,39,1,110000.00),
('A',1010,40,2,78000.00),
('B',2006,41,4,42000.00),
('B',2006,42,2,67000.00),
('B',2007,43,1,125000.00),
('B',2007,44,1,118000.00),
('B',2008,45,1,198000.00),
('B',2008,1,1,350000.00),
('B',2009,2,2,8500.50),
('B',2009,3,2,18500.75),
('B',2010,4,1,210000.00),
('B',2010,5,1,275000.90),
('C',3011,6,1,95000.40),
('C',3011,7,2,72000.00),
('C',3012,8,1,480000.00),
('C',3012,9,2,65000.60),
('C',3013,10,1,89000.30),
('C',3013,11,1,420000.00),
('C',3014,12,2,19500.99),
('C',3014,13,3,25400.80),
('C',3015,14,1,150000.00),
('C',3015,15,1,180000.50);

select * from detalles;
select count(*) cantidad from detalles;

use negocio;
show tables;

-- consulta del producto cartesiano
select count(*) cantidad from clientes;             -- 50
select count(*) cantidad from facturas;             -- 50
select count(*) cantidad from detalles;             -- 60
select count(*) cantidad from articulos;            -- 45

select 50*50*60*45;                                 -- 6750000

select * from clientes, facturas, detalles, articulos;
select count(*) cantidad from clientes, facturas, detalles, articulos;
use negocio;
-- consulta del producto relacionado
select * 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo;

select count(*) cantidad 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo;
use negocio;
-- Que articulos compro Juan Perez?
select a.codigo, a.nombre, a.precio, a.stock
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo
    where c.nombre='Juan' and c.apellido='Perez';