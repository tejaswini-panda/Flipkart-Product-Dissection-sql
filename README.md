# Flipkart Product Dissection – SQL

## 📌 Project Overview

This project focuses on designing a relational e-commerce database inspired by Flipkart's product and order management operations.

The objective is to build a structured database that can efficiently manage customers, products, sellers, orders, shipments, and order line items while maintaining data integrity through primary and foreign key relationships.

---

## 🎯 Problem Statement

E-commerce platforms generate large volumes of data related to customers, products, sellers, orders, and shipments.

The objective of this project is to design a relational database that:

- Organizes e-commerce data into structured relational tables
- Establishes relationships between different business entities
- Maintains data integrity using primary and foreign keys
- Supports efficient querying of customer, product, seller, order, and shipment information
- Enables analysis of e-commerce transactions and operations using SQL

---

## 🗂️ Database Design

The database consists of **6 interrelated tables**:

1. CUSTOMER
2. PRODUCT
3. SELLER
4. ORDERS
5. SHIPMENT
6. ORDERLINEITEM

### 🔗 Table Relationships

- CUSTOMER → ORDERS
- SELLER → PRODUCT
- ORDERS → SHIPMENT
- ORDERS → ORDERLINEITEM
- PRODUCT → ORDERLINEITEM

These relationships allow customer orders, products, sellers, shipments, and transaction details to be connected within a single relational database.

---

## 🛠️ Tools & Technologies

- SQL
- PostgreSQL
- Relational Database Management
- Data Modelling
- ER Diagram
- Primary Keys
- Foreign Keys
- SQL Queries

---

## 🧩 Database Schema

### CUSTOMER
Stores customer-related information.

### PRODUCT
Stores product details and seller-related information.

### SELLER
Contains seller information associated with products.

### ORDERS
Stores customer order and transaction information.

### SHIPMENT
Manages shipment-related information for orders.

### ORDERLINEITEM
Stores individual products associated with each order.

---

## 🔑 Key SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- Constraints
- INSERT
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- Aggregate Functions
- JOINs
- Subqueries
- Data Filtering
- Relational Data Modelling

---

## 📊 Analysis & Business Use Cases

The database can be used to answer business questions such as:

- Which customers have placed orders?
- Which products are associated with different sellers?
- Which products are included in customer orders?
- How are orders connected with shipments?
- How can customer and order information be retrieved together?
- How can product and seller relationships be analyzed?
- How can transaction-level information be efficiently queried?

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `Flipkart_database.sql` | SQL database creation, table definitions and queries |
| `ER_Diagram.png` | Entity Relationship Diagram showing database structure |
| `Project_Report.pdf` | Detailed project documentation and methodology |
| `README.md` | Project overview and documentation |

---

## 📐 ER Diagram

The ER diagram represents the relationships between customers, products, sellers, orders, shipments, and order line items.

![ER Diagram](ER_Diagram.png)

---

## 💡 Key Learning Outcomes

Through this project, I developed practical experience in:

- Designing relational database schemas
- Creating interconnected database tables
- Implementing primary and foreign key constraints
- Understanding entity relationships
- Writing SQL queries for e-commerce data
- Applying relational data modelling concepts
- Structuring databases for efficient data retrieval

---

## 🚀 Conclusion

This project demonstrates the design and implementation of a relational e-commerce database using SQL.

The database structure provides a foundation for managing customers, products, sellers, orders, shipments, and transaction-level information while maintaining data integrity through well-defined relationships and constraints.

---

## 👩‍💻 Author

**Tejaswini Panda**

Aspiring Data Analyst | Data Science & AI Engineering Enthusiast

GitHub: https://github.com/tejaswini-panda
