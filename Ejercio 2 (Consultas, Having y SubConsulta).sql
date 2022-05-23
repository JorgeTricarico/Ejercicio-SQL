# 2. Abrir el script llamado “personal-inserts” y ejecutarlo de modo tal que se cree la base de datos 
# “personal”, se creen las tablas y se inserten todos los datos en las tablas.

#  A continuación, realizar las siguientes consultas sobre la base de datos personal: 

# 1. Obtener los datos completos de los empleados.


DROP DATABASE IF EXISTS personal;
CREATE DATABASE personal CHARACTER SET utf8mb4;
USE personal;

CREATE TABLE departamentos (
id_depto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre_depto VARCHAR(20) NOT NULL,
  ciudad VARCHAR(15) NULL,
  cod_director VARCHAR(12) NULL
);


CREATE TABLE empleados (
  id_emp INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre CHAR(30) NOT NULL,
  sex_emp CHAR(1) NOT NULL,
  fec_nac DATE NOT NULL,
  fec_incorporacion DATE NOT NULL,
  sal_emp FLOAT NOT NULL,
  comision_emp FLOAT NOT NULL,
  cargo_emp VARCHAR(15) NOT NULL,
  cod_jefe VARCHAR(12) NULL,  
	id_depto INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto)
  );


-- Insertar datos en la tabla `departamentos`

