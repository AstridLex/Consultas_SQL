/*Selecciona la columna Title de la tabla Posts junto con el DisplayName de los usuarios
que lo publicaron para aquellos posts que tienen un propietario.
Para lograr esto une las tablas Posts y Users utilizando OwnerUserId para obtener el
nombre del usuario que public� cada post. Presenta los resultados en una tabla
mostrando las columnas Title y DisplayName*/

SELECT p.Title, u.DisplayName
FROM Posts p
JOIN Users u ON p.OwnerUserId = u.Id
WHERE p.OwnerUserId IS NOT NULL;