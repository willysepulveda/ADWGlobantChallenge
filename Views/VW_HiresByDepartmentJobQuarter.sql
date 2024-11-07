CREATE VIEW [GlobantPoc].[VW_HiresByDepartmentJobQuarter] AS
SELECT d.DepartmentName AS Department,
    j.JobTitle AS Job,
    SUM(CASE WHEN MONTH(he.HireDate) BETWEEN 1 AND 3 THEN 1 ELSE 0 END) AS Q1,
    SUM(CASE WHEN MONTH(he.HireDate) BETWEEN 4 AND 6 THEN 1 ELSE 0 END) AS Q2,
    SUM(CASE WHEN MONTH(he.HireDate) BETWEEN 7 AND 9 THEN 1 ELSE 0 END) AS Q3,
    SUM(CASE WHEN MONTH(he.HireDate) BETWEEN 10 AND 12 THEN 1 ELSE 0 END) AS Q4
FROM GlobantPoc.HiredEmployees AS he
INNER JOIN GlobantPoc.Departments AS d 
ON (he.DepartmentID = d.DepartmentID)
INNER JOIN GlobantPoc.Jobs AS j 
ON (he.JobID = j.JobID)
WHERE YEAR(he.HireDate) = 2021
GROUP BY d.DepartmentName, j.JobTitle