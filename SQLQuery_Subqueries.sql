--Subqueries 
SELECT *
FROM EmployeeSalary

--Subquery in select
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AllAverageSalary
FROM EmployeeSalary

--Subquery with partition by
SELECT EmployeeID, JobTitle, Salary, AVG(Salary) OVER(PARTITION BY JobTitle) AllAverageSalary	  
FROM EmployeeSalary

--Group by
SELECT EmployeeID, JobTitle, Salary, AVG(Salary) AllAverageSalary	  
FROM EmployeeSalary
GROUP BY EmployeeID, Salary, JobTitle
ORDER BY 2

--Subquery in From
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER() AllAvgSalary
	  FROM EmployeeSalary) a 

--Subquery in Where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (SELECT EmployeeID
					 FROM EmployeeDemographics
					 WHERE Age > 30)