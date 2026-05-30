# 🏥 Hospital Data Analysis & Performance Reporting (SQL)

## 📌 Project Overview
This data analytics project focuses on evaluating hospital operations, patient admissions, department efficiencies, and medical expenses using **SQL Server (T-SQL)**. By analyzing data across multiple metrics, the project extracts actionable business intelligence to optimize healthcare management, track financial performance, and improve patient care delivery.

The dataset contains comprehensive operational records including patient counts, hospital details, department types, admission/discharge timelines, and financial data.

---

## 🛠️ Key SQL Concepts Demonstrated
* **Data Aggregations:** Utilizing `SUM()`, `AVG()`, and `COUNT()` to monitor macro-level hospital metrics.
* **Date & Time Functions:** Using `DATEDIFF()` to calculate the exact length of patient stays and `DATENAME()` / `MONTH()` for monthly trend reporting.
* **Advanced Filtering & Grouping:** Implementing `GROUP BY`, `ORDER BY`, and `TOP 1` / `TOP 3` clauses to isolate high-performing or critical areas.
* **Type Casting:** Applying `CAST()` and `DECIMAL` transformations to ensure exact financial and average metric calculations.

---

## 📂 Database Schema & Structure
The analysis is conducted on a central relational table named `hospital_data` with the following key attributes:
* **Hospital_Name:** Name of the healthcare facility.
* **Department:** Specialized medical department (e.g., General Medicine, ICU, Pediatrics).
* **Patients_Count:** Total number of patients recorded per transaction.
* **Doctors_Count:** Number of doctors assigned.
* **Admission_Date & Discharge_Date:** Timestamps tracking patient duration.
* **Medical_Expenses:** Financial revenue/costs generated.
* **Location:** City where the hospital is situated.

---

## 🔍 Analytical Questions Answered (Business Logic)

The project systematically resolves **10 core business and operational queries** divided into operational efficiency and financial tracking:

### 1. Operational & Patient Capacity Analysis
* **Total Patient Footfall:** Calculates the total aggregate of patients treated across all facilities.
* **Doctor Allocation:** Measures the average number of available doctors per hospital to review resource distribution.
* **Department Demand:** Identifies the top 3 busiest departments by patient volume to assist in staff planning.
* **Under-utilized Departments:** Isolates the department with the lowest patient volume for capacity optimization.

### 2. Patient Stay & Efficiency Metrics
* **Longest Hospital Stay:** Identifies the maximum duration spent by a patient group using precise date differences.
* **Departmental Patient Turnaround:** Calculates the average length of stay (in days) per department to evaluate treatment speed and bed availability.
* **Regional Distribution:** Tracks the total number of patients treated across different cities to study geographical healthcare demand.

### 3. Financial & Expense Analysis
* **Maximum Financial Contributor:** Pins down the specific hospital generating the highest total medical expenses.
* **Daily Average Expenditure:** Estimates the average daily medical cost per hospital based on the active duration of stay.
* **Monthly Financial Trends:** Groups medical expenses by calendar months to identify seasonal financial peaks.

---

## 📊 Full Report & Code Snippets
The complete SQL script containing all 10 structured queries, database optimization blocks, and execution results is available in this repository. 

📄 **[View Complete Project PDF Report](./Hospital_data_analysis_report.pdf)**

---

## 🚀 How to Run this Project
1. Download or clone the repository to your local machine.
2. Open **SQL Server Management Studio (SSMS)**.
3. Import your source `.csv` dataset into a database named `HospitalDB`.
4. Open and execute the provided SQL script file to generate all operational and financial reports.
