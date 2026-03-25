# Sales & Inventory Management System

## Overview

This project implements a relational database system to manage sales, customers, inventory, suppliers, and payments using SQL. It also provides analytical queries for business decision-making.

## Database Structure

Database: sales_inventory_system

Tables:

customers_table – customer details
suppliers_table – supplier information
products – product catalog (linked to suppliers)
orders – customer orders
order_details – products per order
payments – order payments

Relationships:
<img width="790" height="319" alt="sales report table" src="https://github.com/user-attachments/assets/40df6f53-c1d7-4394-a77a-ac68c6bd7fe6" />

Customer → Orders (1:M)
Orders → Order Details (1:M)
Products → Suppliers (M:1)
Orders → Payments (1:1)


## Key Features
✔ Data Management
* Structured tables with primary and foreign keys
* Supports customers, products, suppliers, orders, and payments
✔ Analytical Queries
* Customer order tracking
* Product-supplier mapping
* Sales and revenue analysis
* Customer ranking using window functions
* Monthly performance reporting


## Business Insights
* Total Revenue: Calculated from payments
* Top Products: Identified by highest sales volume
* Customer Insights: High-value and loyal customers detected
* Inventory: Unsold and slow-moving products identified
* Suppliers: Best-performing supplier determined


## Improvements
* Add payment_method field in inserts
* Standardize table naming
* Include indexes for performance optimization


## Deliverables
* Database creation script
* Data insertion script
* Query script with all answers
* Documentation (README)
* Presentation


## Conclusion

This system demonstrates effective use of SQL for database design, data management, and business analytics, applicable to real-world retail and inventory systems.
