SQL Joins Practice
📌 Overview

This project is focused on practicing SQL JOIN operations using MySQL. Different types of joins were applied on sample Customers and Orders tables to understand how data can be combined and filtered from multiple tables.

🛠 What We Did

Created two related tables:

Customers → containing customer details

Orders → containing order details with references to customers

Inserted sample records into both tables for testing.

Wrote and executed queries using different types of SQL joins:

INNER JOIN → Fetch only matching records from both tables.

LEFT JOIN → Fetch all records from the left table (Customers), even if there is no match in the right table (Orders).

RIGHT JOIN → Fetch all records from the right table (Orders), even if there is no match in the left table (Customers).

FULL OUTER JOIN (simulated with UNION in MySQL) → Fetch all records from both tables, showing matches where possible.

📚 What We Learned

The difference between INNER, LEFT, RIGHT, and FULL OUTER JOIN.

How to handle scenarios where some records don’t have matching values in the related table.

Writing queries to:

Find customers with or without orders.

List orders that don’t have a matching customer.

Show all data from both tables, even when not related.

Practical understanding of NULL handling in joins.

🚀 Skills Improved

SQL Query Writing

Understanding of Relational Database Concepts

Hands-on practice with MySQL Workbench
