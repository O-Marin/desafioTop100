-- este desafio fue realizado usando MYSQL y MYSQL Workbench

-- 1.
-- CREATE USER peliculas IDENTIFIED BY 'Pelicul4s;';

-- GRANT ALL PRIVILEGES ON *.* TO peliculas@'%';

-- CREATE DATABASE peliculasbd;

	 CREATE TABLE top100
	 (	
	 id int not null unique,
	  pelicula varchar(75) UNIQUE,
	 anio_estreno varchar(4), 
	 director varchar(25)
	 
	 );

 CREATE TABLE reparto

 ( 
 id int not null ,
 reparto varchar(50)
 );

-- 2.
-- Se importa el archivo peliculas.csv
-- Se importa el archivo reparto.csv

-- se muestra la tabla top100
 
SELECT * FROM top100;

-- se muestra tabla reparto

SELECT * FROM reparto;

-- se agrega primary key, se me olvido agregarlo antes
-- ALTER TABLE top100
-- ADD PRIMARY KEY (id);

-- 3.Obtener el ID de la pelicula "Titanic".

SELECT id FROM top100 WHERE pelicula='Titanic';


-- 4.Listar a todos los actores que aparecen en la pelicula "Titanic"

SELECT reparto FROM reparto,top100 WHERE pelicula='Titanic' AND reparto.id = top100.id;

-- 5.Consultar en cuántas películas del top 100 participa Harrison Ford.

Select count(id) From reparto Where reparto='Harrison Ford';

-- 6. ndicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de
-- manera ascendente.

SELECT pelicula FROM top100 WHERE anio_estreno BETWEEN '1990' AND '1990' ORDER BY anio_estreno ASC;

-- 7. Hacer una consulta SQL que agrupe los títulos con su longitud, la longitud debe ser
-- nombrado para la consulta como “longitud_titulo”.
	
SELECT	pelicula, 	length(pelicula)	AS longitud_titulo	FROM top100 

-- 8. Consultar cual es la longitud más grande entre todos los títulos de las películas.

SELECT	Max(length(pelicula)) AS longitud_titulo	FROM top100; 
	
