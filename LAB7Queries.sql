-- 1. Display all fields from the DEPARTMENT table using wildcard characters.
SELECT * FROM dbo.DEPARTMENT;

-- 2. Display all fields from the ASSIGNMENT table using wildcard characters.
SELECT * FROM dbo.ASSIGNMENT;

-- 3. Display all fields from the EMPLOYEE table using wildcard characters.
SELECT * FROM dbo.EMPLOYEE;

-- 4. Display all fields from the PROJECT table using wildcard characters.
SELECT * FROM dbo.PROJECT;

-- 5. Display all fields from the DEPARTMENT table using field names.
SELECT DepartmentID, DepartmentName, Location, ManagerID FROM dbo.DEPARTMENT;

-- 6. Retrieve specific columns from the PROJECT table for ProjectIDs 1100 and 1400.
SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate
FROM dbo.PROJECT
WHERE ProjectID IN (1100, 1400);

-- 7. Find projects with MaxHours greater than 135.
SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate
FROM dbo.PROJECT
WHERE MaxHours > 135;

-- 8. Retrieve projects for the Finance department with MaxHours greater than 135.
SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate
FROM dbo.PROJECT
WHERE Department = 'Finance' AND MaxHours > 135;

-- 9. List the employee with phone number 360-285-8310.
SELECT FirstName, LastName, Phone, Department
FROM dbo.EMPLOYEE
WHERE Phone = '360-285-8310';

-- 10. List employees in Accounting, Finance, and Marketing using the IN keyword.
SELECT *
FROM dbo.EMPLOYEE
WHERE Department IN ('Accounting', 'Finance', 'Marketing');

-- 11. List employees NOT in Accounting, Finance, and Marketing using IN and NOT keywords.
SELECT *
FROM dbo.EMPLOYEE
WHERE Department NOT IN ('Accounting', 'Finance', 'Marketing');

-- 12. Show employees with Employee ID between 2 and 5 using the BETWEEN keyword.
SELECT *
FROM dbo.EMPLOYEE
WHERE EmployeeID BETWEEN 2 AND 5;

-- 13. Show employees NOT between Employee ID 2 and 5 using NOT and BETWEEN keywords.
SELECT *
FROM dbo.EMPLOYEE
WHERE EmployeeID NOT BETWEEN 2 AND 5;

-- 14. Show employees with Employee ID between 2 and 5 without using the BETWEEN keyword.
SELECT *
FROM dbo.EMPLOYEE
WHERE EmployeeID >= 2 AND EmployeeID <= 5;

-- 15. Show employees whose phone numbers start with '360-287-' using the '_' wildcard.
SELECT *
FROM dbo.EMPLOYEE
WHERE Phone LIKE '360-287-%';

-- 16. Show employees whose phone numbers start with '360-287-' using the '%' wildcard.
SELECT *
FROM dbo.EMPLOYEE
WHERE Phone LIKE '360-287-%';

-- 17. Show employees with NULL phone numbers.
SELECT *
FROM dbo.EMPLOYEE
WHERE Phone IS NULL;

-- 18. Show employees with NOT NULL phone numbers.
SELECT *
FROM dbo.EMPLOYEE
WHERE Phone IS NOT NULL;

-- 19. Show employees sorted by Department and Lastname in descending order.
SELECT *
FROM dbo.EMPLOYEE
ORDER BY Department DESC, Lastname DESC;