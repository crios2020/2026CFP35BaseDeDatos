
-- 1- Crear la tabla 'autos' en una nueva base de datos (Vehiculos) con el siguiente detalle:

-- 	codigo	INTEGER y PK
-- 	marca	VARCHAR(25)
-- 	modelo	VARCHAR(25)
-- 	color	VARCHAR(25)
-- 	anio	INTEGER
-- 	precio	DOUBLE
drop database if exists vehiculos;
create database vehiculos;
use vehiculos;
create table autos(
	codigo int auto_increment primary key,
    marca varchar(25),
    modelo varchar(25),
    color varchar(25),
    anio int,
    precio double
);

--  nota: (anio - año) seguramente tu computadora tiene soporte para la letra ñ,
--        pero muchas instalaciones (ej: web host alquilados) pueden que no tenga soporte para esa letra.
-- 		  en programación se acostumbra a usar los caracteres menores a 128 en la tabla ASCII.

-- 2- Agregar el campo patente despues del campo modelo.
alter table autos add patente varchar(15) after modelo;

-- 3- Cargar la tabla con 15 autos (hacerlo con MySQL WorkBench o el INSERT INTO).
INSERT INTO autos (marca, modelo, color, anio, precio) VALUES
('Toyota','Corolla','Blanco',2018,18500),
('Ford','Fiesta','Negro',2016,13200),
('Chevrolet','Cruze','Gris',2020,21500),
('Volkswagen','Golf','Rojo',2017,17800),
('Renault','Clio','Azul',2015,9800),
('Peugeot','208','Blanco',2019,16500),
('Fiat','Cronos','Negro',2021,14200),
('Honda','Civic','Gris',2018,19500),
('Nissan','Sentra','Azul',2017,16000),
('Hyundai','Elantra','Rojo',2019,18200),
('Toyota','Hilux','Blanco',2022,32000),
('Ford','Ranger','Gris',2021,30500),
('Chevrolet','Onix','Negro',2020,13800),
('Volkswagen','Polo','Azul',2019,15000),
('Renault','Sandero','Rojo',2018,12000),
('Peugeot','308','Blanco',2017,14500),
('Fiat','Argo','Gris',2021,13500),
('Honda','Fit','Azul',2016,12500),
('Nissan','Versa','Blanco',2020,14000),
('Hyundai','Accent','Negro',2018,13000),
('Toyota','Yaris','Rojo',2022,17500),
('Ford','Focus','Gris',2017,15500),
('Chevrolet','Tracker','Blanco',2021,22000),
('Volkswagen','Vento','Negro',2019,20000),
('Renault','Duster','Azul',2020,21000),
('Peugeot','2008','Gris',2021,19500),
('Fiat','Toro','Rojo',2022,28000),
('Honda','HR-V','Blanco',2021,24000),
('Nissan','Kicks','Negro',2020,21000),
('Hyundai','Tucson','Gris',2022,30000),
('Toyota','Camry','Blanco',2019,27000),
('Ford','EcoSport','Rojo',2018,16000),
('Chevrolet','Spin','Gris',2017,14500),
('Volkswagen','Amarok','Negro',2021,35000),
('Renault','Logan','Blanco',2016,11000),
('Peugeot','Partner','Azul',2015,9500),
('Fiat','Uno','Rojo',2014,8000),
('Honda','Accord','Negro',2018,26000),
('Nissan','Frontier','Gris',2022,33000),
('Hyundai','Santa Fe','Blanco',2021,37000),
('Toyota','Etios','Azul',2017,12000),
('Ford','Ka','Blanco',2018,11500),
('Chevrolet','S10','Negro',2020,29000),
('Volkswagen','Gol','Rojo',2016,9500),
('Renault','Kwid','Gris',2021,10500),
('Peugeot','Expert','Blanco',2022,28000),
('Fiat','Fiorino','Rojo',2019,13500),
('Honda','CR-V','Negro',2021,32000),
('Nissan','March','Azul',2015,9000),
('Hyundai','i30','Gris',2017,15000),
('Toyota','Corolla','Negro',2020,21000),
('Ford','Fiesta','Azul',2015,11000),
('Chevrolet','Cruze','Blanco',2019,19500),
('Volkswagen','Golf','Gris',2018,18500),
('Renault','Clio','Rojo',2014,8500),
('Peugeot','208','Negro',2021,17500),
('Fiat','Cronos','Blanco',2022,15000),
('Honda','Civic','Azul',2017,18000),
('Nissan','Sentra','Gris',2016,15000),
('Hyundai','Elantra','Negro',2018,17000);

select * from autos;

-- 4- Realizar las siguientes consultas:
-- 	a. obtener el precio máximo.
select max(precio) precio_máximo from autos;
-- 	b. obtener el precio mínimo.
select min(precio) precio_máximo from autos;
-- 	c. obtener el precio mínimo entre los años 2010 y 2018.
select min(precio) precio_máximo from autos where anio between 2010 and 2018;
-- 	d. obtener el precio promedio.
select round(avg(precio),2) precio_promedio from autos;
-- 	e. obtener el precio promedio del año 2016.
select round(avg(precio),2) precio_promedio from autos where anio=2016;
-- 	f. obtener la cantidad de autos.
select count(*) cantidad_autos from autos;
-- 	g. obtener la cantidad de autos que tienen un precio entre $235.000 y $240.000.
select count(*) cantidad_autos from autos where precio between 23500 and 24000;
-- 	h. obtener la cantidad de autos que hay en cada año.
select anio año, count(*) cantidad from autos group by anio;
-- 	i. obtener la cantidad de autos y el precio promedio en cada año.
select anio año, count(*) cantidad, round(avg(precio),2) precio_promedio 
	from autos group by anio;
-- 	j. obtener la suma de precios y el promedio de precios según marca.
select marca, sum(precio) suma_de_precios, round(avg(precio),2) promedio_de_precios 
	from autos group by marca;
--  k. informar los autos con el menor precio.
select min(precio) from autos;
select * from autos where precio=(select min(precio) from autos);

-- bonus: Informar los autos con el mayor precio
select * from autos where precio=(select max(precio) from autos);

--  l. informar los autos con el menor precio entre los años 2016 y 2018.
select * from autos 
	where precio=(select min(precio) from autos where anio between 2016 and 2018)
    and anio between 2016 and 2018;

--  m. listar los autos ordenados ascendentemente por marca,modelo,año.
select * from autos order by marca,modelo,anio;

--  n. contar cuantos autos hay de cada marca.
select marca, count(*) cantidad from autos group by marca;
--  o. borrar los autos del siglo pasado.
delete from autos where anio<2000;
set sql_safe_updates=0;
