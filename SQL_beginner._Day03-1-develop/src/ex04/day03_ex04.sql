WITH male AS (SELECT DISTINCT pz.name AS pizzeria_name FROM pizzeria pz
JOIN person_visits pv ON pz.id = pv.pizzeria_id
JOIN person p ON gender = 'male'
JOIN person_order po on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
AND pv.pizzeria_id  = m.pizzeria_id AND p.id = pv.person_id
ORDER BY 1),
female AS (SELECT DISTINCT pz.name AS pizzeria_name FROM pizzeria pz
JOIN person_visits pv ON pz.id = pv.pizzeria_id
JOIN person p ON gender = 'female'
JOIN person_order po on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
AND pv.pizzeria_id  = m.pizzeria_id AND p.id = pv.person_id
ORDER BY 1)
(SELECT * FROM female EXCEPT ALL SELECT * FROM male)
UNION
(SELECT * FROM male EXCEPT ALL SELECT * FROM female)
ORDER BY 1;