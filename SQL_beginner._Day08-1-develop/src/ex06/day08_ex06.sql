--Session #1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session #2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session #1
SELECT SUM(rating) FROM pizzeria;
--Session #2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
commit work;
--Session #1
SELECT SUM(rating) FROM pizzeria;
commit work;
SELECT SUM(rating) FROM pizzeria;
--Session #2
SELECT SUM(rating) FROM pizzeria;