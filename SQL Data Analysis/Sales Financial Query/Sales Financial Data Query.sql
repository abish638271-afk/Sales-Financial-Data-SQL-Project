-- display customers

SELECT *
FROM customers
LIMIT 10;

-- display orders

SELECT *
FROM orders
LIMIT 10;

-- Select specific columns
SELECT order_id, customer_id, order_status
FROM orders
LIMIT 10;

-- WHERE
SELECT order_id, customer_id, order_status
FROM orders
WHERE order_status = 'delivered';

-- GROUP BY
SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- ORDER BY
SELECT order_id, customer_id, order_purchase_timestamp
FROM orders
ORDER BY order_purchase_timestamp DESC
LIMIT 10;

-- Total Sales
SELECT 
    SUM(price) AS total_sales
FROM order_items;

-- Average Product Price
SELECT 
    AVG(price) AS average_product_price
FROM order_items;

-- Total Freight Cost
SELECT 
    SUM(freight_value) AS total_freight
FROM order_items;


-- Sales by Order Item
SELECT 
    order_id,
    SUM(price) AS order_total
FROM order_items
GROUP BY order_id
ORDER BY order_total DESC
LIMIT 10;


-- INNER JOIN
SELECT
    o.order_id,
    c.customer_id,
    c.customer_city,
    c.customer_state,
    o.order_status
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
LIMIT 10;



-- LEFT JOIN
SELECT
    c.customer_id,
    c.customer_city,
    o.order_id,
    o.order_status
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
LIMIT 10;


-- RIGHT JOIN
SELECT
    c.customer_id,
    c.customer_city,
    o.order_id,
    o.order_status
FROM customers c
RIGHT JOIN orders o
    ON c.customer_id = o.customer_id
LIMIT 10;


-- JOIN + SUM
SELECT
    o.order_status,
    SUM(oi.price) AS total_sales
FROM orders o
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_status
ORDER BY total_sales DESC;


-- Subqueries

-- Products above average price
SELECT
    order_id,
    product_id,
    price
FROM order_items
WHERE price > (
    SELECT AVG(price)
    FROM order_items
)
ORDER BY price DESC
LIMIT 10;


-- Customers who have placed orders
SELECT
    customer_id,
    customer_city,
    customer_state
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
)
LIMIT 10;


-- Orders with above-average payment value
SELECT
    order_id,
    payment_value
FROM order_payments
WHERE payment_value > (
    SELECT AVG(payment_value)
    FROM order_payments
)
ORDER BY payment_value DESC
LIMIT 10;



-- VIEW

-- Create Sales Analysis View
CREATE VIEW sales_analysis AS
SELECT
    o.order_id,
    o.order_status,
    o.order_purchase_timestamp,
    c.customer_city,
    c.customer_state,
    oi.product_id,
    oi.price,
    oi.freight_value
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
INNER JOIN order_items oi
    ON o.order_id = oi.order_id;
    
    
 -- Use the View   
    SELECT *
FROM sales_analysis
LIMIT 10;



SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';


-- Index
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);

SHOW INDEX FROM orders;


