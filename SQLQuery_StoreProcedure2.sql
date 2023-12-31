USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 17/11/2023 17:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle nvarchar(100)
AS
CREATE TABLE #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT *
FROM #temp_employee