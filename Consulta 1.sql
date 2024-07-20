/*Selecciona las columnas DisplayName, Location y Reputation de los usuarios con mayor
reputación. Ordena los resultados por la columna Reputation de forma descendente y
presenta los resultados en una tabla mostrando solo las columnas DisplayName,
Location y Reputation.*/

SELECT DisplayName, Location, Reputation
FROM Users
ORDER BY Reputation DESC;
