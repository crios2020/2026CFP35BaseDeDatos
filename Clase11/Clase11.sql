-- codeshare.io/crios2020


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

-- Comando DML Insert

-- insert normal con definición de campos							ANSI SQL
insert into clientes (nombre,apellido) values ('Juan','Zabala');
insert into clientes (apellido,nombre) values ('Pereyra','Sandra');

-- insert abreviado sin definición de campos						ANSI SQL
insert into clientes values (null,'Laura','Lescano','2343243','Lima 333','');

-- insert set														NO ANSI SQL
insert clientes set nombre='Carlos', apellido='Rios';
insert clientes (nombre,apellido) values ('Juan','Zabala');

-- insert masivo													ANSI
insert into clientes (nombre,apellido) values
	('Lorena','Segovia'),
    ('Mariela','Zabala'),
    ('Diego','Perez'),
    ('Miriam','Salinas');

-- Comando DML Delete
delete from clientes where codigo=7;			-- 1 o ninguno

delete from clientes where nombre='Juan';		-- 0 1 o muchos		

-- desactivo la protección safe updates
set sql_safe_updates=0;						-- =1

-- borrado total borrado masivo
-- delete from clientes;

select * from clientes;

-- Comando DML Update
update clientes set nombre='Marianela' where codigo=2;
update clientes set nombre='Analaura', apellido='Garcìa' where codigo=4;

  
-- Laboratorio 
-- Usando la base de datos negocio.

-- Basándose en la tabla clientes realizar los siguientes puntos.

-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar 
--      campos como parte de la sentencias, es decir de la forma simplificada.
insert into clientes values 
	(null,'Leandro','Martinez','324432432','viel 324',''),
    (null,'Gerardo','Fernandez','34243243','Lima 222',''),
    (null,'Flavia','Soto','344343','Moròn 433',''),
    (null,'Carolina','Carrasco','32432424','Medrano 234',''),
    (null,'Marta','Sosa','32423423','Perù 434','');
    
select * from clientes;
-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la 
--      sentencias, es decir de la forma extendida. Completar 
--      solo los campos nombre, apellido y CUIT.
insert into clientes (nombre,apellido,cuit) values
	('Ana','Perez','545455'),
    ('Carla','Perez','6546565'),
    ('Moria','Perez','6765756'),
    ('Mario','Perez','5673555'),
    ('Mariano','Perez','342343234');

-- 3-	Actualizar el nombre del cliente 1 a Jose.
update clientes set nombre='Jose' where codigo=1;

-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
update clientes set nombre='Pablo', apellido='Fuentes', cuit='20-21053119-0' where codigo=3;
-- 5-	Actualizar todos los comentarios NULL  a ''.
update clientes set comentarios='' where comentarios is null;
set sql_safe_updates=0;

-- 6-	Eliminar los clientes con apellido Perez.
delete from clientes where apellido='Perez';

-- 7-	Eliminar los clientes con CUIT Terminan en 0.
delete from clientes where cuit like '%0';

select * from clientes;
select * from articulos;

-- Basando se en la tabla artículos, realizar los siguientes puntos.
-- 	8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
update articulos set precio=round(precio*1.2,2) where precio<=50;
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
update articulos set precio=round(precio*1.15,2) where precio>50;
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
update articulos set precio=round(precio*0.95,2) where precio>200;
-- 	11- Eliminar los artículos con stock menor a 0.
delete from articulos where precio <0;

-- 	12- Agregar a la tabla articulos, los campos stockMinimo y stockMaximo. (usar alter table add)
alter table articulos add stockMinimo int;
alter table articulos add stockMaximo int;
select * from articulos;
update articulos set stockMinimo=20, stockMaximo=50;
--  13- Completar en los registros los valores de los campos stockMinimo y stockMaximo (usar update)
--      teniendo en cuenta que el stock mínimo debe ser menor que el stock máximo.
update articulos set stockMinimo=20, stockMaximo=50;

