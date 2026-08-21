USE olist_business_analytics;

-- ==========================================
-- BUSINESS ANALYSIS
-- ==========================================

-- 1. Total Revenue

SELECT
    ROUND(SUM(price), 2) AS total_revenue
FROM olist_order_items_dataset;


-- 2. Total Orders

SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM olist_orders_dataset;


-- 3. Total Customers

SELECT
    COUNT(DISTINCT customer_unique_id) AS total_customers
FROM olist_customers_dataset;


-- 4. Total Sellers

SELECT
    COUNT(DISTINCT seller_id) AS total_sellers
FROM olist_sellers_dataset;


-- 5. Average Order Value

SELECT
    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id;


-- 6. Revenue by State

SELECT
    c.customer_state,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
    ON c.customer_id = o.customer_id
JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;


-- 7. Orders by State

SELECT
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- 8. Revenue by Product

SELECT
    oi.product_id,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_order_items_dataset oi
GROUP BY oi.product_id
ORDER BY revenue DESC
LIMIT 10;


-- 9. Revenue by Seller

SELECT
    oi.seller_id,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_order_items_dataset oi
GROUP BY oi.seller_id
ORDER BY revenue DESC
LIMIT 10;


-- 10. Average Customer Rating

SELECT
    ROUND(AVG(review_score), 2) AS average_rating
FROM olist_order_reviews_dataset;


-- 11. Review Score Distribution

SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM olist_order_reviews_dataset
GROUP BY review_score
ORDER BY review_score;


-- 12. Payment Method Analysis

SELECT
    payment_type,
    COUNT(*) AS transactions,
    ROUND(SUM(payment_value), 2) AS total_payment
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_payment DESC;


-- 13. Order Status Analysis

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;