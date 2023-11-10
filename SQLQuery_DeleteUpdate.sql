--Updating and Deleting Data
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeId = 1012, Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeId = 1005