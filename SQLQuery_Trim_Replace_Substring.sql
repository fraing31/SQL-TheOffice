--Create New table 
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors

SELECT *
FROM EmployeeDemographics

--Using TRIM, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS LIDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS RIDTRIM
FROM EmployeeErrors

--Using Replace
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

--Using Substring
SELECT SUBSTRING(FirstName, 3, 3) 
FROM EmployeeErrors

SELECT err.FirstName, dem.FirstName 
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON err.FirstName = dem.FirstName

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3) One,
dem.FirstName, SUBSTRING(dem.FirstName,1,3) Two 
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

--Using Upper and Lower
SELECT FirstName, LOWER(FirstName) FirstNameLower
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName) FirstNameUpper
FROM EmployeeErrors