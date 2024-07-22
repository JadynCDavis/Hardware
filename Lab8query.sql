-- 1 Write an UPDATE command which will change the BudgetCode of the Administration department to BC-100-
-- 5
-- A
SELECT [DepartmentName], [BudgetCode]
FROM [Lab8].[dbo].[DEPARTMENT]
WHERE [DepartmentName] = 'Administration';
GO

-- B
UPDATE [Lab8].[dbo].[DEPARTMENT]
SET [BudgetCode] = 'BC-100-05'
WHERE [DepartmentName] = 'Administration';
GO
-- C
SELECT [DepartmentName], [BudgetCode]
FROM [Lab8].[dbo].[DEPARTMENT]
WHERE [DepartmentName] = 'Administration';
GO

--2

SELECT 
	EMPLOYEE.EMPLOYEENUMBER AS [Emp ID],
	CONCAT(RTRIM(FirstName),' ',(LastName)) AS [Emp Name],
	HoursWorked AS [Hours Worked],
    ProjectID AS [Project ID]
FROM [Lab8].[dbo].[EMPLOYEE], [Lab8].[dbo].[ASSIGNMENT]
UPDATE [Lab8].[dbo].[ASSIGNMENT]
SET EmployeeNumber = 7, HoursWorked = 65.0
WHERE ProjectID = 1000 AND EmployeeNumber = 8;

--3

SELECT Department AS [Department], 
       COUNT(*) AS [NumberOfDepartments]
FROM [Lab8].[dbo].[PROJECT]
GROUP BY Department;

--4

SELECT E.[EmployeeNumber],
       E.[FirstName],
       E.[LastName],
       A.[HoursWorked]
FROM [Lab8].[dbo].[EMPLOYEE] E
INNER JOIN [Lab8].[dbo].[ASSIGNMENT] A ON E.[EmployeeNumber] = A.[EmployeeNumber]
WHERE A.[HoursWorked] > 50;

--5

SELECT ProjectID,E.FirstName,E.LastName, HoursWorked
FROM EMPLOYEE E
JOIN ASSIGNMENT A ON E.EmployeeNumber = A.EmployeeNumber;

--6
SELECT
    P.Department AS DepartmentName,
    E.FirstName,
    E.LastName,
    A.ProjectID
FROM
    EMPLOYEE E
JOIN
    ASSIGNMENT A ON E.EmployeeNumber = A.EmployeeNumber
JOIN
    PROJECT P ON A.ProjectID = P.ProjectID
ORDER BY
    P.Department, A.ProjectID;

--7
SELECT
    A.ProjectID,
    P.ProjectName,
    E.EmployeeNumber,
    E.FirstName,
    E.LastName
FROM
    [Lab8].[dbo].[ASSIGNMENT] A
JOIN
    [Lab8].[dbo].[EMPLOYEE] E ON A.EmployeeNumber = E.EmployeeNumber
JOIN
    [Lab8].[dbo].[PROJECT] P ON A.ProjectID = P.ProjectID
ORDER BY
    A.ProjectID;

--8
SELECT
    A.EmployeeNumber,
    A.ProjectID,
    P.Department,
    P.ProjectName,
    SUM(A.HoursWorked) AS HoursWorked,
    MAX(P.MaxHours) AS MaxHours
FROM
    [Lab8].[dbo].[ASSIGNMENT] A
JOIN
    [Lab8].[dbo].[PROJECT] P ON A.ProjectID = P.ProjectID
GROUP BY
    A.EmployeeNumber, A.ProjectID, P.Department, P.ProjectName, P.MaxHours
ORDER BY
    A.ProjectID;

--9
SELECT
    E.FirstName,
    E.LastName,
    P.ProjectID,
    P.ProjectName,
    A.HoursWorked
FROM
    EMPLOYEE E
JOIN
    ASSIGNMENT A ON E.EmployeeNumber = A.EmployeeNumber
JOIN
    PROJECT P ON A.ProjectID = P.ProjectID;

--10
SELECT
    EmployeeNumber,
    FirstName,
    LastName,
    DepartmentName
FROM
    DEPARTMENT D
JOIN
    EMPLOYEE E ON D.DepartmentName = E.Department;

--11
SELECT
    D.DepartmentName,
    E.EmployeeNumber,
    E.FirstName,
    E.LastName,
    A.HoursWorked
FROM
    [Lab8].[dbo].[ASSIGNMENT] A
JOIN
    [Lab8].[dbo].[EMPLOYEE] E ON A.EmployeeNumber = E.EmployeeNumber
JOIN
    [Lab8].[dbo].[DEPARTMENT] D ON E.Department = D.DepartmentName 
ORDER BY
    D.DepartmentName, A.ProjectID;

--12
SELECT
    P.ProjectID,
    P.ProjectName,
    E.FirstName,
    E.LastName,
    A.HoursWorked,
    P.MaxHours
FROM
    EMPLOYEE E
JOIN
    ASSIGNMENT A ON E.EmployeeNumber = A.EmployeeNumber
JOIN
    PROJECT P ON A.ProjectID = P.ProjectID
ORDER BY
    A.ProjectID;

--13
SELECT
    P.ProjectID,
    P.ProjectName,
    E.FirstName,
    E.LastName,
    A.HoursWorked,
    P.MaxHours
FROM
    EMPLOYEE E
JOIN
    ASSIGNMENT A ON E.EmployeeNumber = A.EmployeeNumber
JOIN
    PROJECT P ON A.ProjectID = P.ProjectID
ORDER BY
    E.FirstName, E.LastName, A.ProjectID;

--14
SELECT
    P.ProjectID,
    P.ProjectName,
    P.Department,
    D.BudgetCode
FROM
    PROJECT P
JOIN
    DEPARTMENT D ON P.Department = D.DepartmentName;



