#Reto 1 Clase 3
#Ariadna Jaqueline Cordero Portocarrero
#¿Cuál es el nombre de los empleados cuyo sueldo es menor a $100,000?
USE tienda;
SELECT * FROM empleado;
SELECT * FROM puesto WHERE salario<100000;
SELECT nombre, apellido_paterno FROM empleado WHERE id_puesto IN
(SELECT id_puesto FROM puesto WHERE salario <100000);
#¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT * FROM empleado;
SELECT * FROM venta;
SELECT id_empleado,count(*) AS ventas_tot FROM venta GROUP BY clave,id_empleado ORDER BY id_empleado ASC;
SELECT id_empleado,max(ventas) ,min(ventas)
FROM (SELECT clave,id_empleado,count(*) AS ventas FROM venta GROUP BY clave,id_empleado) 
AS sq GROUP BY id_empleado ORDER BY id_empleado ASC;
#¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT * FROM articulo;
SELECT * FROM venta;
SELECT clave,id_articulo FROM venta WHERE id_articulo IN
(SELECT id_articulo FROM articulo WHERE precio>5000);
