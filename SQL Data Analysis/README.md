# Task 3 - SQL for Data Analysis

## 📌 Project Overview

This project was completed as part of my Data Analyst Internship.

The objective of this task is to use SQL queries to extract, manipulate, and analyze structured e-commerce data using MySQL.

## 🎯 Objective

- Analyze e-commerce data using SQL.
- Retrieve and filter data using SQL queries.
- Perform data aggregation and grouping.
- Use different types of SQL JOINs.
- Use subqueries for analysis.
- Create views for analysis.
- Create indexes for query optimization.

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## 📊 Dataset

The dataset used for this project is the Brazilian E-Commerce Public Dataset by Olist.

The dataset contains information related to:

- Customers
- Orders
- Order Items
- Order Payments
- Order Reviews
- Products
- Sellers
- Geolocation
- Product Category Translation

## 🗄️ Database

Database name:

`ecommerce_db`

### Tables

1. `customers`
2. `orders`
3. `order_items`
4. `order_payments`
5. `order_reviews`
6. `products`
7. `sellers`
8. `geolocation`
9. `category_translation`

## 🔍 SQL Concepts Implemented

### 1. SELECT

Used SELECT statements to retrieve data from database tables.

### 2. WHERE

Used WHERE conditions to filter specific records.

### 3. ORDER BY

Used ORDER BY to sort query results.

### 4. GROUP BY

Used GROUP BY to categorize and summarize data.

### 5. Aggregate Functions

Used:

- `SUM()`
- `AVG()`
- `COUNT()`

to perform numerical analysis.

### 6. JOINs

Implemented:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

to combine data from multiple tables.

### 7. Subqueries

Used subqueries to perform analysis based on calculated values such as average price and average payment value.

### 8. Views

Created a `sales_analysis` view by combining orders, customers, and order items.

### 9. Indexes

Created an index on `orders.customer_id` to support query optimization.

## 📁 Project Structure

```text
Task-3-SQL-Data-Analysis/
│
├── dataset/
│   ├── olist_customers_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   ├── olist_geolocation_dataset.csv
│   └── product_category_name_translation.csv
│
├── screenshots/
│   ├── select_output.png
│   ├── where_output.png
│   ├── groupby_output.png
│   ├── aggregate_output.png
│   ├── join_output.png
│   ├── subquery_output.png
│   ├── view_output.png
│   └── index_output.png
│
├── task3.sql
└── README.md