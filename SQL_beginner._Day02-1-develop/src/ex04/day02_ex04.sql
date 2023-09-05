SELECT pizza_name,pizzeria.name,price
from menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE pizza_name IN ('mushroom pizza','pepperoni pizza')
ORDER BY 1,2