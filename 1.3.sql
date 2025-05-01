-- 1.Combine the menu_items and order_details table.
SELECT * FROM order_details as t1
LEFT JOIN  menu_items as t2
ON t1.item_id = t2.menu_item_id;

-- 2. What were the least and most common items. what categories were they in.
SELECT item_name ,category, COUNT(order_details_id) AS num_purchases
FROM order_details as t1 
LEFT JOIN menu_items as t2
ON t1.item_id = t2.menu_item_id
GROUP BY item_name , category
ORDER BY num_purchases DESC;

-- 3. What are the top 5 orders that spend most money.
SELECT order_id,SUM(price) as total_spend
FROM order_details t1 LEFT JOIN menu_items t2
ON t1.item_id = t2.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC LIMIT 5;

-- 4. View the details of highest spend order. What insights can you gather from them.
SELECT category,COUNT(item_id) as num_items
FROM order_details t1 LEFT JOIN menu_items t2
ON t1.item_id = t2.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- 5. View the details of top 5 highest spend order. What insights can you gather from this.
SELECT order_id,category,COUNT(item_id) as num_items
FROM order_details t1 LEFT JOIN menu_items t2
ON t1.item_id = t2.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category;