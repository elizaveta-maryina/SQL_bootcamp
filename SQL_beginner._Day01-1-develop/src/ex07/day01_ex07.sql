SELECT po.order_date AS order_date, CONCAT(name, '(age:', age,')') AS person_information
FROM person_order po
JOIN person p ON p.id = po.person_id
ORDER BY  order_date, person_information;