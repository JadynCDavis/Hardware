--3
--A
CREATE VIEW EmployeePhoneView AS
SELECT LastName, FirstName, Phone AS EmployeePhone
FROM EMPLOYEE; -- Replace with the actual table name
--B
SELECT * 
FROM EmployeePhoneView
WHERE EmployeePhone IS NULL;

--4
CREATE VIEW Department_Directory_View AS
SELECT
    DepartmentName,
    OfficeNumber,
    Phone
FROM [Lab8].[dbo].[DEPARTMENT];

SELECT *
FROM Department_Directory_View;

--5
CREATE VIEW ViewOne AS
SELECT E.FirstName, E.LastName, P.ProjectName, A.HoursWorked
FROM [Lab8].[dbo].[EMPLOYEE] E
JOIN [Lab8].[dbo].[ASSIGNMENT] A ON E.EmployeeNumber = A.EmployeeNumber
JOIN [Lab8].[dbo].[PROJECT] P ON P.ProjectID = A.ProjectID;

SELECT *
FROM ViewOne;

--6
CREATE VIEW ViewTwo AS
SELECT E.FirstName, E.LastName, P.ProjectName, A.HoursWorked, A.HoursWorked * 40 AS Cost
FROM [Lab8].[dbo].[EMPLOYEE] E
JOIN [Lab8].[dbo].[ASSIGNMENT] A ON E.EmployeeNumber = A.EmployeeNumber
JOIN [Lab8].[dbo].[PROJECT] P ON P.ProjectID = A.ProjectID;

SELECT *
FROM ViewTwo;

--7
CREATE VIEW ViewThree AS
SELECT FirstName, LastName, SUM(VT.Cost) AS TotalCost
FROM ViewTwo VT
GROUP BY FirstName, LastName;

SELECT *
FROM ViewThree;