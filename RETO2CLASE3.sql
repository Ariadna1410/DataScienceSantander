#Reto 2 Clase 3
#Ariadna Jaqueline Cordero Portocarrero
#¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT * FROM empleado;
SELECT * FROM venta;
SELECT CONCAT(nombre," ",apellido_paterno) AS Nombre,clave FROM empleado AS e JOIN venta AS v 
ON e.id_empleado=v.id_empleado ORDER BY clave ;
#¿Cuál es el nombre de los artículos que se han vendido?
SELECT * FROM articulo;
SELECT * FROM venta;
SELECT a.nombre, v.clave FROM articulo AS a JOIN venta AS v
ON a.id_articulo=v.id_articulo ORDER BY v.clave;
#¿Cuál es el total de cada venta?
SELECT round(sum(precio),2) AS total,clave FROM articulo AS a 
JOIN venta AS v ON a.id_articulo=v.id_articulo 
GROUP BY clave ORDER BY clave;