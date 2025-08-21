use assignment1;
select * from employee;
select * from dept;
-- Display employees whose names start with ‘A’.
SELECT EmpName FROM employee where Empname LIKE 'A%';
-- Find Employees whose salary is between 45000 and 60000.
SELECT empname, salary  FROM employee WHERE salary BETWEEN 45000 AND 60000;
-- Show the department name of each employee(JOIN query)
 SELECT empname ,deptname  FROM employee JOIN dept ON employee.deptid  = dept.deptid ;
-- Find the number of employees in each employee
 SELECT dept.deptname,COUNT(employee.empid) AS num_employees FROM dept LEFT JOIN employee ON dept.deptid=employee.deptid GROUP BY dept.deptname;

-- Display all employes, including those without a department (LEFT JOIN)
 SELECT empname,deptname FROM employee LEFT JOIN dept ON employee.deptid=dept.deptid;


