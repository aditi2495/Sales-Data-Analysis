USE restaurant_db;
-- 1. view the menu_item table.
SELECT * FROM menu_items;
-- 2. Find the no of items in menu item table.
SELECT COUNT(*)
FROM menu_items;
-- 3.What are the least and most expensive items in the menu.
SELECT *
FROM menu_items
order by price;

-- 4. How many italian dishes are in the menu.
SELECT COUNT(*)
FROM menu_items
WHERE category = "Italian";

-- 5. What are the least and most expensive italian dishes on the menu.
SELECT *
FROM menu_items
WHERE category = "Italian"
ORDER BY price desc; 

-- 6.How many dishes are in each category.
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
group by category;

-- 7. Avg dish price within each category.
SELECT category, AVG(price) as avg_price
FROM menu_items
GROUP BY category;

