CREATE TABLE GlobantPoc.Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE()
);