# SQL Data Analyst Job Market Analysis

## Project Overview

This project analyzes Data Analyst job postings using SQL to identify:

* The highest-paying remote Data Analyst jobs
* Skills required for top-paying roles
* Most in-demand Data Analyst skills
* Highest-paying skills
* The most optimal skills to learn based on both demand and salary

The analysis was performed using SQL queries on a job market dataset containing job postings, companies, and skill requirements.

---

## Dataset Tables

### `job_postings_fact`

Contains job posting information such as:

* Job title
* Salary
* Location
* Work arrangement
* Posting date

### `company_dim`

Contains company information.

### `skills_job_dim`

Bridge table connecting jobs and skills.

### `skills_dim`

Contains skill names and IDs.

---

# Analysis Questions

## 1. What are the Top-Paying Data Analyst Jobs?

### Objective

Identify the top 10 highest-paying remote Data Analyst positions with available salary information.

### SQL Concepts Used

* Filtering (`WHERE`)
* Sorting (`ORDER BY`)
* Limiting results (`LIMIT`)
* Joins

### Insights

* Focused on remote opportunities (`job_location = 'Anywhere'`)
* Excluded records with missing salary information
* Included company names through a join with the company table

---

## 2. What Skills Are Required for the Highest-Paying Jobs?

### Objective

Determine the skills associated with the top-paying Data Analyst positions.

### SQL Concepts Used

* Common Table Expressions (CTEs)
* INNER JOINs
* Multi-table relationships

### Insights

* Identified which technical skills repeatedly appeared in high-paying jobs
* Connected salary information to specific skill requirements

---

## 3. What Are the Most In-Demand Skills?

### Objective

Find the top 5 most requested skills for Data Analyst roles.

### SQL Concepts Used

* Aggregation (`COUNT`)
* Grouping (`GROUP BY`)
* Sorting (`ORDER BY`)

### Insights

* Revealed which skills appear most frequently across Data Analyst job postings
* Highlighted core competencies expected by employers

---

## 4. Which Skills Have the Highest Average Salaries?

### Objective

Identify skills associated with the highest-paying remote Data Analyst jobs.

### SQL Concepts Used

* Aggregation (`AVG`)
* Grouping (`GROUP BY`)
* Filtering
* Joins

### Insights

* Calculated average salary for each skill
* Focused on remote Data Analyst opportunities with salary information

---

## 5. What Are the Most Optimal Skills to Learn?

### Objective

Find skills that offer both:

* High employer demand
* High salary potential

### SQL Concepts Used

* Aggregation (`COUNT`, `AVG`)
* `HAVING`
* Grouping
* Sorting

### Insights

* Measured demand using job counts
* Measured value using average salary
* Filtered skills appearing in more than 10 job postings
* Identified skills that provide strong career return on investment

---

# Key SQL Skills Demonstrated

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* Aggregate Functions
* INNER JOIN
* LEFT JOIN
* Common Table Expressions (CTEs)
* Data Filtering
* Data Aggregation

---

# Project Goals

This project demonstrates how SQL can be used to answer real-world career questions such as:

* Which Data Analyst jobs pay the most?
* Which skills are employers looking for?
* Which skills command the highest salaries?
* What skills should aspiring Data Analysts prioritize learning?

By combining salary and demand analysis, the project provides actionable insights for career planning and skill development.

---

## Author

Piyush Khandelwal

SQL Data Analysis Project
