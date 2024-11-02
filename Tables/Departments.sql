CREATE TABLE GlobantPoc.Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE()
);