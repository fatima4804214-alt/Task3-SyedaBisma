# Data Analytics Project 3: SQL Data Analysis

## Project Overview
This repository contains the extraction phase milestone for my Data Analytics Internship at **DecodeLabs** (Batch 2026). The goal of this project is to shift from procedural spreadsheet viewing to declarative relational logic—querying a raw dataset to extract structured, actionable business intelligence.

## Key Skills Demonstrated
* **Declarative Querying:** Shifting mindsets to define *what* data to pull, leaving execution path optimizations to the database engine parser and Cost-Based Optimizer (CBO).
* **Row-Level Filtering:** Implementing strict data funnels using `WHERE` clauses (Equality, Numeric Comparison, and Pattern Matching via `LIKE`).
* **Categorical Aggregation:** Utilizing `GROUP BY` mechanics paired with mathematical aggregates (`COUNT`, `AVG`, `SUM`) to turn hundreds of individual records into high-level executive insights.

## Project Structure
* `project3_queries.sql`: Contains the production-ready SQL queries structured to filter, group, and aggregate the dataset.

## How to Run the Queries
1. Import the provided DecodeLabs dataset into your preferred SQL relational database management system (e.g., PostgreSQL, MySQL, SQLite).
2. Open and run the script file `project3_queries.sql` to generate the filtered result sets.
