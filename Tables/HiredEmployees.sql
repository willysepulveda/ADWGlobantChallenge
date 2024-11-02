CREATE TABLE GlobantPoc.HiredEmployees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NULL,
    LastName NVARCHAR(50) NULL,
    HireDate DATETIME NULL,
    JobID INT,
    DepartmentID INT,
    CreatedDate DATETIME DEFAULT GETDATE(),
);