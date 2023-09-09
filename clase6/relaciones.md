# Consultas a dos o más tablas

> Cuando queremos traer datos de dos o más tablas, 
> debemos relacionar dichas tablas
> Tenemos **dos técnicas**

## Table relation

> La técnica **Table relation** se logra mencionando
> en el table list ( después del FROM ) las tablas necesarias
> y luego mediante un filtro igualamos la columna en conún

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
    FROM tabla1,  tabla2  
    WHERE tabla1.foreignKey = tabla2.primaryKey;  

> Ejemplo práctico:

    SELECT destNombre, destPrecio, regNombre  
    FROM destinos, regiones  
    WHERE destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos, marcas, categorias  
    WHERE productos.idMarca = marcas.idMarca  
    AND productos.idCategoria = categorias.idCategoria;  


## JOIN

> En la técnica **JOIN** sólo mencionamos la tabla principal
> en el table list ( después del FROM )
> y luego para mencionar la tabla segundaria
> utilizamos la palabra reservada **JOIN**
> y finalizamos igualando la columna en conún 
> con la palabra reservada **ON**


> Sintáxis:

    SELECT colTabla1, colTabla1, colTabla2  
    FROM tabla1  
    JOIN tabla2  
    ON tabla1.foreignKey = tabla2.primaryKey;  

> Ejemplo práctico:

    SELECT destNombre, destPrecio, regNombre  
    FROM destinos  
    JOIN regiones  
    ON destinos.idRegion = regiones.idRegion; 

    SELECT prdNombre, prdPrecio, mkNombre    
    FROM productos  
    JOIN marcas    
    ON productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos  
    JOIN marcas    
    ON productos.idMarca = marcas.idMarca  
    JOIN categorias  
    ON productos.idCategoria = categorias.idCategoria;  

