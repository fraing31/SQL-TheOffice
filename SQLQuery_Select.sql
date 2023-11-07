--Select all elements
SELECT *
FROM EmployeeDemographics

--Select statement with top
SELECT TOP 5 *
FROM EmployeeDemographics

--Select statement with distinct
SELECT DISTINCT(Gender)
FROM EmployeeDemographics

--Select statement with count and as
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

--Select statement with max
SELECT MAX(Salary) AS MaxSalary
FROM EmployeeSalary

--Select statement with min
SELECT MIN(Salary) AS MinSalary
FROM EmployeeSalary

--Select statement with distinct
SELECT AVG(Salary) As AverageSalary
FROM EmployeeSalary