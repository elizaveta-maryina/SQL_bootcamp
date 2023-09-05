WITH male AS (SELECT pz.name AS pizzeria_name FROM pizzeria pz
JOIN person_visits pv ON pz.id = pv.pizzeria_id
JOIN person p ON gender = 'male'
AND p.id = pv.person_id
ORDER BY 1),
female AS ( SELECT pz.name AS pizzeria_name FROM pizzeria pz
JOIN person_visits pv ON pz.id = pv.pizzeria_id
JOIN person p ON gender = 'female'
AND p.id = pv.person_id
ORDER BY 1)
(SELECT * FROM female EXCEPT ALL SELECT * FROM male)
UNION ALL
(SELECT * FROM male EXCEPT ALL SELECT * FROM female)
ORDER BY 1;