🏥 Hospital Analytics SQL Project
A complete PostgreSQL project that models hospital operations and performs analytical SQL queries on patients, doctors, visits, diagnoses, medications, and prescriptions.
This project demonstrates real‑world SQL skills including schema design, joins, aggregates, window functions, indexing, and data analysis.

<img width="263" height="187" alt="File shot" src="https://github.com/user-attachments/assets/ebfd9f34-1064-46b7-a7e0-eb7334a67e35" />


📘 Overview
This project simulates a hospital’s relational database and answers practical business questions such as:

Which doctor generates the most revenue?

What are the most common diagnoses?

Which medications are prescribed most often?

What is each patient’s lifetime medical cost?

How do visit trends change month‑to‑month?

Which patients have never been prescribed medication?

It’s designed to be portfolio‑ready, easy to run, and easy to extend.

🧱 Database Schema
The project includes five core tables:

Patients
Stores basic patient demographics.

Doctors
Stores doctor information and specialties.

Visits
Tracks each hospital visit.

Medications
List of medications available.

Prescriptions
Links visits to medications.

📊 Analytical Queries Included
Your queries.sql file contains 20 real‑world analytics, including:

✔ Doctor Performance
Total visits per doctor

Total revenue per doctor

Ranking doctors by revenue (window function)

✔ Patient Insights
First visit per patient

Lifetime medical cost

Patients with more than 2 visits

Patients with no prescriptions

✔ Diagnosis Trends
Most common diagnoses

Average cost per diagnosis

✔ Medication Analytics
Most prescribed medications

Medication usage per diagnosis

✔ Visit Trends
Monthly visit counts

Most expensive visit per patient

📈 Example Insights
Doctor Revenue Leader
Identify which doctor brings in the most revenue — useful for staffing and budgeting.

Most Common Diagnosis
Shows what conditions the hospital treats most frequently.

Medication Usage Trends
Reveals which medications are prescribed most often.

High‑Cost Patients
Helps identify patients with chronic or expensive conditions.

Visit Trends Over Time
Useful for forecasting staffing needs and seasonal patterns.

🚀 Performance Optimization
The project includes indexing examples such as:
CREATE INDEX idx_visits_patient ON Visits(patient_id);

This improves performance for:

Joins between Patients and Visits

Filtering by patient_id

Aggregations grouped by patient

🎯 Skills Demonstrated
PostgreSQL schema design

Relational modeling

Analytical SQL

JOINs across multiple tables

Window functions (RANK, OVER)

Indexing for performance

Realistic business insights

Clean, organized SQL project structure
