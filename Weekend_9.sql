-- Create Database
create database employee_info;
-- Select the Database
use employee_info;
-- Check the tables in db
show tables;
set SQL_SAFE_UPDATES=0; -- Disable
-- Except pk if I need to update with any other col name 
set SQL_SAFE_UPDATES=1; -- Enable
update employees set salary=50000 where emp_name="Priya";
-- 1.Find the employees who is getting salary 60000 to 80000
select * from employees where salary
between 60000 and 80000;
-- 2.Find the employees who is working in HR
select * from employees where department="HR";
-- 3.Find the employees who is getting salary greater than
-- 75000 and working in Finance
select * from employees where salary>75000 and
department="Finance";

-- Group By
-- Aggregate Functions
-- Count,Max,Min,Avg,Sum
-- 4.Find the highest salary
select max(salary) from employees;
-- 5.FInd the minimum experience
select min(experience) as Minimum_Experience from employees;
-- 6.Find the sum of salary
select sum(salary) from employees;
-- 7.Find the avg experience
select avg(experience) from employees;
-- 8.Find the count of employees
select count(*) from employees;
-- 9.Find the employees count in each department
select department,count(*) as Count
 from employees group by department;
-- Group by col_name only we can display in select clause
-- 10.Find the max salary in each location
select location,max(salary) from employees
group by location;
-- 11.Find the min exp in each dept
select department,min(experience) from employees
group by department;
-- 12.Find avg salary in each dept
select department,avg(salary) from employees
group by department;
-- 13.Find the avg salary in each dept greater than 65000
select department,avg(salary) as Average  from employees
group by department having Average>65000;
-- 14.Find the max salary in each location greater than 78000
select location,max(salary) as Maximum from employees
group by location having Maximum>78000;
-- 15.Find the count of employees in each dept greater than 6
select department,count(*) as Count from employees
group by department having Count>6;
-- Order By-To Sort Like Ascending or Descending
-- 16.Display employee from highest sal to lowest sal
select * from employees order by salary asc;-- Default Ascending Order
select * from employees order by salary desc; -- Descending order'
-- 17.Find the highest salary employee info
select * from employees order by salary desc limit 1;
-- 18.Find the top 3 employee highest salary
select * from employees order by salary desc limit 3;
-- 19.Find the 2nd highest salary employee
-- Offset -Skip the rows
-- Ex:limit 1 offset 1-it will ignore 1st row
select * from employees order by salary
desc limit 1 offset 1;
-- 20.Find the bottom 5 lowest salary in desc
select * from employees order by salary
desc limit 5 offset 20;-- 1st 20 records ignored
-- 21.Find the employee name start with A 
select * from employees where emp_name like 'A%';
-- 22.Find the employee name end with a
select * from employees where emp_name like '%a';

-- 23.Find the employee count in each dept order by highest to lowest
select department,count(*) as Count from 
employees group by department
order by Count desc;

-- 24.Find the max salary in each dept and location and sort salary desc
select department,location,max(salary) as Maximum_Sal
from employees group by department,location
order by Maximum_Sal desc;

-- 25.Find the max salary in each dept and location and sort salary desc
-- Having Max Salary >80000
select department,location,max(salary) as Maximum_Sal
from employees group by department,location
having Maximum_Sal>80000
order by Maximum_Sal desc;

-- 26.Find top 5 maximum salary in each dept and location
select department,location,max(salary) as Maximum_Sal
from employees group by department,location
order by Maximum_Sal desc limit 5;

-- SubQueries-Query Inside Another Query

-- 27.Find the highest employee salary info
select max(salary) from employees;
select * from employees where salary=90000; -- This is not correct

select * from employees where 
salary=(select max(salary) from employees);

-- 28.Find the employee info who is having minimum salary
select * from employees where 
salary=(select min(salary) from employees);

-- 29.Find the employee info who is greater than average salary
select * from employees where 
salary>(select avg(salary) from employees);

-- 30.Find the employee whose salary is greater than avg working in IT
select * from employees where 
salary>(select avg(salary) from employees
where department="IT");
-- 31.Display Employees working in department where avg sal>60000
select * from employees where department
in (select department group by department
having avg(salary)>60000);
select * from products;

-- 32.Find the maximum price in each category
select category,max(price) as Maximum_Price 
from products group by category
order by Maximum_Price desc;

-- 33.Find the maximum price product info using subquery
select * from products where 
price=(select max(price) from products);
-- 34.Find the maximum price in each category having price>10000
select category,max(price) as Max_price
from products group by category having Max_price>10000
order by Max_price desc;
-- 35.Find the maximum qty in each category and brand and sort
-- in descending order
select category,brand,max(price) as Max_Price
from products group by category,brand
order by Max_Price desc;


create table department(
dept_id int primary key,
dept_name varchar(20));

create table student(s_id int primary key,
s_name varchar(15),
dept_id int,
s_marks int);

insert into department values
(101,"IT"),
(102,"CS"),
(103,"AI"),
(104,"ML"),
(105,"DS"),
(106,"Mechanical");

insert into student values
(10,"Anu",102,89),
(11,null,120,90),
(12,"Preethi",103,78),
(13,"Karthik",106,67),
(14,"Keerthi",null,90),
(15,"Swathi",100,78),
(16,"Renu",102,90);

select * from department;
select * from student;

-- Inner Join
-- Retrieve S-Name,Dept_name
select s.s_name,d.dept_name,s.s_marks from student s
inner join department d on 
s.dept_id=d.dept_id;

-- Left Join-Left side all the data retrive and right side only matching data
select * from student s left join
department d on s.dept_id=d.dept_id;


-- Right Join-Right side all the data retrive and left side only matching data
select * from student s right join
department d on s.dept_id=d.dept_id;

-- In matching records display marks highest to lowest
select s.s_name,s.s_marks,d.dept_name from student s 
inner join department d on s.dept_id=d.dept_id
order by s.s_marks desc;

-- Find the student info having marks>85
select s.s_name,s.s_marks,d.dept_name from student s 
inner join department d on s.dept_id=d.dept_id
where s.s_marks>85;

-- Find the topmost student info
select s.s_name,s.s_marks,d.dept_name from student s 
inner join department d on s.dept_id=d.dept_id
order by s.s_marks desc limit 1;

-- Find the 2nd topmost student info
select s.s_name,s.s_marks,d.dept_name from student s 
inner join department d on s.dept_id=d.dept_id
order by s.s_marks desc limit 1 offset 1;


