CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id);
SET enable_seqscan = off;
EXPLAIN ANALYSE
SELECT discount FROM person_discounts
WHERE person_id = 15;