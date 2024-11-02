CREATE TABLE GlobantPoc.HiredEmployees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    HireDate DATETIME NOT NULL,
    JobID INT,
    DepartmentID INT,
    CreatedDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (JobID) REFERENCES GlobantPoc.Jobs(JobID),
    FOREIGN KEY (DepartmentID) REFERENCES GlobantPoc.Departments(DepartmentID)
);