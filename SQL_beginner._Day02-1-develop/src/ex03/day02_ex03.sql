WITH days AS (SELECT generate_series('2022-01-01'::DATE, '2022-01-10','1 day')::DATE AS missing_date)
SELECT days.missing_date FROM days
LEFT JOIN (SELECT DISTINCT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS id
ON days.missing_date = id.visit_date
WHERE id.visit_date IS NULL;