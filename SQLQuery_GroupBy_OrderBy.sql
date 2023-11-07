--Statements with Group by and order by

SELECT *
FROM EmployeeSalary

SELECT Gender, Age, COUNT(Gender) AS Amount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age
ORDER BY Amount DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

--Insert new values in EmployeeDemographics and EmployeeSalary
INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(1011, NULL, 43000)

UPDATE EmployeeSalary
SET JobTitle = 'Salesman'
WHERE EmployeeID = 1011