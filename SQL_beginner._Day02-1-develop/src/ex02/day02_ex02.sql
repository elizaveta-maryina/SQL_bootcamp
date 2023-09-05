SELECT COALESCE(p.name, '-') AS person_name, pv.visit_date, COALESCE(pz.name, '-') AS pizzeria_name
FROM person p
LEFT JOIN
(SELECT * FROM person_visits
WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
ON pv.person_id = p.id
FULL JOIN (SELECT * FROM pizzeria) AS pz
ON pv.pizzeria_id = pz.id
ORDER BY 1, 2, 3;
