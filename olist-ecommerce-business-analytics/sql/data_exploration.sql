USE olist_business_analytics;

-- ==========================================
-- DATA EXPLORATION
-- ==========================================

-- 1. Check number of customers
SELECT COUNT(*) AS total_customers
FROM olist_customers_dataset;

-- 2. Check number of orders
SELECT COUNT(*) AS total_orders
FROM olist_orders_dataset;

-- 3. Check number of order items
SELECT COUNT(*) AS total_order_items
FROM olist_order_items_dataset;

-- 4. Check number of products
SELECT COUNT(*) AS total_products
FROM olist_products_dataset;

-- 5. Check number of sellers
SELECT COUNT(*) AS total_sellers
FROM olist_sellers_dataset;

-- 6. Check number of reviews
SELECT COUNT(*) AS total_reviews
FROM olist_order_reviews_dataset;

-- 7. Check number of payments
SELECT COUNT(*) AS total_payments
FROM olist_order_payments_dataset;

-- 8. View customers
SELECT *
FROM olist_customers_dataset
LIMIT 10;

-- 9. View orders
SELECT *
FROM olist_orders_dataset
LIMIT 10;

-- 10. View order items
SELECT *
FROM olist_order_items_dataset
LIMIT 10;

-- 11. Check order status distribution
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;

-- 12. Customers by state
SELECT
    customer_state,
    COUNT(*) AS total_customers
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY total_customers DESC;

-- 13. Product categories
SELECT
    product_category_name,
    COUNT(*) AS total_products
FROM olist_products_dataset
GROUP BY product_category_name
ORDER BY total_products DESC;