INSERT INTO `departamentos` VALUES (1000,'GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamentos` VALUES (1500,'PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamentos` VALUES (2000,'VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamentos` VALUES (2100,'VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamentos` VALUES (2200,'VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamentos` VALUES (2300,'VENTAS','MADRID','16.759.060');
INSERT INTO `departamentos` VALUES (3000,'INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamentos` VALUES (3500,'MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamentos` VALUES (4000,'MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamentos` VALUES (4100,'MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamentos` VALUES (4200,'MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamentos` VALUES (4300,'MANTENIMIENTO','MADRID','16.759.060');

-- Insertar datos en la tabla `empleados`

INSERT INTO `empleados` VALUES (222,'José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222',3500);
INSERT INTO `empleados` VALUES (333,'Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (444,'Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (555,'Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (666,'Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (777,'Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333',4000);
INSERT INTO `empleados` VALUES (782,'Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383',1500);
INSERT INTO `empleados` VALUES (219,'Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (111,'Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333',4200);
INSERT INTO `empleados` VALUES (383,'Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269',1500);
INSERT INTO `empleados` VALUES (060,'Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269',3000);
INSERT INTO `empleados` VALUES (802,'William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (221,'Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269',3500);
INSERT INTO `empleados` VALUES (331,'Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269',3500);
INSERT INTO `empleados` VALUES (099,'Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269',1000);
INSERT INTO `empleados` VALUES (144,'Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269',2000);
INSERT INTO `empleados` VALUES (269,'María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,1000);
INSERT INTO `empleados` VALUES (343,'Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269',4000);
INSERT INTO `empleados` VALUES (334,'Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (335,'Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060',3000);
INSERT INTO `empleados` VALUES (336,'Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383',1500);
INSERT INTO `empleados` VALUES (337,'Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (338,'Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333',4300);
INSERT INTO `empleados` VALUES (689,'Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (785,'Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (898,'Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333',4100);


# 1. Obtener los datos completos de los empleados. 
select * from departamentos;

# 2. Obtener los datos completos de los departamentos. 
SELECT * FROM departamentos;

# 3. Listar el nombre de los departamentos.
select nombre_depto from departamentos;

# 4. Obtener el nombre y salario de todos los empleados.
SELECT nombre, sal_emp FROM empleados;

select * from empleados;

# 5. Listar todas las comisiones.
select comision_emp from empleados order by comision_emp;

# 6. Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’.
select * from empleados where (cargo_emp = 'Secretaria');

# 7. Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente.
select * from empleados where (cargo_emp = 'Vendedor') order by nombre;

# 8. Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a mayor. 
SELECT nombre, cargo_emp, sal_emp FROM empleados ORDER BY sal_emp;

# 9. Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas 
# tablas de empleados.  
SELECT nombre AS Nombre, cargo_emp AS Cargo FROM empleados;

# 10. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión 
# de menor a mayor. 
select sal_emp, comision_emp from empleados where (id_depto = 2000) order by comision_emp;

# 11. Obtener el valor total a pagar que resulta de sumar el salario y la comisión de los empleados 
# del departamento 3000 una bonificación de 500, en orden alfabético del empleado. 
select nombre, (sal_emp+comision_emp+500) as 'Total a Pagar' from empleados where (id_depto = 3000) order by nombre;

# 12. Muestra los empleados cuyo nombre empiece con la letra J.
select * from empleados where nombre like 'j%' order by nombre;

# 13. Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos empleados que 
# tienen comisión superior a 1000.  
SELECT sal_emp, comision_emp, (sal_emp + comision_emp) AS salario_total, nombre FROM empleados 
WHERE comision_emp > 1000;

# 14. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión.
SELECT sal_emp, comision_emp, (sal_emp + comision_emp) AS salario_total, nombre FROM personal.empleados
WHERE comision_emp = 0;

# 15. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
select nombre as Nombre, sal_emp as Salario, comision_emp as Comision, (sal_emp+comision_emp) as Total from empleados where (comision_emp > sal_emp) order by nombre;

# 16. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select * from empleados where (comision_emp <= sal_emp*1.3);

# 17. Hallar los empleados cuyo nombre no contiene la cadena “MA”
select nombre from empleados where nombre not like '%ma%';  

# 18. Ahora obtener los nombres de los departamentos que sean “Ventas”, “Investigación” y "Mantenimiento". 
SELECT nombre_depto FROM departamentos WHERE nombre_depto = 'Ventas' OR nombre_depto = 'Investigación' 
OR nombre_depto = 'Mantenimiento' GROUP BY nombre_depto; 

# 19. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni "Mantenimiento".  
select nombre_depto from departamentos where nombre_depto not IN ('Ventas','Investigacion','Mantenimiento');

# 20. Mostrar el salario más alto de la empresa.  
select MAX(sal_emp) from empleados;

# 21. Mostrar el nombre del último empleado de la lista por orden alfabético.
select max(nombre) from empleados;

# 22. Hallar el salario más alto, el más bajo y la diferencia entre ellos. 
select MAX(sal_emp), min(sal_emp), MAX(sal_emp)- min(sal_emp) from empleados;

# 23. Hallar el salario promedio por departamento.  
select id_depto, avg(sal_emp) as 'Promedio de Salarios'  from empleados group by id_depto;

-- >>>>>>>> Having <<<<<<<< --

# 24. 24.  Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados 
# de esos departamentos.  

SELECT id_depto, COUNT(id_emp) AS 'Cantidad Empleados' FROM empleados GROUP BY id_depto having COUNT(id_emp)>3;

# 25.  Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. Solo los 
# que tengan más de dos empleados (2 incluido).

select d.cod_director, e.nombre, e.cargo_emp , count(d.cod_director) as 'Cantidad Empleados' from departamentos d, empleados e where d.cod_director = cod_jefe group by e.cod_jefe;

select cod_jefe, nombre, cargo_emp, count(cod_jefe) from empleados where cargo_emp like 'Jefe%' order by nombre;

select id_emp, nombre, cargo_emp, cod_jefe from empleados;

select * from empleados;

select d.cod_director, e.nombre, e.cargo_emp , count(e.cod_jefe) as 'Cantidad Empleados' from departamentos d, empleados e group by e.cod_jefe having d.cod_director = cod_jefe;

SELECT cod_jefe, nombre, COUNT(id_emp) AS cantidad_de_empleados FROM empleados GROUP BY cod_jefe HAVING COUNT(cod_jefe) >= 2;
# 26.  Hallar los departamentos que no tienen empleados  
select d.id_depto, d.nombre_depto from departamentos d, empleados e where d.id_depto=e.id_depto group by d.id_depto having count(*)=0;

select id_depto, nombre_depto from departamentos where 
personal.departamentos.id_depto not in (select id_depto from empleados);
 # Consulta con Subconsulta  
# 27.  Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa. 
# Ordenarlo por departamento.  
select nombre, sal_emp from empleados where sal_emp >=(select round(avg(sal_emp)) from empleados);
