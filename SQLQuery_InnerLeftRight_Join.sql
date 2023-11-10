--Statements with Inner Joins, Full/Left/Right Outer Joins
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID	

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID	

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID	

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeId, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeId, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeId, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeId, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

SELECT JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID	
WHERE JobTitle = 'Salesman'

SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeID	
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

--Add new Table 3
CREATE TABLE WareHouseEmployeeDemographics
(EmployeeId int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

--Add values in table
INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')