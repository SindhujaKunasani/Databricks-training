-- Below is the code for creating a table and insert data into the table
CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    experience INT
);

INSERT INTO Employees VALUES
(101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
(102, 'Anjali', 'HR', 45000, 'Chennai', 3),
(103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
(104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
(105, 'Aman', 'HR', 39000, 'Pune', 2),
(106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
(107, 'Divya', 'IT', 55000, 'Chennai', 3),
(108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
(109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
(110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
(111, 'Vikas', 'HR', 52000, 'Pune', 3),
(112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
(113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
(114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
(115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);

--SELECT 
select * from Employees;
select emp_name,salary from Employees;
select emp_name,department from Employees;
select * from Employees where department = 'IT';
select emp_name,experience from Employees;

--WHERE 

select * from Employees where salary>70000;
select * from Employees where city='Hyderabad';
select * from Employees where experience<4;
select * from Employees where department  = 'Finance';
select * from Employees where salary=52000;

--GROUP BY

select department,sum(salary) as totalsalary
from Employees group by department;

select department,avg(salary) as avgsalary
from Employees group by department;

select city,count(emp_id) as employeecount
from Employees group by city;

select department,max(salary) as maxsalary
from Employees group by department;

select department,min(experience) as minexperience
from Employees group by department;

--HAVING

select department,count(*) as totalcount
from Employees group by department having count(*)>3;

select department,avg(salary) as avgsalary
from Employees group by department having avg(salary)>60000;

select city,count(*) as totalcities
from Employees group by city having count(*)>2;

select department,sum(salary) as totalsalary
from Employees group by department having sum(salary)>200000;

select department,max(salary) as maxsalary
from Employees group by department having max(salary)>90000;

--TOP

select top 5 * from Employees order by salary desc;
select top 3 * from Employees order by experience desc;
select top 2 * from Employees where department='Finance';
select top 4 * from Employees where city ='Hyderabad';
select top 1 * from Employees order by salary desc;

--DISTINCT

select distinct department from Employees;
select distinct city from Employees;
select distinct salary from Employees;
select distinct department,city from Employees;
select distinct experience from Employees;

--COMPARISON Operators

select * from Employees where salary>=80000;
 select * from Employees where experience <= 3;
select * from Employees where salary <> 45000;
select * from Employees where salary < 50000;
select * from Employees where experience > 5;

--LOGICAL Operators


select * from Employees where department = 'IT' AND salary>70000;
select * from Employees where city = 'Hyderabad' OR city = 'Bangalore';
select * from Employees where department = 'HR' AND experience<3;
select * from Employees where salary>60000 OR experience>6;
select * from Employees where department='sales';

--IN and NOT IN


select * from Employees where city IN('Hyderabad','Mumbai');
select * from Employees where department IN('IT','Finance');
select * from Employees where city NOT IN('Chennai','Pune');
select * from Employees  where salary IN(45000,75000,91000);
select * from Employees where department NOT IN('HR','Sales');

--BETWEEN


select * from employees where salary BETWEEN 50000 AND 80000;
select * from employees where experience BETWEEN 3 AND 6;
select * from employees where emp_id BETWEEN 105 AND 112;
select * from employees where salary NOT BETWEEN 40000 AND 60000;
select * from employees where experience BETWEEN 2 AND 4;


--LIKE Operator


select * from Employees where emp_name LIKE  'R%';

select * from Employees where emp_name LIKE  '%a';

select * from Employees where emp_name LIKE  '%v%';

select * from Employees where city LIKE  'B%';

select * from Employees where department LIKE  '%s';
