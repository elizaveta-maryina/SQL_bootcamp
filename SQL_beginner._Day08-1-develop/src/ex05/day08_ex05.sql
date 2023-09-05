--Session #1
BEGIN TRANSACTION;
--Session #2
BEGIN TRANSACTION;
--Session #1
SELECT SUM(rating) FROM pizzeria;
--Session #2
UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut';
commit work;
--Session #1
SELECT SUM(rating) FROM pizzeria;
commit work;
SELECT SUM(rating) FROM pizzeria;
--Session #2
SELECT SUM(rating) FROM pizzeria;