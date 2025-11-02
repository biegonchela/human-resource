SELECT * FROM HR;

-- Q1: How many employees are in the company?
SELECT COUNT(*) AS total_employees
FROM HR;

-- Q2: What are the distinct departments in the organization?
SELECT DISTINCT Department
FROM hr;

-- Q3: How many employees are in each department?
SELECT Department, COUNT(*) AS total_employees
FROM hr
GROUP BY Department
ORDER BY total_employees DESC;

-- Q4: What are the different employment statuses and their counts?
SELECT EmploymentStatus, COUNT(*) AS total
FROM hr
GROUP BY EmploymentStatus
ORDER BY total DESC;

-- Q5: What is the average salary of all employees?
SELECT ROUND(AVG(Salary), 2) AS avg_salary
FROM hr;

-- Q6: What is the average salary by department?
SELECT Department, ROUND(AVG(Salary), 2) AS avg_salary
FROM hr
GROUP BY Department
ORDER BY avg_salary DESC;

-- Q7: What is the average number of absences by department?
SELECT Department, ROUND(AVG(Absences), 2) AS avg_absences
FROM hr
GROUP BY Department
ORDER BY avg_absences DESC;

-- Q8: How many employees are male and how many are female?
SELECT Sex AS gender, COUNT(*) AS total
FROM hr
GROUP BY Sex;

-- Q9: What is the average employee satisfaction score by performance score?
SELECT PerformanceScore, ROUND(AVG(EmpSatisfaction), 2) AS avg_satisfaction
FROM hr
GROUP BY PerformanceScore
ORDER BY avg_satisfaction DESC;

-- Q10: Which department has the highest retention rate?
SELECT Department,SUM(
     CASE WHEN EmploymentStatus = 'Active' 
	   THEN 1
	ELSE 0 
    END) * 100.0 / COUNT(*) AS retention_rate
FROM hr
GROUP BY Department
ORDER BY retention_rate DESC;

-- Q11: Which department has the highest total salary expense?
SELECT department,SUM(salary) total_salary
FROM hr
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;

-- Q12: Which manager supervises the most employees?
SELECT ManagerName,COUNT(employee_name) AS total_employees
FROM HR
GROUP BY ManagerName
ORDER BY total_employees DESC
LIMIT 1;

select * from hr;

-- Q14: What is the relationship between salary and performance score?
SELECT PerformanceScore,ROUND(AVG(salary),2)AS avg_salary
FROM HR
GROUP BY PerformanceScore
ORDER BY avg_salary DESC;