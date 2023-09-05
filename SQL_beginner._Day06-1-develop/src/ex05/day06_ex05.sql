COMMENT ON TABLE person_discounts IS 'Таблица персональных скидок';
COMMENT ON COLUMN person_discounts.id IS 'Первичный ключ';
COMMENT ON COLUMN person_discounts.person_id IS 'Идентификатор внешнего ключа для таблицы person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Идентификатор внешнего ключа для таблицы pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка в процентах в пиццерии для каждого человека';