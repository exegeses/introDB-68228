# Insertar datos en SQL

> Tenemos 3 maneras para insertar datos en SQL  


## Sintáxis utilizando **SET** 

> Sintáxis: 

    INSERT INTO nombreTabla    
      SET  
            nombreColumna = valor,
            nombreColumna2 = valor,
            nombreColumna3 = valor;


> Ejemplo práctico:

    INSERT INTO productos_apple  
      SET   
            nombre = 'iPod',  
            precio = 299,  
            stock = 200;


## Sintáxis completa ( se mencionan las columnas )

> Sintáxis:  

    INSERT INTO tabla  
        ( nombreCol2, nombreCol3, nombreCol4 )    
      VALUES  
        ( valorCol2, valorCalo3, valorCol4 );  


> Ejemplo práctico 

    INSERT INTO productos_apple  
        ( nombre, precio, stock )  
      VALUES  
        ( 'iPhone', 399, 300 );  


## Sintáxis simplificada ( NO se mencionan las columnas )

> Sintáxis:

    INSERT INTO tabla  
      VALUES  
        ( valorCol1, valorCol2, valorCalo3, valorCol4 );  


> Ejemplo práctico: 

    INSERT INTO productos_apple  
      VALUES  
        ( DEFAULT, 'iPad', 499, 250 );

