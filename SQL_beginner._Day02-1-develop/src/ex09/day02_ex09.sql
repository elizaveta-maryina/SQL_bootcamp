SELECT p.name FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
WHERE m.pizza_name in ('pepperoni pizza', 'cheese pizza')
AND  p.gender = 'female'
GROUP BY p.name
HAVING COUNT(m.pizza_name) > 1;