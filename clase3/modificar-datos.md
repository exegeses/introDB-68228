# Modificación de datos

> Para la modificación de datos (registros)
> de una tabla utilizamos el comando: 
> **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
        SET   
            nombreColumna = valor,  
            nombreColumna = valor  
        WHERE colPrimaryKey = valorID;  


> Ejemplo práctico: 

    UPDATE destinos  
        SET  
            destPrecio = 9750  
        WHERE idDestino = 1;  


> Aumentar el precio en un 5% (incluído)
> del registro 1

    UPDATE productos_apple  
        SET  
            precio = precio * 1.05  
        WHERE id = 1;  


> Aumentar el precio en un 5% (incluído)
> de los destinos de la region 7 (Asia)


    UPDATE destinos  
        SET  
            destPrecio = destPrecio * 1.05    
        WHERE idRegion = 7;  



    UPDATE destinos  
        SET  
            destPrecio = destPrecio * 1.05    
        WHERE idRegion IN( 3, 4 ); 