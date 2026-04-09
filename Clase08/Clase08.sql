
-- Laboratorio 2

-- 1 - Ingrese a la base de datos negocio.
use negocio;

-- 2 - Ingrese 5 registros aleatorios en cada tabla.
INSERT INTO articulos (nombre, precio, stock) VALUES ('Teclado mecánico RGB', 12500.50, 15);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Mouse inalámbrico', 4500.99, 30);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Monitor 24 pulgadas', 98500.75, 8);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Auriculares Bluetooth', 18999.90, 20);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Disco SSD 1TB', 76500.00, 12);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Memoria RAM 16GB', 43200.40, 25);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Placa de video RTX 4060', 450000.99, 5);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Fuente 650W certificada', 28999.99, 10);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Gabinete gamer', 55999.50, 7);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Webcam HD', 13999.00, 18);

INSERT INTO articulos (nombre, precio, stock) VALUES ('Silla ergonómica', 120000.00, 6);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Notebook i5 12gen', 650000.00, 4);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Tablet 10 pulgadas', 210000.25, 9);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Cargador rápido USB-C', 8500.75, 40);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Cable HDMI 2m', 3200.50, 50);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Parlantes 2.0', 15999.99, 14);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Router WiFi 6', 78000.00, 11);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Impresora multifunción', 132000.80, 3);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Microfono USB', 27500.60, 16);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Smartwatch deportivo', 98000.00, 13);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Lampara led 3 W', 78000.00, 11);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Lampara led 8 W', 132000.80, 3);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Lampara led 12 W', 27500.60, 16);
INSERT INTO articulos (nombre, precio, stock) VALUES ('Lampara led 16 W', 98000.00, 13);
-- 3 - Basándose en la tabla artículos obtener los siguientes listados.

-- a-	artículos con precio mayor a 100
select * from articulos where precio>100;
-- b-	artículos con precio entre 20 y 40 (usar < y >)
select * from articulos where precio >=20 and precio <=40;
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
select * from articulos where precio between 40 and 60;
-- d-	artículos con precio = 20 y stock mayor a 30
select * from articulos where precio =20 and stock >30;
-- e-	artículos con precio (12,20,30) no usar IN
select * from articulos where precio=12 or precio=20 or precio=30;
-- f-	artículos con precio (12,20,30) usar el IN
select * from articulos where precio in (12,20,30);
-- g-	artículos que su precio no sea (12,20,30)
select * from articulos where precio not in (12,20,30);
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
select codigo,nombre,precio,round(precio*1.21,2) precio_con_iva, stock
	from articulos
	where round(precio*1.21,2)>100;
-- i-   listar nombre y descripción de los artículos que no cuesten $100
select nombre from articulos where precio<>100;
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
select * from articulos where nombre like '%lampara%';
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga 
--      la letra 'a'
select * from articulos where precio<200 and nombre not like '%a%';
-- 	2- Listar los artículos ordenados por precio de mayor a menor, 
--     y si hubiera precio iguales deben quedar ordenados por nombre.
select * from articulos order by precio,nombre;
-- 	3- Listar todos los artículos incluyendo una columna denominada precio
--     con IVA, la cual deberá tener el monto con el iva del producto.
select codigo, nombre, precio, round(precio*1.21,2) precio_con_iva
	from articulos; 
-- 	4- Listar todos los artículos incluyendo una columna denominada 
--     'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y 
--      es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de 
--      interés.
select codigo,nombre,precio,stock, 3 cantidad_de_cuotas, 
		round(precio/3*1.05,2) valor_cuota
	from articulos;