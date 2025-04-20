TALLER SQL
Las llaves foráneas se usan para establecer relaciones entre tablas en una base de datos relacional, permitiendo que una tabla haga referencia a otra. La diferencia principal entre INNER JOIN y LEFT JOIN es que INNER JOIN devuelve solo los registros que coinciden en ambas tablas, mientras que LEFT JOIN devuelve todos los registros de la tabla izquierda, incluso si no hay coincidencias en la tabla derecha. 
Llaves Foráneas:
Las llaves foráneas (Foreign Keys) son columnas en una tabla que hacen referencia a la llave primaria (Primary Key) de otra tabla. Esto establece una relación entre las tablas, indicando que un registro en la tabla actual está relacionado con un registro en la otra tabla. 
INNER JOIN vs. LEFT JOIN:
INNER JOIN:
 Devuelve solo los registros que tienen coincidencias en ambas tablas relacionadas. Si un registro en una tabla no tiene una coincidencia en la otra, no se incluye en el resultado. 
LEFT JOIN:
Devuelve todos los registros de la tabla izquierda (especificada en la consulta) y, además, los registros coincidentes de la tabla derecha. Si un registro en la tabla izquierda no tiene una coincidencia en la tabla derecha, se mostrará con valores NULL para las columnas de la tabla derecha.
