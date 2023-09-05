--Session #1
BEGIN TRANSACTION
--Session #2
BEGIN TRANSACTION
--Session #1
UPDATE pizzeria SET rating = 2 WHERE id = 1;
--Session #2
UPDATE pizzeria SET rating = 2 WHERE id = 2;
--Session #1
UPDATE pizzeria SET rating = 2 WHERE id = 2;
--Session #2
UPDATE pizzeria SET rating = 2 WHERE id = 1;
--Session #1
commit work;
--Session #2
commit work;