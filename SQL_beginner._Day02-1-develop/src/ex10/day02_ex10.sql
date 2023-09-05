SELECT first.name AS person_name1,
       second.name AS person_name2,
       first.address AS common_address
from person AS first
JOIN person AS second
ON first.address = second.address
WHERE first.name != second.name AND first.address = second.address AND first.id > second.id
ORDER BY 1,2,3;