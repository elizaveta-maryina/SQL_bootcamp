DROP FUNCTION fnc_persons_female;
DROP FUNCTION fnc_persons_male;

CREATE OR REPLACE FUNCTION fnc_persons(IN pgender varchar DEFAULT 'female')
RETURNS SETOF person AS $persons$
    SELECT * FROM person WHERE gender = pgender
$persons$ LANGUAGE sql;

SELECT * FROM fnc_persons(pgender := 'male');
SELECT * FROM fnc_persons();



