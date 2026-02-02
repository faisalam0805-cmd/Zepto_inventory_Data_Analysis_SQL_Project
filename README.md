# Zepto_inventory_Data_Analysis_SQL_Project
Data Analyst Portfolio Project with end-to-end SQL Data Analysis of Zepto E-commerce Inventory data using PostgreSQL.

📦 Zepto Inventory Data Analysis (PostgreSQL)

📌 Project Overview

This project focuses on end-to-end SQL-based data analysis of an inventory dataset from Zepto, a fast-growing e-commerce and quick-commerce platform.
The objective is to demonstrate practical PostgreSQL skills by performing data exploration, data cleaning, and analytical querying on a real-world business dataset.

All analysis has been implemented purely in SQL, making this repository a strong showcase of database querying and analytical thinking.

🛠️ Tech Stack

Database: PostgreSQL

Language: SQL

Tooling: pgAdmin / PostgreSQL CLI

Data Domain: E-commerce Inventory Management

📂 Dataset Description

The dataset represents inventory-level information for Zepto products, including (but not limited to):

Product identifiers

Category and sub-category details

Pricing information

Stock / inventory levels

Availability indicators

⚠️ Note: This dataset is used strictly for learning and analytical demonstration purposes.

🔍 Project Workflow
1️⃣ Data Import

Inventory dataset imported into PostgreSQL tables

Verified schema, data types, and row counts

2️⃣ Data Exploration

Understanding table structure

Checking record counts

Identifying nulls and inconsistencies

Inspecting category and product distributions

3️⃣ Data Cleaning

Handling missing or invalid values

Removing duplicates (if applicable)

Standardizing column values

Ensuring correct data types

4️⃣ Data Analysis

SQL queries were written to answer key business questions such as:

Inventory availability by category

Stock distribution across products

Pricing trends and outliers

Low-stock and high-value items

Category-wise inventory insights

All queries are documented and executed in the provided SQL file.

📜 SQL File

File Name: Zepto_inventory_data_analysis.sql

Contents:

Table exploration queries

Data quality checks

Data cleaning logic

Analytical queries and insights

Each query is commented and structured for readability and reusability.

▶️ How to Run This Project

Install PostgreSQL

Create a new database:

CREATE DATABASE zepto_inventory;


Connect to the database and import the dataset

Open Zepto_inventory_data_analysis.sql

Execute queries sequentially using:

pgAdmin Query Tool, or

PostgreSQL CLI (psql)

📊 Key Learnings & Skills Demonstrated

Real-world SQL data analysis workflow

PostgreSQL querying best practices

Data cleaning using SQL

Writing optimized and readable SQL queries

Translating business questions into SQL logic
