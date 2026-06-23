-- Active: 1774543856203@@127.0.0.1@3306@agenda
-- Usando la base de datos hr
show databases;
use hr;
-- Ingresar 5 nuevos paises (countries).
select * from REGIONS;
select * from COUNTRIES;
insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) VALUES
    ('UY','Uruguay',2),
    ('CL','Chile',2),
    ('PE','Peru',2),
    ('BO','Bolivia',2),
    ('PY','Paraguay',2);

-- Ingresar 5 nuevas ciudades (locations).
select * from LOCATIONS;
insert into LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) values 
    (3300,'Viel 234','1714','CABA','CABA','AR'),
    (3400,'Perú 245','4565','Córdoba','Córdoba','AR'),
    (3500,'Medrano 948','8787','San Rafael','Mendoza','AR'),
    (3600,'Lima 431','5987','Orán','Salta','AR'),
    (3700,'Dorrego 678','2121','Corrientes','Corrientes','AR');
-- Ingresar 5 nuevos departamentos (departments)
select * from DEPARTMENTS;
insert into DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME,LOCATION_ID) values 
    (280,'Recursos Humanos',3200),
    (290,'Planeamiento',3300),
    (300,'Producción',3400),
    (310,'Ventas',3500),
    (320,'Marketing',3600);
-- Ingresar 5 nuevos empleados (employees).
select * from EMPLOYEES;
select * from JOBS;
describe EMPLOYEES;
insert into EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,JOB_ID,DEPARTMENT_ID) values 
    (210,'Carlos','Rios','Carlos@Gmail.com','AD_ASST',290),
    (220,'Mariela','Roldan','Mariela@Gmail.com','AD_ASST',300),
    (230,'Mercedez','Rivas','Mercedez@Gmail.com','AD_ASST',310),
    (240,'Monica','Moro','Monica@Gmail.com','AD_ASST',320),
    (250,'Roberto','Riestra','Roberto@Gmail.com','AD_ASST',320);
-- Listar todos los empleados mostrando mostrando los datos del departamento de trabajo (departments)
SELECT * from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
        JOIN LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        JOIN COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID;
-- Listar todos los empleados ordenados por fecha de contratación (hire_date)
select * from EMPLOYEES order by HIRE_DATE;
-- Listar todos los empleador mostrando antiguedad en años.
select *,  TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) antiguedad from EMPLOYEES;
-- Mostrar cantidad de empleados por departamento.
SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, count(*) cantidad_Empleados 
    from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
    group by d.DEPARTMENT_ID;
-- Listar todos los departamentos mostrando direccion completa (locations,countries,regions).
SELECT * from DEPARTMENTS d
        JOIN LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        JOIN COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID
        JOIN REGIONS r on c.REGION_ID=r.REGION_ID;
-- Listar todos los empleados y el nombre del jefe (usar jod_id).
-- Listar todos los empleados que trabajan en departamentos de argentina.
-- Listar todos los departamentos agrupados por ciudad.

use hr;
