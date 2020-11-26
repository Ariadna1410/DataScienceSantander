#CLASE 3 RETO 3
#Ariadna Jaqueline Cordero Portocarrero
#Obtener el puesto de un empleado.
SELECT * FROM puesto;
SELECT * FROM empleado;
CREATE VIEW puestos2 AS
SELECT CONCAT(e.nombre," ",e.apellido_paterno) AS Nombre_completo,p.nombre AS puesto_oficial 
FROM puesto AS p JOIN empleado AS e ON p.id_puesto=e.id_puesto ORDER BY e.nombre;
SELECT * FROM puestos2;
#Saber qué artículos ha vendido cada empleado.
USE tienda;
SELECT * FROM articulo;
SELECT * FROM empleado;
SELECT * FROM venta;
CREATE VIEW ArticulosEmpleados AS
SELECT v.clave,concat(e.nombre," ",e.apellido_paterno) AS Nombre_completo,a.nombre AS articulo_vendido 
FROM articulo AS a JOIN 
venta AS v ON v.id_articulo=a.id_articulo JOIN 
empleado AS e ON e.id_empleado=v.id_empleado;
SELECT * FROM ArticulosEmpleados;
#Saber qué puesto ha tenido más ventas.
SELECT * FROM venta;
SELECT * FROM puesto;
SELECT * FROM empleado;
CREATE VIEW puestosventas AS
SELECT p.nombre,count(v.clave) AS ventas FROM puesto p JOIN empleado e
ON p.id_puesto=e.id_puesto JOIN venta v ON v.id_empleado=e.id_empleado
GROUP BY p.nombre;
SELECT * FROM puestosventas ORDER BY ventas DESC LIMIT 1;