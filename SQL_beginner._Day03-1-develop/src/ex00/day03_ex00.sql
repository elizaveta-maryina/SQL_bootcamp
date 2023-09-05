SELECT m.pizza_name AS pizza_name, m.price AS price,
pz.name AS pizzeria_name, pv.visit_date AS visit_date
FROM menu m
JOIN person_visits pv ON m.pizzeria_id = pv.pizzeria_id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
JOIN person p ON pv.person_id = p.id
WHERE p.name = 'Kate' AND (m.price BETWEEN 800 AND 1000)
ORDER BY 1,2,3;