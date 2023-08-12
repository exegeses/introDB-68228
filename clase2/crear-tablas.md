# Crear tablas en SQL

## Creacíon de tablas

> Para crear tablas en SQL utilizamos el comando
> **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombre 
    (
        nombreCol tipo características,
        nombreCol2 tipo características,
        nombreCol3 tipo características,
        nombreCol4 tipo características
    );  


> Ejemplo práctico: 

    CREATE TABLE productos_apple  
    (  
        id tinyint unsigned primary key auto_increment,  
        nombre varchar(30) unique,  
        precio float(12,4) unsigned,  
        stock smallint
    ); 

