#Reto_2
#Ariadna Jaqueline Cordero Portocarrero
USE tienda;
SHOW TABLES;
#¿Cuál es el promedio de salario de los puestos?
SELECT * FROM puesto;
SELECT AVG(salario) AS promedio_salario FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT * FROM articulo;
SELECT COUNT(*) AS conteo_Pasta FROM articulo WHERE nombre LIKE "%Pasta%";
#¿Cuál es el salario mínimo y máximo?
SELECT * FROM puesto;
SELECT MIN(salario) AS salario_minimo,MAX(salario) AS salario_maximo FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT max(id_puesto) - 5 FROM puesto;
SELECT SUM(salario) AS suma_salario FROM puesto WHERE id_puesto > 995;