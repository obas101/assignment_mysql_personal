ALTER TABLE sql_store.order_items 
ADD COLUMN total_product_price DECIMAL(4,2);

SELECT * FROM sql_store.order_items;

UPDATE sql_store.order_items SET total_product_price = (unit_price * quantity) WHERE order_id = 6;

SELECT * FROM sql_store.order_items
WHERE order_id = 6 AND total_product_price >30;

SELECT * FROM sql_store.products

WHERE quantity_in_stock in (49, 38, 72);