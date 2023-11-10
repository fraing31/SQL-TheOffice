--CTE's
WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER(PARTITION BY Gender) AS TotalGender
, AVG(Salary) OVER(PARTITION BY Gender) AS AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeID
WHERE Salary > '45000'
)

SELECT FirstName, AvgSalary
FROM CTE_Employee


--Temp Tables
CREATE TABLE #temp_employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_employee

INSERT INTO #temp_employee VALUES(
'1001', 'HR', '45000'
)

INSERT INTO #temp_employee
SELECT *
FROM SQLTutorial..EmployeeSalary

DROP TABLE IF EXISTS #temp_employee2
CREATE TABLE #Temp_Employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2