--Statements with Union and Union All
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeId = WareHouseEmployeeDemographics.EmployeeId

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT * 
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT * 
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeId