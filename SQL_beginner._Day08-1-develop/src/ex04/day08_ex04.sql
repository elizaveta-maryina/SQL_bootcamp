--Session #1
BEGIN TRANSACTION ISOLATION LEVEL Serializable;
--Session #2
BEGIN TRANSACTION ISOLATION LEVEL Serializable;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
UPDATE pizzeria SET rating = 3 WHERE name = 'Pizza Hut';
commit work;
--Session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
commit work;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';