#Reto_3
#Ariadna Jaqueline Cordero Portocarrero

#¿Cuántos registros hay por cada uno de los puestos?
SELECT * FROM puesto;
SELECT nombre,count(*) AS num_registros FROM puesto GROUP BY nombre;

#¿Cuánto dinero se paga en total por puesto?
SELECT nombre,sum(salario) AS salario_total FROM puesto GROUP BY nombre;

#¿Cuál es el número total de ventas por vendedor?
SELECT * FROM venta;
SELECT id_empleado,count(*) AS num_ventas FROM venta GROUP BY id_empleado;

#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) AS num_ventas FROM venta GROUP BY id_articulo;