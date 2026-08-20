# 🛒 Olist E-Commerce Business Analytics

## 📊 Project Overview

An end-to-end E-Commerce Business Analytics project built using
SQL and Microsoft Power BI.

The project analyzes the Olist Brazilian E-Commerce dataset to
identify business trends, revenue performance, customer behavior,
product performance, seller performance, payment methods,
customer satisfaction, and delivery performance.

---

## 🎯 Business Objectives

The main objectives of this project are:

- Analyze overall revenue and order performance
- Identify top-performing product categories
- Analyze customer distribution and behavior
- Identify high-performing sellers
- Analyze payment methods
- Evaluate customer satisfaction
- Analyze delivery performance
- Identify important business trends
- Provide actionable business insights

---

## 🛠️ Tools & Technologies

- **SQL**
- **MySQL**
- **Microsoft Power BI**
- **Power Query**
- **DAX**
- **Excel / CSV**
- **Git & GitHub**

---

## 📂 Dataset

The project uses the Olist Brazilian E-Commerce dataset.

### Main datasets

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation
- Product Category Translation

Raw datasets are not included in this repository because of their
size.

---

# 🗄️ Data Model

The Power BI data model connects the major business entities:

Customers → Orders → Order Items

Order Items → Products

Order Items → Sellers

Orders → Payments

Orders → Reviews

Products → Product Categories

---

# 📈 Power BI Dashboard

## Page 1 — Executive Overview

The Executive Overview provides a high-level view of business
performance.

### KPIs

- Total Revenue
- Total Orders
- Total Customers
- Total Sellers
- Average Order Value
- Average Customer Rating

### Visualizations

- Monthly Revenue Trend
- Revenue by State
- Order Status Distribution
- Top Product Categories
- Revenue Growth

![Executive Overview](screenshots/executive_overview.png)

---

## Page 2 — Sales & Revenue Analytics

This page analyzes:

- Monthly revenue
- Monthly orders
- Revenue growth
- Average order value
- Revenue by state
- Revenue by product category
- Top-selling products

---

## Page 3 — Customer Analytics

This page analyzes:

- Total customers
- Customers by state
- Customers by city
- Customer revenue
- Repeat customers
- Orders per customer

---

## Page 4 — Product & Seller Analytics

This page analyzes:

- Top product categories
- Top products
- Product revenue
- Seller revenue
- Seller order volume
- Seller performance

---

## Page 5 — Delivery, Payment & Reviews

This page analyzes:

- Delivery performance
- Average delivery time
- Order status
- Payment methods
- Payment value
- Installments
- Customer review scores

---

# 🧮 Key DAX Measures

### Total Revenue

```DAX
Total Revenue =
SUM(Order_items[price])
