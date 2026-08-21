# 📊 Business Questions

## Olist E-Commerce Business Analytics

This document contains the key business questions analyzed in the
Olist E-Commerce Business Analytics project.

The questions are designed to evaluate sales performance, customers,
products, sellers, payments, reviews, and delivery operations.

---

## 1. Sales & Revenue Analysis

### Q1. What is the total revenue generated?

**Purpose:**  
Measure the overall sales performance of the e-commerce business.

**SQL concepts:**
- SUM()
- Aggregation

---

### Q2. How many orders were placed?

**Purpose:**  
Understand the overall order volume.

**SQL concepts:**
- COUNT()
- DISTINCT

---

### Q3. What is the Average Order Value?

**Purpose:**  
Measure the average revenue generated per order.

**SQL concepts:**
- SUM()
- COUNT()
- DIVIDE logic

---

### Q4. How does revenue change over time?

**Purpose:**  
Identify monthly and yearly revenue trends.

**SQL concepts:**
- Date functions
- GROUP BY
- Aggregation

---

### Q5. Which states generate the highest revenue?

**Purpose:**  
Identify the strongest geographic markets.

**SQL concepts:**
- JOIN
- GROUP BY
- SUM()
- ORDER BY

---

## 2. Customer Analysis

### Q6. How many unique customers are there?

**Purpose:**  
Measure the size of the customer base.

**SQL concepts:**
- COUNT(DISTINCT)

---

### Q7. Which states have the highest number of customers?

**Purpose:**  
Identify regions with the largest customer base.

**SQL concepts:**
- GROUP BY
- COUNT()
- ORDER BY

---

### Q8. How many orders does each customer place?

**Purpose:**  
Understand customer purchasing frequency.

**SQL concepts:**
- JOIN
- GROUP BY
- COUNT()

---

### Q9. Who are the repeat customers?

**Purpose:**  
Identify customers who purchased more than once.

**SQL concepts:**
- CTE
- GROUP BY
- CASE

---

## 3. Product Analysis

### Q10. Which product categories generate the highest revenue?

**Purpose:**  
Identify the most profitable product categories.

**SQL concepts:**
- JOIN
- GROUP BY
- SUM()
- ORDER BY

---

### Q11. Which products generate the highest revenue?

**Purpose:**  
Identify top-performing products.

**SQL concepts:**
- Aggregation
- Ranking
- Window functions

---

### Q12. Which products have the highest sales volume?

**Purpose:**  
Identify products with the highest number of items sold.

**SQL concepts:**
- COUNT()
- GROUP BY
- ORDER BY

---

## 4. Seller Analysis

### Q13. Which sellers generate the highest revenue?

**Purpose:**  
Identify high-performing sellers.

**SQL concepts:**
- GROUP BY
- SUM()
- RANK()

---

### Q14. Which sellers have the highest number of orders?

**Purpose:**  
Measure seller order volume.

**SQL concepts:**
- COUNT()
- GROUP BY
- Window functions

---

### Q15. How can sellers be ranked according to revenue?

**Purpose:**  
Create a seller performance ranking.

**SQL concepts:**
- CTE
- RANK()
- Window functions

---

## 5. Payment Analysis

### Q16. Which payment method is most commonly used?

**Purpose:**  
Understand customer payment preferences.

**SQL concepts:**
- GROUP BY
- COUNT()
- ORDER BY

---

### Q17. Which payment method generates the highest payment value?

**Purpose:**  
Identify the most valuable payment methods.

**SQL concepts:**
- SUM()
- GROUP BY

---

### Q18. What is the distribution of payment installments?

**Purpose:**  
Understand customer financing behavior.

**SQL concepts:**
- GROUP BY
- Aggregation

---

## 6. Customer Satisfaction Analysis

### Q19. What is the average customer review score?

**Purpose:**  
Measure overall customer satisfaction.

**SQL concepts:**
- AVG()

---

### Q20. What is the distribution of review scores?

**Purpose:**  
Understand customer satisfaction levels.

**SQL concepts:**
- GROUP BY
- COUNT()

---

### Q21. Which areas or products have better customer ratings?

**Purpose:**  
Identify relationships between products, locations, and customer
satisfaction.

**SQL concepts:**
- JOIN
- GROUP BY
- AVG()

---

## 7. Order Status Analysis

### Q22. What is the distribution of order statuses?

**Purpose:**  
Understand how many orders are delivered, shipped, canceled,
processing, etc.

**SQL concepts:**
- GROUP BY
- COUNT()

---

### Q23. What percentage of orders are delivered?

**Purpose:**  
Measure successful order fulfillment.

**SQL concepts:**
- CASE
- Aggregation
- Window functions

---

## 8. Delivery Analysis

### Q24. What is the average delivery time?

**Purpose:**  
Measure the efficiency of the delivery process.

**SQL concepts:**
- DATEDIFF()
- AVG()

---

### Q25. Which orders were delivered late?

**Purpose:**  
Identify delivery performance problems.

**SQL concepts:**
- Date functions
- CASE
- WHERE

---

### Q26. Which states have longer delivery times?

**Purpose:**  
Identify geographic delivery challenges.

**SQL concepts:**
- JOIN
- GROUP BY
- AVG()
- DATEDIFF()

---

# 🧠 Advanced SQL Techniques Used

The project demonstrates the following SQL techniques:

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- DISTINCT
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- CASE
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- DENSE_RANK()
- Date Functions
- Conditional Aggregation

---

# 📈 Power BI Analysis

The SQL analysis is visualized through a Power BI dashboard containing:

- Total Revenue
- Total Orders
- Total Customers
- Total Sellers
- Average Order Value
- Average Customer Rating
- Monthly Revenue Trend
- Revenue by State
- Order Status Distribution
- Top Product Categories

---

# 🎯 Project Goal

The primary goal of this project is to transform raw e-commerce
data into meaningful business insights that can support:

- Sales decisions
- Marketing decisions
- Customer analysis
- Product strategy
- Seller performance management
- Payment strategy
- Delivery optimization
- Customer satisfaction improvement

---

# 🚀 Expected Business Value

The analysis helps answer:

> "What is happening in the business, why is it happening, and
> where should the business focus its efforts?"

The combination of SQL and Power BI provides both detailed
data analysis and an interactive business intelligence dashboard.
