# Hospital Data Analysis (SQL Server)

This project focuses on analyzing an aggregated healthcare dataset to solve 10 key business questions using advanced SQL queries.

## Key Highlights:
- **Weighted Metrics:** Since the dataset contains aggregated rows with a `Patients_Count` column, weighted averages and total sums (`SUM`) were used instead of standard `COUNT` or `AVG` functions for accurate insights.
- **Time-Series Grouping:** Utilized `DATENAME()` and `MONTH()` functions to extract month names and sort the medical expenses report in proper chronological calendar order.
- **Data Precision:** Applied `CAST` and `DECIMAL` functions to present the average number of doctors with high precision and a professional layout.
