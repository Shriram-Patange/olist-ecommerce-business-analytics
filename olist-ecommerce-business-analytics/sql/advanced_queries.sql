USE olist_business_analytics;

-- ==========================================
-- ADVANCED SQL BUSINESS ANALYSIS
-- ==========================================


-- 1. TOP 10 STATES BY REVENUE
-- Using CTE

WITH state_revenue AS (
    SELECT
        c.customer_state,
        SUM(oi.price) AS revenue
    FROM olist_customers_dataset c
    JOIN olist_orders_dataset o
        ON c.customer_id = o.customer_id
    JOIN olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_state
)

SELECT
    customer_state,
    ROUND(revenue, 2) AS revenue
FROM state_revenue
ORDER BY revenue DESC
LIMIT 10;


-- 2. RANK SELLERS BY REVENUE
-- Using Window Function

WITH seller_revenue AS (
    SELECT
        seller_id,
        SUM(price) AS revenue
    FROM olist_order_items_dataset
    GROUP BY seller_id
)

SELECT
    seller_id,
    ROUND(revenue, 2) AS revenue,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS seller_rank
FROM seller_revenue
ORDER BY seller_rank
LIMIT 10;


-- 3. RANK PRODUCTS BY REVENUE

WITH product_revenue AS (
    SELECT
        product_id,
        SUM(price) AS revenue
    FROM olist_order_items_dataset
    GROUP BY product_id
)

SELECT
    product_id,
    ROUND(revenue, 2) AS revenue,
    DENSE_RANK() OVER (
        ORDER BY revenue DESC
    ) AS product_rank
FROM product_revenue
ORDER BY product_rank
LIMIT 10;


-- 4. MONTHLY REVENUE

SELECT
    YEAR(o.order_purchase_timestamp) AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    year,
    month;


-- 5. ORDER STATUS PERCENTAGE

WITH order_status_count AS (
    SELECT
        order_status,
        COUNT(*) AS orders
    FROM olist_orders_dataset
    GROUP BY order_status
)

SELECT
    order_status,
    orders,
    ROUND(
        orders * 100.0 /
        SUM(orders) OVER (),
        2
    ) AS percentage
FROM order_status_count
ORDER BY percentage DESC;


-- 6. CUSTOMER ORDER FREQUENCY

WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM olist_customers_dataset c
    JOIN olist_orders_dataset o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT
    CASE
        WHEN total_orders = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customers
FROM customer_orders
GROUP BY customer_type;


-- 7. SELLER PERFORMANCE

WITH seller_performance AS (
    SELECT
        seller_id,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(price) AS revenue,
        AVG(price) AS avg_product_price
    FROM olist_order_items_dataset
    GROUP BY seller_id
)

SELECT
    seller_id,
    total_orders,
    ROUND(revenue, 2) AS revenue,
    ROUND(avg_product_price, 2) AS avg_product_price,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM seller_performance
ORDER BY revenue_rank
LIMIT 20;


-- 8. REVENUE BY PRODUCT CATEGORY

SELECT
    p.product_category_name,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_products_dataset p
JOIN olist_order_items_dataset oi
    ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;


-- 9. DELIVERY TIME ANALYSIS

SELECT
    ROUND(
        AVG(
            DATEDIFF(
                order_delivered_customer_date,
                order_purchase_timestamp
            )
        ),
        2
    ) AS average_delivery_days
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL;


-- 10. CUSTOMER STATE + REVENUE + RANK

WITH state_analysis AS (
    SELECT
        c.customer_state,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM(oi.price) AS revenue
    FROM olist_customers_dataset c
    JOIN olist_orders_dataset o
        ON c.customer_id = o.customer_id
    JOIN olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_state
)

SELECT
    customer_state,
    total_orders,
    ROUND(revenue, 2) AS revenue,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM state_analysis
ORDER BY revenue_rank;