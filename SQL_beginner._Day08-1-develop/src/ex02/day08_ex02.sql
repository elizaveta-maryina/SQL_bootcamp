--Session #1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session #2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
--Session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
--Session #1
commit work;
--Session #2
commit work;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
