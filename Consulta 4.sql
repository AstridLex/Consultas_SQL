/*Encuentra el DisplayName de los usuarios que han realizado más de 100 comentarios
en total. Para esto utiliza una subconsulta para calcular el total de comentarios por
usuario y luego filtra aquellos usuarios que hayan realizado más de 100 comentarios en
total. Presenta los resultados en una tabla mostrando el DisplayName de los usuarios*/


SELECT u.DisplayName
FROM Users u
JOIN (
    SELECT UserId, COUNT(*) AS CommentCount
    FROM Comments
    GROUP BY UserId
    HAVING COUNT(*) > 100
) c ON u.Id = c.UserId;