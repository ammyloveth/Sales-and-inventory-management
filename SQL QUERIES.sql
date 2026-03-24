SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers_table c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.price,
    s.supplier_name
FROM products p
JOIN suppliers_table s 
ON p.supplier_id = s.supplier_id;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers_table c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT 
    payment_date,
    SUM(amount) AS total_sales
FROM payments
GROUP BY payment_date;

SELECT 
    SUM(amount) AS total_revenue
FROM payments;

SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN products p 
ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(pay.amount) AS total_spent
FROM customers_table c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN payments pay 
    ON o.order_id = pay.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(pay.amount) > 100000;

SELECT 
    AVG(amount) AS average_order_value
FROM payments;

SELECT 
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN order_details od 
    ON p.product_id = od.product_id
WHERE od.product_id IS NULL;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers_table c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT 
    order_id,
    SUM(quantity) AS total_products
FROM order_details
GROUP BY order_id
HAVING SUM(quantity) > 3;

-- part 4 --

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(p.amount) DESC) AS ranking
FROM customers_table c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT 
    p.category,
    SUM(od.quantity * p.price) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;

SELECT 
    s.supplier_name,
    SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
JOIN suppliers_table s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY total_quantity_sold DESC
LIMIT 1;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers_table c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 5;

SELECT 
    order_id,
    SUM(quantity) AS total_items
FROM order_details
GROUP BY order_id
ORDER BY total_items DESC;

SELECT 
    YEAR(payment_date) AS year,
    MONTH(payment_date) AS month,
    SUM(amount) AS total_sales
FROM payments
GROUP BY YEAR(payment_date), MONTH(payment_date)
ORDER BY year, month;

SELECT 
    product_id,
    product_name,
    price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent
FROM customers_table c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(p.amount) > (
    SELECT AVG(amount) FROM payments
);

--  part 5 --

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    p.product_name,
    od.quantity,
    pay.amount
FROM customers_table c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
JOIN payments pay ON o.order_id = pay.order_id;

SELECT 
    (SELECT COUNT(*) FROM customers_table) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT SUM(amount) FROM payments) AS total_revenue;
    
    SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers_table c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_orders DESC;

SELECT 
    p.product_name,
    SUM(od.quantity) AS total_sold
FROM products p
LEFT JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_sold ASC;

SELECT 
    p.product_name,
    SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

SELECT 
    s.supplier_name,
    SUM(od.quantity * p.price) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id
JOIN suppliers_table s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY total_revenue DESC
LIMIT 1;
