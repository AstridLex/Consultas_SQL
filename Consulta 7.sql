/*Para cada usuario, muestra el número total de publicaciones (Posts), comentarios
(Comments) y medallas (Badges) que han realizado. Utiliza uniones (JOIN) para combinar
la información de las tablas Posts, Comments y Badges por usuario. Presenta los
resultados en una tabla mostrando el DisplayName del usuario junto con el total de
publicaciones, comentarios y medallas*/


SELECT u.DisplayName, 
       ISNULL(p.PostCount, 0) AS TotalPosts, 
       ISNULL(c.CommentCount, 0) AS TotalComments, 
       ISNULL(b.BadgeCount, 0) AS TotalBadges
FROM Users u
LEFT JOIN (
    SELECT OwnerUserId, COUNT(*) AS PostCount
    FROM Posts
    GROUP BY OwnerUserId
) p ON u.Id = p.OwnerUserId
LEFT JOIN (
    SELECT UserId, COUNT(*) AS CommentCount
    FROM Comments
    GROUP BY UserId
) c ON u.Id = c.UserId
LEFT JOIN (
    SELECT UserId, COUNT(*) AS BadgeCount
    FROM Badges
    GROUP BY UserId
) b ON u.Id = b.UserId;
