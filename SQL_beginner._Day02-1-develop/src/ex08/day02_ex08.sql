SELECT p.name FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
WHERE(p.address = 'Moscow' OR p.address = 'Samara')
AND (pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza')
AND  p.gender = 'male'
ORDER BY name DESC;
