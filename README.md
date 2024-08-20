# HR database SQL Queries

A collection of SQL queries designed to support human resources (HR) functions. This repository includes various queries to analyze employee data, such as retrieving top earners, calculating average salaries, and more.

## Table of Contents

- Prerequisites
- Basic Schematic of tables
- List of Queries



## Prerequisites

Before running these queries, ensure you have:

- Access to a SQL-compatible database (in my case PostgreSQL)
- Attached .csv files ([data_files](/data_files))

## Basic Schematic of tables

![Schemadiagram drawio](https://github.com/user-attachments/assets/098e6d03-f31c-462b-b494-243fa7cbd9a7)



## List of Queries

- [Department Overview including employee count, managers count, and average salary](SQL_queries/1.Department_Overview.sql)
- [List of Managers per Department and their salaries](SQL_queries/2.List_of_Managers_per_Department_and_their_salaries.sql)
- [Distribution of Titles Across Employees](SQL_queries/3.Distribution_of_Titles_Across_Employees.sql)
- [List of newest employees by Hire Date](SQL_queries/4.Employee_details_by_hiring_date.sql)
- [Top 5 earners from each department](SQL_queries/5.Top_5_earners_by_each_department.sql)
