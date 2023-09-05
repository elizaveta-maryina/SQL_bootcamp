SELECT DISTINCT pizza_name , pizzeria_name_1, pizzeria_name_2, first.price FROM
(SELECT DISTINCT pizzeria.id AS id1, pizzeria.name AS pizzeria_name_1, menu.pizza_name AS pizza_name, price AS price FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id) AS first
JOIN (SELECT pizzeria.id AS id2, pizzeria.name AS pizzeria_name_2, menu.pizza_name AS pizza_name_2, price AS price FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id) AS second ON first.price = second.price AND first.pizza_name = second.pizza_name_2
WHERE id1 > id2;