--Session #1
begin transaction;
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #1
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
commit work;
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';