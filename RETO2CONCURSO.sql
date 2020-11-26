#QUERY COMPETITION RETO 2
#Ariadna Jaqueline Cordero Portocarrero
CREATE DATABASE bedu_competition;
USE bedu_competition;
CREATE TABLE IF NOT EXISTS covid3 (
country VARCHAR(50),
cases INT,
deaths INT,
update_time VARCHAR(50));
#¿Cuál fue el país con mayor número de muertes?
SELECT country,total_muertes
FROM (SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq 
WHERE country!="Grand Total" ORDER BY total_muertes DESC
LIMIT 1;
##MEXICO
#¿Cuál fue el país con menor número de muertes?
SELECT country,total_muertes
FROM (SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq ORDER BY total_muertes ASC;
SELECT country,total_muertes
FROM (SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq 
WHERE total_muertes>0 ORDER BY total_muertes ASC LIMIT 1;
##MUCHOS NO TUVIERON MUERTES PERO SI HABLAMOS DE LOS QUE SI TUVIERON, EL MENOR FUE PARAGUAY
#¿Cuál fue el país con el mayor número de casos?
SELECT country,total_casos
FROM (SELECT country,sum(cases) AS total_casos FROM covid3 GROUP BY country) AS st 
WHERE country!="Grand Total" ORDER BY total_casos DESC
LIMIT 1;
##ESTADOS UNIDOS
#¿Cuál fue el país con el menor número de casos?
SELECT country,total_casos
FROM (SELECT country,sum(cases) AS total_casos FROM covid3 GROUP BY country) AS st ORDER BY total_casos ASC;
#HUBIERON MUCHOS CON UN CASO
#¿Cuál fue el número de muertes promedio?
SELECT AVG(total_muertes) AS promedio_muertes
FROM (SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq;
#¿Cuál fue el número de casos promedio?
SELECT AVG(total_casos) AS promedio_casos 
FROM (SELECT country,sum(cases) AS total_casos FROM covid3 GROUP BY country) AS st;
#Top 5 de países con más muertes
SELECT country,total_muertes FROM 
(SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq 
WHERE country !="Grand Total"
ORDER BY total_muertes DESC LIMIT 5;
#Top 5 de países con menos muertes
SELECT count(*) FROM covid3;
SELECT country,total_muertes FROM 
(SELECT country,sum(deaths) AS total_muertes FROM covid3 GROUP BY country) AS sq 
WHERE country !="Grand Total" AND total_muertes>0
ORDER BY total_muertes ASC LIMIT 5;
##HAY MUCHOS CON 0 MUERTES