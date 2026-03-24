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
