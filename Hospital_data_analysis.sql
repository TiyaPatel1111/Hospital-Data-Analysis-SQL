USE Certificate_Assignment;

SELECT * FROM hospital_data;

--1. Total Number of Patients 
--   Write an SQL query to find the total number of patients across all hospitals. 

		SELECT 
			SUM(Patients_Count) 
			AS Total_Patients
		FROM hospital_data;

--2. Average Number of Doctors per Hospital 
--   Retrieve the average count of doctors available in each hospital. 

		SELECT 
			Hospital_Name,
			CAST(AVG(CAST(Doctors_Count AS FLOAT)) AS DECIMAL(10,2)) AS Average_Doctor
		FROM hospital_data
		GROUP BY Hospital_Name;

--3. Top 3 Departments with the Highest Number of Patients 
--   Find the top 3 hospital departments that have the highest number of patients. 

		SELECT 
			TOP 3 
			Department,
			SUM(Patients_Count) AS Total_Patients
		FROM hospital_data
		GROUP BY Department
		ORDER BY Total_Patients DESC;

--4. Hospital with the Maximum Medical Expenses 
--   Identify the hospital that recorded the highest medical expenses. 

		SELECT
			TOP 1
			Hospital_Name,
			SUM(Medical_Expenses) AS Total_Expenses
		FROM hospital_data
		GROUP BY Hospital_Name
		ORDER BY Total_Expenses DESC;

--5. Daily Average Medical Expenses 
--   Calculate the average medical expenses per day for each hospital. 

		SELECT 
			Hospital_Name,
			SUM(Medical_Expenses) / SUM(DATEDIFF(day,Admission_Date, Discharge_Date)) AS Daily_Average_Medical_Expenses
		FROM	
			hospital_data
		GROUP BY
			Hospital_Name;
				
--6. Longest Hospital Stay 
--   Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.
 
		SELECT
			TOP 1
			Patients_Count,
			DATEDIFF(day,Admission_Date,Discharge_Date) AS Total_Stay_Day
		FROM 
			hospital_data
		ORDER BY 
			Total_Stay_Day DESC;

--7. Total Patients Treated Per City 
--   Count the total number of patients treated in each city.

		SELECT
			Location,
			SUM(Patients_Count) AS Total_Patient
		FROM hospital_data
		GROUP BY Location
		ORDER BY Total_Patient ;

--8. Average Length of Stay Per Department 
--   Calculate the average number of days patients spend in each department.

		SELECT 
			Department,
			SUM(DATEDIFF(day,Admission_Date,Discharge_Date)* Patients_Count) / 
				SUM(Patients_Count) AS Average_Days_Per_Department
		FROM hospital_data
		GROUP BY Department;

--9. Identify the Department with the Lowest Number of Patients 
--   Find the department with the least number of patients. 

		SELECT
			TOP 1
			Department,
			SUM(Patients_Count) AS Total_Patients
		FROM hospital_data
		GROUP BY Department
		ORDER BY Total_Patients ASC;

--10. Monthly Medical Expenses Report 
--    Group the data by month and calculate the total medical expenses for each month.

		SELECT
			DATENAME(month,Admission_Date) AS Month_Name,
			SUM(Medical_Expenses) AS Total_Expens
		FROM hospital_data
		GROUP BY 
			DATENAME(month,Admission_Date),
			MONTH(Admission_Date)
		ORDER BY 
			MONTH(Admission_Date);