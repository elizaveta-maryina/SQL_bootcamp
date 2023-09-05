SELECT * FROM
    (SELECT pizza_name AS object_name FROM menu
    UNION ALL
    SELECT name AS object_name FROM  person) rezult
ORDER BY object_name;