use negocio;
--  14- Lista los articulos que se deben reponer y que cantidad se debe reponer de cada articulos.
--      Tener en cuenta que se debe reponer cuando el stock es menor al stockMinimo y la cantidad de articulos a 
--      reponer es stockMaximo - stock.
select codigo, nombre, stock, stockMinimo, stockMaximo, stockMaximo-stock 'cantidad a reponer', precio 
	from articulos where stock<stockMinimo;
--  15- Calcular el valor de venta de toda la mercaderia que hay en stock.
select codigo, nombre, stock, stockMinimo, stockMaximo, precio, precio*stock valor_total
	from articulos;
--  16- Calcular el valor de venta + iva de toda la mercaderia que hay en stock.
select codigo, nombre, stock, stockMinimo, stockMaximo, round(precio*stock*1.21,2) valor_total_con_iva 
	from articulos;
        
-- Alter table DDL
-- Alter table add
alter table clientes add edad int after direccion;
describe clientes; 
select * from clientes;
update clientes set edad=34 where codigo=2; 

-- Alter table drop
alter table clientes drop edad;      
        
-- Funciones de agrupamiento
-- Función Max(arg) arg: numerico texto o date
select max(monto) monto_máximo from facturas;
select max(nombre) ultimo_nombre from clientes;
select max(fecha) ultima_factura from facturas;

-- Función min(arg) arg: numerico texto o date
select min(monto) monto_mínimo from facturas;
select min(nombre) primer_nombre from clientes;
select min(fecha) primer_fecha from facturas;

-- función sum(arg) arg: numerico
select sum(monto) total_facturado from facturas;

-- función avg(arg) arg: numerico
select avg(monto) valor_promedio from facturas;
select round(avg(monto),2) valor_promedio from facturas;

-- función count(*)
select count(*) cantidad from facturas;
select count(*) cantidad from facturas where letra='A';
select count(*) cantidad from clientes;

-- Agrupamiento con group by											-- Letra	Monto
select letra, sum(monto) total from facturas where letra='A';			-- 	A		330945,44
select letra, sum(monto) total from facturas where letra='B';			-- 	B 		300595,73
select letra, sum(monto) total from facturas where letra='C';			-- 	C 		376655,40

select letra, sum(monto) total from facturas group by letra;



-- 1- Crear la tabla 'autos' en una nueva base de datos (Vehiculos) con el siguiente detalle:

-- 	codigo	INTEGER y PK
-- 	marca	VARCHAR(25)
-- 	modelo	VARCHAR(25)
-- 	color	VARCHAR(25)
-- 	anio	INTEGER
-- 	precio	DOUBLE

--  nota: (anio - año) seguramente tu computadora tiene soporte para la letra ñ,
--        pero muchas instalaciones (ej: web host alquilados) pueden que no tenga soporte para esa letra.
-- 		  en programación se acostumbra a usar los caracteres menores a 128 en la tabla ASCII.

-- 2- Agregar el campo patente despues del campo modelo.

-- 3- Cargar la tabla con 15 autos (hacerlo con MySQL WorkBench o el INSERT INTO).
-- 4- Realizar las siguientes consultas:
-- 	a. obtener el precio máximo.
-- 	b. obtener el precio mínimo.
-- 	c. obtener el precio mínimo entre los años 2010 y 2018.
-- 	d. obtener el precio promedio.
-- 	e. obtener el precio promedio del año 2016.
-- 	f. obtener la cantidad de autos.
-- 	g. obtener la cantidad de autos que tienen un precio entre $235.000 y $240.000.
-- 	h. obtener la cantidad de autos que hay en cada año.
-- 	i. obtener la cantidad de autos y el precio promedio en cada año.
-- 	j. obtener la suma de precios y el promedio de precios según marca.
--  k. informar los autos con el menor precio.
--  l. informar los autos con el menor precio entre los años 2016 y 2018.
--  m. listar los autos ordenados ascendentemente por marca,modelo,año.
--  n. contar cuantos autos hay de cada marca.
--  o. borrar los autos del siglo pasado.

