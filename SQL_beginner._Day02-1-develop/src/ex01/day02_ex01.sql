SELECT days.visit_date AS missing_date FROM
(SELECT DISTINCT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS id
FULL OUTER JOIN
(SELECT generate_series('2022-01-01'::DATE, '2022-01-10','1 day')::DATE AS visit_date) AS days
ON id.visit_date = days.visit_date
WHERE id.visit_date IS NULL;
