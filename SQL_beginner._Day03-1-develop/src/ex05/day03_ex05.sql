WITH andery_visit AS (SELECT pz.name AS pizzeria_name
FROM person_visits pv
JOIN pizzeria pz
ON pz.id = pv.pizzeria_id
WHERE pv.person_id = 2),
andrey_order AS (SELECT pizzeria.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN person p on p.id = po.person_id
JOIN pizzeria ON pizzeria.id = m.pizzeria_id
WHERE p.name = 'Andrey')
SELECT  pizzeria_name FROM andery_visit
EXCEPT
SELECT pizzeria_name FROM andrey_order
ORDER BY 1;