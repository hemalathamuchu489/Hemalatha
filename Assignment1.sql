create database assignment1;
use assignment1;

-- Display all records from the employee table
CREATE TABLE employee(EmpID int,EmpName varchar(20),DeptID int,Salary int,HiringDate varchar(20));
DESC employee;
INSERT INTO  employee VALUES(101,'John',1,50000,'2018-02-12'),(102,'Alice',2,60000,'2019-07-10'),(103,'Bob',1,55000,'2020-05-05'),(104,'Carol',3,45000,'2017-09-20');
SELECT* FROM employee;
-- Display only EmpName and Salary of all employess
SELECT EmpName,Salary FROM employee;
create table dept(DeptId int,DeptName varchar(20));
Insert into dept values(1,'HR'),(2,'IT'),(3,'Sales');
SELECT* FROM dept;
-- find all employees Who belong to the IT department
SELECT e.EmpName,d.DeptName FROM employee e JOIN dept d ON e.DeptID=d.DeptID  WHERE  d.DeptName='IT';
-- List employees Whose salary is greater than 50000
SELECT  EmpName FROM employee WHERE Salary > 50000;
-- find employees hired before 2020-01-01
SELECT * FROM  employee WHERE HiringDate < 2020-01-01;
-- Display employees in descending order of salary
SELECT* FROM employee ORDER BY Salary DESC;
-- Count total number of employees
SELECT count(*) AS empcount FROM employee;
-- Find the average salary of all employees
SELECT avg(salary) FROM employee;
-- Find the maximum salary in each department
select d.deptname ,Max(e.salary)AS max_salary from employee e join dept d on e.deptid=d.deptid group by d.deptname;
-- Find department having more than 1 employee
SELECT d.deptname,count(e.empid) AS employee_count FROM employee e JOIN dept d ON e.deptid=d.deptid GROUP BY d.deptname HAVING COUNT(e.empid)>1;
