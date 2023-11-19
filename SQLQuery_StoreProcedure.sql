--Stored Procedures

CREATE PROCEDURE TEST
AS
SELECT * 
FROM EmployeeDemographics

EXEC TEST


CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

EXEC Temp_Employee @JobTitle = 'Salesman'