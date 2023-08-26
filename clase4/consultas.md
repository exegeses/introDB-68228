# Consultas en SQL

## Consultas a server  

> Para hacer consultas a un server de bases de datos
> utilizamos la palabra reservada **SELECT**  

> Consultar la base de datos activa  

    SELECT DATABASE();  

> Consultar fecha actual y fecha actual + 30 días  

    SELECT CURDATE(), DATE_ADD( CURDATE(), INTERVAL 30 DAY );  

## Consultas a tablas de una base de datos 

> Para generar consultas a una tabla de una base de datos  
> también utilizamos la palabra reservada **SELECT**  
> pero además debemos especificar a que tabla/s 
> vamos a consultar con la palabra **FROM** 

> Sintáxis: 

    SELECT * FROM nombreTabla;  

> Ejemplo práctico:  

    SELECT * FROM regiones; 

> Si queremos traer datos de algunas (no todas)
> de las columnas de una tabla.  

> Sintáxis: 
    
    SELECT columna2, columna5  
        FROM nombreTabla;  

> Ejemplo práctico: 

    SELECT destNombre, destPrecio  
        FROM detinos;  

## Orden de resultados  

> Para ordenar resultados de una consulta 
> utilizamos las palabras **ORDER BY** 

> Sintáxis: 

    SELECT columna2, columna5  
        FROM nombreTabla
        ORDER BY nombreColumna; 

> Ejemplo práctico 

    SELECT destNombre, destPrecio  
    FROM destinos  
    ORDER BY destPrecio;  

    SELECT destNombre, destPrecio, idRegion  
    FROM destinos  
    ORDER BY idRegion, destPrecio;  

## Filtrado de registros  

> Filtrar registros significa que vamos a trar solamente algunos registros que cumplan con una condición.

> Para filtrar registros utilizamos la palabra **WHERE** 

> Ejemplo práctico: 
> Traer nombre y precio de destinos 
> dónde el precio de hasta 8000. 

    SELECT destNombre, destPrecio  
    FROM destinos    
     WHERE  destPrecio <= 8000;  

> Traer nombre y precio de destinos
> dónde el precio esté entre 6500 y 8000.

    SELECT destNombre, destPrecio  
    FROM destinos  
     WHERE destPrecio >= 6500  
     AND destPrecio <= 8000;  

> Ahora la misma consulta con la palabra **BETWEEN** 

    SELECT destNombre, destPrecio  
    FROM destinos   
     WHERE destPrecio   
			BETWEEN 6500 AND 8000;  

> Traer nombre y precio de los destinos  
> de la región 5;

    SELECT destNombre, destPrecio  
    FROM destinos  
		WHERE idRegion = 5;

> Traer nombre y precio de los destinos  
> de las regiones 5 y 7;

    SELECT destNombre, destPrecio  
    FROM destinos  
		WHERE idRegion IN( 5, 7 );  

