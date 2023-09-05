--Session #1
BEGIN TRANSACTION;
--Session #2
BEGIN TRANSACTION;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
commit work;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
commit work;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';