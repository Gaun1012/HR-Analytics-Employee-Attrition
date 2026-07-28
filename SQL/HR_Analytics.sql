CREATE DATABASE hr_analytics;
USE hr_analytics;
SHOW DATABASES;
USE hr_analytics;
RENAME TABLE `hr-employee-attrition` TO employees;
SELECT * FROM employees;

SELECT COUNT(*) AS Total_Employees
FROM employees;

SELECT COUNT(*) AS Attrition_Count
FROM employees
WHERE Attrition = 'Yes';

SELECT
ROUND(
COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0/
COUNT(*),
2
) AS Attrition_Rate
FROM employees;

SELECT
ROUND(AVG(Age),0) AS Average_Age
FROM employees;

DESCRIBE employees;
ALTER TABLE employees
CHANGE COLUMN `ï»¿Age` Age INT;

SELECT
ROUND(AVG(Age),0) AS Average_Age
FROM employees;

SELECT
ROUND(AVG(MonthlyIncome),0) AS Average_Income
FROM employees;

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Department
ORDER BY Attrition_Rate DESC;

SELECT
    JobRole,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) *100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

SELECT
    OverTime,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY OverTime;

SELECT
    BusinessTravel,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;

SELECT
    MaritalStatus,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY MaritalStatus
ORDER BY Attrition_Rate DESC;

SELECT
    Gender,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Gender;

SELECT
    EducationField,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY EducationField
ORDER BY Attrition_Rate DESC;

SELECT
    YearsAtCompany,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome),2) AS Average_Income
FROM employees
GROUP BY Attrition;

SELECT
    Attrition,
    ROUND(AVG(Age),2) AS Average_Age
FROM employees
GROUP BY Attrition;