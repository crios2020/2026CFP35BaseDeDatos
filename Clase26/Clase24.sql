-- Crear la base de datos del diagrama Reservas.png
-- Ingresar registros de prueba.
-- Realizar consultas de prueba.


CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE Habitaciones (
    habitacion_numero INT PRIMARY KEY,
    precio_por_noche DECIMAL(10,2),
    piso INT,
    max_personas TINYINT,
    tiene_cama_bebe TINYINT,
    tiene_ducha TINYINT,
    tiene_bano TINYINT,
    tiene_balcon TINYINT
);

CREATE TABLE Huespedes (
    huesped_id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    telefono DOUBLE,
    correo VARCHAR(45),
    direccion VARCHAR(45),
    ciudad VARCHAR(45),
    pais VARCHAR(45)
);

CREATE TABLE Reservas (
    reservas_id INT PRIMARY KEY AUTO_INCREMENT,
    inicio_fecha DATETIME,
    fin_fecha DATETIME,
    habitacion INT,
    huesped INT,
    FOREIGN KEY (habitacion)
        REFERENCES Habitaciones(habitacion_numero),
    FOREIGN KEY (huesped)
        REFERENCES Huespedes(huesped_id)
);

INSERT INTO Habitaciones VALUES
    (101,15000,1,2,0,1,1,0),
    (102,18000,1,3,1,1,1,1),
    (103,20000,1,4,0,1,1,1),
    (104,22000,1,4,1,1,1,1),
    (105,17000,1,2,0,1,1,0),
    (201,25000,2,2,0,1,1,1),
    (202,28000,2,3,1,1,1,1),
    (203,30000,2,4,0,1,1,1),
    (204,32000,2,5,1,1,1,1),
    (205,27000,2,2,0,1,1,0),
    (301,35000,3,2,0,1,1,1),
    (302,38000,3,3,1,1,1,1),
    (303,40000,3,4,0,1,1,1),
    (304,42000,3,5,1,1,1,1),
    (305,37000,3,2,0,1,1,0),
    (401,45000,4,2,0,1,1,1),
    (402,48000,4,3,1,1,1,1),
    (403,50000,4,4,0,1,1,1),
    (404,52000,4,5,1,1,1,1),
    (405,47000,4,2,0,1,1,0);

INSERT INTO Huespedes
(nombres,apellidos,telefono,correo,direccion,ciudad,pais)
VALUES
    ('Juan','Perez',111111111,'juan@mail.com','San Martin 123','Buenos Aires','Argentina'),
    ('Maria','Gomez',222222222,'maria@mail.com','Belgrano 456','Cordoba','Argentina'),
    ('Carlos','Lopez',333333333,'carlos@mail.com','Mitre 789','Rosario','Argentina'),
    ('Ana','Fernandez',444444444,'ana@mail.com','Roca 321','Mendoza','Argentina'),
    ('Luis','Martinez',555555555,'luis@mail.com','Colon 654','Salta','Argentina'),
    ('Laura','Diaz',666666666,'laura@mail.com','Brown 100','La Plata','Argentina'),
    ('Pedro','Sosa',777777777,'pedro@mail.com','Italia 200','Neuquen','Argentina'),
    ('Sofia','Ruiz',888888888,'sofia@mail.com','Peru 300','Tucuman','Argentina'),
    ('Diego','Romero',999999999,'diego@mail.com','Chile 400','Posadas','Argentina'),
    ('Valeria','Torres',101010101,'vale@mail.com','Urquiza 500','Parana','Argentina'),
    ('Martin','Castro',202020202,'martin@mail.com','Rivadavia 600','Cordoba','Argentina'),
    ('Julieta','Benitez',303030303,'julieta@mail.com','Sarmiento 700','Santa Fe','Argentina'),
    ('Pablo','Acosta',404040404,'pablo@mail.com','Lavalle 800','Resistencia','Argentina'),
    ('Carla','Suarez',505050505,'carla@mail.com','Moreno 900','San Juan','Argentina'),
    ('Nicolas','Silva',606060606,'nico@mail.com','Alberdi 1000','Rio Cuarto','Argentina'),
    ('Camila','Molina',707070707,'camila@mail.com','Alem 1100','Trelew','Argentina'),
    ('Jorge','Vega',808080808,'jorge@mail.com','Paz 1200','Ushuaia','Argentina'),
    ('Lucia','Rios',909090909,'lucia@mail.com','Laprida 1300','Corrientes','Argentina'),
    ('Fernando','Herrera',121212121,'fernando@mail.com','Balcarce 1400','Jujuy','Argentina'),
    ('Paula','Navarro',131313131,'paula@mail.com','Buenos Aires 1500','Catamarca','Argentina');

INSERT INTO Reservas
(inicio_fecha,fin_fecha,habitacion,huesped)
VALUES
    ('2026-01-05','2026-01-10',101,1),
    ('2026-01-07','2026-01-12',102,2),
    ('2026-01-10','2026-01-15',103,3),
    ('2026-01-12','2026-01-18',104,4),
    ('2026-01-15','2026-01-20',105,5),
    ('2026-02-01','2026-02-05',201,6),
    ('2026-02-03','2026-02-07',202,7),
    ('2026-02-05','2026-02-10',203,8),
    ('2026-02-08','2026-02-12',204,9),
    ('2026-02-10','2026-02-15',205,10),
    ('2026-03-01','2026-03-05',301,11),
    ('2026-03-02','2026-03-06',302,12),
    ('2026-03-04','2026-03-08',303,13),
    ('2026-03-06','2026-03-10',304,14),
    ('2026-03-08','2026-03-12',305,15),
    ('2026-04-01','2026-04-05',401,16),
    ('2026-04-02','2026-04-06',402,17),
    ('2026-04-03','2026-04-07',403,18),
    ('2026-04-04','2026-04-08',404,19),
    ('2026-04-05','2026-04-09',405,20);

-- Consultas de prueba
-- Consulta 1: Mostrar todas las reservas con nombre del huésped
SELECT r.reservas_id,
       h.nombres,
       h.apellidos,
       r.inicio_fecha,
       r.fin_fecha
    FROM Reservas r
    INNER JOIN Huespedes h
    ON r.huesped = h.huesped_id;

-- Consulta 2: Habitaciones con balcón
SELECT *
    FROM Habitaciones
    WHERE tiene_balcon = 1;

-- Consulta 3: Reservas de habitaciones del piso 3
SELECT r.reservas_id,
       hab.habitacion_numero,
       hab.piso
    FROM Reservas r
    INNER JOIN Habitaciones hab
    ON r.habitacion = hab.habitacion_numero
    WHERE hab.piso = 3;

-- Consulta 4: Cantidad de reservas por huésped
SELECT h.nombres,
       h.apellidos,
       COUNT(*) AS cantidad_reservas
    FROM Reservas r
    INNER JOIN Huespedes h
    ON r.huesped = h.huesped_id
    GROUP BY h.huesped_id;

-- Consulta 5: Precio promedio por piso
SELECT piso,
    AVG(precio_por_noche) AS precio_promedio
    FROM Habitaciones
    GROUP BY piso;



