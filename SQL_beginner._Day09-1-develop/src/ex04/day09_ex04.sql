CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS SETOF person AS $persons_female$
        SELECT * FROM person p
        WHERE p.gender = 'female';
    $persons_female$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS SETOF person AS $persons_male$
        SELECT * FROM person p
        WHERE p.gender = 'male';
    $persons_male$ LANGUAGE sql;

SELECT * FROM fnc_persons_male();
SELECT * FROM fnc_persons_female();