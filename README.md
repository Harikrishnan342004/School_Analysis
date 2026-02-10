<img width="783" height="522" alt="Screenshot 2026-02-06 125216" src="https://github.com/user-attachments/assets/aed0e1b3-ce52-406d-a8fa-fe72faa0864d" />

<img width="1273" height="782" alt="Visual_screenshot" src="https://github.com/user-attachments/assets/381531f8-5ee8-4ecd-8d88-b483ee771feb" />

# 📊 School Data Analysis Project

## 📌 Project Overview

This project focuses on **analyzing school-related data** using **SQL** and generating insights in the form of **cleaned CSV outputs** and **visual dashboards**. The goal is to transform raw input data into meaningful analytical results that help understand trends, counts, and distributions across schools.

The workflow follows a simple and industry-style data pipeline:

**Input Data ➜ SQL Analysis ➜ Output CSV ➜ Visualization**

---

## 🗂️ Project Structure

```
School-Analysis-Project/
│
├── Input/
│   └── school_input_data.csv
│
├── SQL/
│   └── school_analysis.sql
│
├── Output/
│   └── school_analysis_output.csv
│
├── Visualization/
│   └── school_analysis_dashboard.png
│
└── README.md
```

---

## 📥 Input Folder

* Contains **raw school data** in CSV format
* This data is directly used for SQL-based analysis
* No preprocessing is done manually to maintain data integrity

Example:

* School details
* Student counts
* Categories / decades / metrics used for analysis

---

## 🧠 SQL Analysis

* SQL is used to:

  * Filter required records
  * Perform aggregations and calculations
  * Convert raw data into analysis-ready format
* The SQL script is stored in the `SQL` folder

Key SQL operations used:

* `SELECT`, `WHERE`
* `GROUP BY`
* `COUNT`, `SUM`
* Data filtering and sorting

---

## 📤 Output Folder

* Contains the **final analyzed CSV file**
* This file is generated after executing the SQL queries
* Used directly for visualization and reporting

Benefits:

* Clean and structured data
* Easy to reuse for dashboards or reports

---

## 📈 Output Visualization

* Visual representation of the analyzed data
* Created using the output CSV file
* Helps in understanding:

  * Comparisons
  * Trends
  * High vs low values

Types of visuals used:

* Bar charts
* Color-coded measures
* Labels for clarity

---

## 🛠️ Tools & Technologies

* **SQL** – Data analysis and transformation
* **CSV** – Input and output data format
* **Visualization Tool** (Tableau / Power BI / Excel)
* **GitHub** – Project version control

---

## 🎯 Key Learnings

* End-to-end data analysis workflow
* Writing efficient SQL for analytics
* Converting query output into visual insights
* Structuring a real-world data analysis project

---

## 🚀 How to Run the Project

1. Place raw data inside the `Input` folder
2. Run the SQL script on the input data
3. Save the analyzed result into the `Output` folder
4. Load the output CSV into a visualization tool
5. Create dashboards and insights

---
 👤 Author

**Hari Krishnan**
Aspiring Data Engineer | SQL | Python | Data Visualization

