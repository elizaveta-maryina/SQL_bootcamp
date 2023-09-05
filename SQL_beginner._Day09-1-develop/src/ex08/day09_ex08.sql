CREATE OR REPLACE FUNCTION fnc_fibonacci(IN pstop integer DEFAULT 10)
    RETURNS SETOF integer LANGUAGE SQL AS $$
    WITH RECURSIVE f(a,b) AS (
    VALUES (0,1)
    UNION ALL
    SELECT greatest(a,b), a + b AS a FROM f
    WHERE b < pstop
    )
    SELECT a FROM f;
$$;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();