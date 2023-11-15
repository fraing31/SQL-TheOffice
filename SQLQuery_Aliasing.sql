-- Aliasing
SELECT FirstName + ' ' + LastName AS FullName 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT AVG(Age) AS AverageAge 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Demo.EmployeeId
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo

SELECT Demo.EmployeeId, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeId = Sal.EmployeeID

SELECT a.EmployeeId, a.FirstName, b.JobTitle, c.Age
FROM SQLTutorial.dbo.EmployeeDemographics a
LEFT JOIN SQLTutorial.dbo.EmployeeSalary b
ON a.EmployeeId = b.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics c
ON a.EmployeeId = c.EmployeeId

SELECT Demo.EmployeeId, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary Sal
ON Demo.EmployeeId = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics Ware
ON Demo.EmployeeId = Ware.EmployeeId