🏥 Hospital Analytics SQL Project
A complete PostgreSQL project that models hospital operations and performs analytical SQL queries on patients, doctors, visits, diagnoses, medications, and prescriptions.
This project demonstrates real‑world SQL skills including schema design, joins, aggregates, window functions, indexing, and data analysis.

<img width="257" height="200" alt="new file shot" src="https://github.com/user-attachments/assets/87819a3e-28b1-4d57-9682-0c294bf192a0" />



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
<img width="755" height="175" alt="patients table" src="https://github.com/user-attachments/assets/85935ad0-19e4-4802-a0ec-886402cac828" />

<img width="536" height="140" alt="dr table" src="https://github.com/user-attachments/assets/051b9f69-4182-4191-b47d-7c7bef6a5fb4" />

<img width="592" height="257" alt="visits table" src="https://github.com/user-attachments/assets/8829b074-6cf3-49c0-8eb0-899b59268f5d" />

<img width="405" height="115" alt="med table" src="https://github.com/user-attachments/assets/ee640ca8-b604-4b3f-b57b-5cb19cfe15f3" />

<img width="663" height="212" alt="presc table" src="https://github.com/user-attachments/assets/7b1ef581-7693-4acb-a4b3-58cc5b3384fe" />


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
