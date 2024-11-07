CREATE VIEW [GlobantPoc].[VW_DepartmentsAboveAverageHires] AS
WITH DepartmentHires AS (
    SELECT he.DepartmentID AS id,
        d.DepartmentName AS department,
        COUNT(he.EmployeeID) AS hired
    FROM GlobantPoc.HiredEmployees AS he
    INNER JOIN GlobantPoc.Departments AS d ON he.DepartmentID = d.DepartmentID
    WHERE YEAR(he.HireDate) = 2021
    GROUP BY he.DepartmentID, d.DepartmentName
),
AverageHires AS (
    SELECT AVG(hired) AS avg_hired
    FROM DepartmentHires
)
SELECT dh.id,
    dh.department,
    dh.hired
FROM DepartmentHires AS dh
CROSS JOIN AverageHires AS ah
WHERE dh.hired > ah.avg_hired