--Partition By
SELECT FirstName, LastName, Gender, Salary
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
ON dem.EmployeeId = sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
ON dem.EmployeeId = sal.EmployeeID

SELECT Gender, COUNT(Gender) Amount
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
ON dem.EmployeeId = sal.EmployeeID
GROUP BY Gender