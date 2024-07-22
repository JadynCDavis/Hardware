-- 1 Write an UPDATE command which will change the BudgetCode of the Administration department to BC-100-
-- 5
-- A
SELECT D.DepartmentName, D.BudgetCode
FROM DEPARTMENT D
WHERE D.DepartmentName = 'Administration';
GO
-- B
UPDATE DEPARTMENT
SET BudgetCode = 'BC-100-05'
WHERE DepartmentName = 'Administration';
GO
-- C
SELECT D.DepartmentName, D.BudgetCode
FROM DEPARTMENT D
WHERE D.DepartmentName = 'Administration';
GO