--5
Alter Table [OWNER]
 ADD Constraint OWNER_PK Primary Key(OwnerID);
Go
--7
SELECT * FROM [OWNER];
SELECT * FROM [EMPLOYEE];
SELECT * FROM [PROPERTY];
SELECT * FROM [SERVICE];

--8
SELECT LastName, FirstName, CellPhone
FROM EMPLOYEE
WHERE ExperienceLevel = 'Master';

--9
SELECT TOP (1000) EmployeeID
      ,[LastName]
      ,[FirstName]
      ,[CellPhone]
  FROM [GG_DB].[dbo].[EMPLOYEE]
  WHERE ExperienceLevel = 'Master'
  AND FirstName LIKE 'J%';

--10
--A
SELECT [LastName] AS 'LastName',
       [FirstName] AS 'FirstName'
FROM [EMPLOYEE]
WHERE [EmployeeID] IN (
    SELECT [EmployeeID]
    FROM [SERVICE]
    WHERE [PropertyID] IN (
        SELECT [PropertyID]
        FROM [PROPERTY]
        WHERE [State] = 'NY' -- Assuming 'NY' represents New York
    )
);

--B
SELECT [LastName] AS 'LastName',
       [FirstName] AS 'FirstName'
FROM [EMPLOYEE]
WHERE [EmployeeID] IN (
    SELECT [EmployeeID]
    FROM [SERVICE]
    WHERE [PropertyID] IN (
        SELECT [PropertyID]
        FROM [PROPERTY]
        WHERE [State] = 'WA' -- Assuming 'WA' represents Washington
    )
);

--11
SELECT DISTINCT e.[LastName] AS 'LastName',
       e.[FirstName] AS 'FirstName'
FROM [EMPLOYEE] e
JOIN [SERVICE] s ON e.[EmployeeID] = s.[EmployeeID]
JOIN [PROPERTY] p ON s.[PropertyID] = p.[PropertyID]
WHERE p.[State] = ('WA') -- Assuming 'NY' represents New York and 'WA' represents Washington
;

--12
-- List the last name and first name of employees who have worked on a property owned by a Corporation
SELECT e.LastName, e.FirstName
FROM EMPLOYEE e
WHERE e.EmployeeID IN (
    SELECT s.EmployeeID
    FROM SERVICE s
    WHERE s.PropertyID IN (
        SELECT p.PropertyID
        FROM PROPERTY p
        WHERE p.OwnerID IN (
            SELECT o.OwnerID
            FROM OWNER o
            WHERE o.OwnerType = 'Corporation'
        )
    )
);

--13
-- List the last name and first name of employees who have worked on a property owned by a Corporation
SELECT e.LastName, e.FirstName
FROM EMPLOYEE e
JOIN SERVICE s ON e.EmployeeID = s.EmployeeID
JOIN PROPERTY p ON s.PropertyID = p.PropertyID
JOIN OWNER o ON p.OwnerID = o.OwnerID
WHERE o.OwnerType = 'Corporation';

--14
-- Show the name and sum of hours worked for each employee
SELECT e.FirstName, e.LastName, CAST(SUM(s.HoursWorked) AS DECIMAL(10, 2)) AS TotalHoursWorked
FROM EMPLOYEE e
JOIN SERVICE s ON e.EmployeeID = s.EmployeeID
GROUP BY e.FirstName, e.LastName;

--15
-- Show the sum of hours worked for each ExperienceLevel of EMPLOYEE
SELECT ExperienceLevel,
       CAST(SUM(HoursWorked) AS DECIMAL(10, 2)) AS TotalHoursWorked
FROM SERVICE
JOIN EMPLOYEE ON SERVICE.EmployeeID = EMPLOYEE.EmployeeID
GROUP BY ExperienceLevel
ORDER BY ExperienceLevel DESC;

--16
-- Show the sum of HoursWorked for each Type of OWNER (excluding Junior employees and types with less than three members)
SELECT o.OwnerType, CAST(SUM(s.HoursWorked) AS DECIMAL(10, 2)) AS TotalHoursWorked
FROM OWNER o
JOIN PROPERTY p ON o.OwnerID = p.OwnerID
JOIN SERVICE s ON p.PropertyID = s.PropertyID
JOIN EMPLOYEE e ON s.EmployeeID = e.EmployeeID
WHERE e.ExperienceLevel != 'Junior'
GROUP BY o.OwnerType
HAVING COUNT(DISTINCT o.OwnerID) >= 3
ORDER BY o.OwnerType;

--17
UPDATE EMPLOYEE
SET ExperienceLevel = 'SuperMaster'
WHERE ExperienceLevel = 'Master';
SELECT * FROM EMPLOYEE;

--18
UPDATE EMPLOYEE
SET ExperienceLevel = 'temp'
WHERE ExperienceLevel = 'Senior';
UPDATE EMPLOYEE
SET ExperienceLevel = 'Senior'
WHERE ExperienceLevel = 'Junior';
UPDATE EMPLOYEE
SET ExperienceLevel = 'Junior'
WHERE ExperienceLevel = 'temp';
SELECT * FROM EMPLOYEE;

--19
DELETE FROM SERVICE;
DELETE FROM EMPLOYEE;
DELETE FROM PROPERTY;
DELETE FROM OWNER;


