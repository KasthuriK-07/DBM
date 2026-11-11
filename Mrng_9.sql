-- Single Line Comment
/* Multi-Line
		Comment */
        
/* SQL-Structure Query Language

1.DDL(Data Definition Language)
	-Create,Alter,Drop,Truncate
		Create-Create the table
        ALter-Modify the table
        Drop-Delete table including structure
        Truncate-Delete data but keeps structure
2.DML(Data Manipulation Language)
	-Insert,Update,Delete
		-Insert-Add the records
        -Update-Modify the existing record
        -Delete-Delete some existing record
3.DQL(Data Query Language)
	-Select-To retrieve information
4.DCL(Data Control Language)
	-Grant,Revoke(permission related queries)
5.TCL(Transactional Control Language)
	-Commit,Rollback,Savepoint  
    
Constraints-Rules to be applied for creating table
	1.Not null-Don't allows null values
			Ex:Name not null
    2.unique-Data don't allows repeatition
			Ex.Email Id,Id
	3.Primary Key-It should not null values and it
		should be unique
			It only define the rows
	4.Composite Key-One table two columns we can keep 
    as primary key
			Ex.Id,Email(more than one primary key)
	5.Foreign Key-One table connected to another table
			with reference
            Customer Table          Order Table
            order_id foreign key        order_id,pr_info
            references order(order_id)
	6.Check-To check the condition
			age (check>18)
	7.Default-
		place default "Bangalore" 
        
Datatypes
	Numeric-int,tinyint,smallint,double,float,decimal
			Float-45.867968
            decimal-(10,2)=56.68
	String
		-Char-Fixed length dtype -Gender char(6)
			Consider space or padding
		-Varchar-Variable length dtype
			Ex:email,name varchar(35)
	Date,Datetime,time */
    
-- Create database
-- Display db
show databases;   
create database company_db; 
-- Select the database
use company_db;
-- Display tables
show tables;
-- Drop the database
drop database company_db;
create database company_db;
use company_db;
-- Create table with constraints
create table employee(
emp_id int primary key,
emp_name varchar(20) not null,
emp_email varchar(35) unique not null,
emp_age int check(emp_age>25),
place varchar(20) default "Bangalore");
show tables;
describe employee;
-- Insert Single Record
insert into employee values
(101,"Kasthuri","kasthu@gmail.com",30,"Bangalore");
-- To check the values inserted or not
select * from employee;
insert into employee (emp_age,emp_id,emp_name,
emp_email) values (29,102,"Sruthi","sruthi@gmail.com");
select * from employee;
-- Check the Primary Key Constraint
insert into employee (emp_age,emp_id,emp_name,
emp_email) values (29,102,"Sruthi","sruthi@gmail.com");
-- Check the Primary Key Constraint
insert into employee (emp_age,emp_id,emp_name,
emp_email) values (29,102,"Sruthi","sruthi@gmail.com");
-- Check the name not null= Constraint
insert into employee (emp_age,emp_id,emp_name,
emp_email) values (29,103,null,"sruthi@gmail.com");

-- Insert Multiple records
insert into employee values
(103,"Keerthi","keerthi@gmail.com",31,"Chennai"),
(104,"Anu","anu@gmail.com",26,"Hyderabad"),
(105,"Swathi","swathi@gmail.com",27,"Chennai"),
(106,"Karthik","karthik@gmail.com",30,"Hyderabad");

select * from employee;

/* Create college db
	Create Student table
		Stud_id,stud_name,courses,age,email_id
		Not null,primarykey ... all the constraints to 
        apply
	Insert single record
    Insert multiple records 10 student info
    Check all the constraints */







insert into employee (emp_age,emp_id,emp_name,
emp_email,place) values 
(29,110,"Renuka","renuka@gmail.com","Chennai"),
(29,112,"Preethi","preethi@gmail.com","Chennai");

select * from employee;

CREATE DATABASE product_db;


USE product_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    price DECIMAL(10,2) NOT NULL CHECK(price > 0),
    quantity INT DEFAULT 0 CHECK(quantity >= 0),
    rating DECIMAL(3,1),
    city VARCHAR(50) DEFAULT 'Bangalore',
    product_status VARCHAR(20) DEFAULT 'Available'
);

INSERT INTO products
(product_name, category, brand, price, quantity, rating, city, product_status)
VALUES

('Laptop', 'Electronics', 'Dell', 65000, 10, 4.5, 'Bangalore', 'Available'),
('Mobile', 'Electronics', 'Samsung', 30000, 25, 4.3, 'Chennai', 'Available'),
('Tablet', 'Electronics', 'Apple', 45000, 15, 4.6, 'Mumbai', 'Available'),
('Headphones', 'Electronics', 'Sony', 5000, 40, 4.2, 'Bangalore', 'Available'),
('Smart Watch', 'Electronics', 'Noise', 3500, 30, 3.9, 'Hyderabad', 'Available'),
('Keyboard', 'Electronics', 'Logitech', 1500, 50, 4.1, 'Pune', 'Available'),
('Monitor', 'Electronics', 'LG', 18000, 12, 4.4, 'Chennai', 'Available'),
('Camera', 'Electronics', 'Canon', 55000, 8, 4.7, 'Mumbai', 'Available'),
('Mouse', 'Electronics', 'HP', 800, 60, 4.0, 'Bangalore', 'Available'),
('Printer', 'Electronics', 'Epson', 12000, 15, 4.2, 'Hyderabad', 'Available'),

('T-Shirt', 'Clothing', 'Nike', 1500, 50, 4.0, 'Bangalore', 'Available'),
('Jeans', 'Clothing', 'Levis', 2500, 35, 4.3, 'Chennai', 'Available'),
('Shirt', 'Clothing', 'Peter England', 2000, 45, 4.1, 'Mumbai', 'Available'),
('Jacket', 'Clothing', 'Puma', 4000, 20, 4.4, 'Pune', 'Available'),
('Shoes', 'Clothing', 'Adidas', 5500, 25, 4.5, 'Hyderabad', 'Available'),
('Kurti', 'Clothing', 'Biba', 1800, 40, 4.2, 'Bangalore', 'Available'),
('Saree', 'Clothing', 'Silk India', 6000, 18, 4.6, 'Chennai', 'Available'),
('Watch', 'Clothing', 'Fossil', 9000, 10, 4.3, 'Mumbai', 'Available'),
('Cap', 'Clothing', 'Nike', 700, 55, 3.9, 'Pune', 'Available'),
('Handbag', 'Clothing', 'Lavie', 2200, 30, 4.1, 'Hyderabad', 'Available'),

('Office Chair', 'Furniture', 'IKEA', 8000, 12, 4.2, 'Bangalore', 'Available'),
('Study Table', 'Furniture', 'IKEA', 12000, 8, 4.4, 'Chennai', 'Available'),
('Sofa', 'Furniture', 'Nilkamal', 35000, 5, 4.6, 'Mumbai', 'Available'),
('Bed', 'Furniture', 'Godrej', 25000, 7, 4.3, 'Hyderabad', 'Available'),
('Cupboard', 'Furniture', 'Godrej', 18000, 10, 4.1, 'Pune', 'Available'),
('Dining Table', 'Furniture', 'IKEA', 22000, 6, 4.5, 'Bangalore', 'Available'),
('Bookshelf', 'Furniture', 'Nilkamal', 7000, 15, 4.0, 'Chennai', 'Available'),
('Shoe Rack', 'Furniture', 'Godrej', 4500, 20, 3.9, 'Mumbai', 'Available'),

('SQL Book', 'Books', 'Pearson', 1200, 30, 4.5, 'Bangalore', 'Available'),
('Python Book', 'Books', 'OReilly', 1500, 25, 4.7, 'Chennai', 'Available'),
('Data Science Book', 'Books', 'McGraw Hill', 1800, 20, 4.6, 'Hyderabad', 'Available'),
('Notebook', 'Books', 'Classmate', 100, 100, 4.0, 'Mumbai', 'Available'),
('Java Book', 'Books', 'Pearson', 1400, 18, 4.2, 'Pune', 'Available'),
('Machine Learning Book', 'Books', 'Wiley', 2200, 15, 4.8, 'Bangalore', 'Available'),
('Django Book', 'Books', 'OReilly', 1700, 22, 4.4, 'Chennai', 'Available'),

('Chocolate', 'Food', 'Cadbury', 100, 200, 4.5, 'Bangalore', 'Available'),
('Biscuits', 'Food', 'Britannia', 50, 150, 4.2, 'Chennai', 'Available'),
('Coffee', 'Food', 'Nescafe', 300, 60, 4.4, 'Mumbai', 'Available'),
('Chips', 'Food', 'Lays', 20, 100, 4.0, 'Pune', 'Available'),
('Juice', 'Food', 'Tropicana', 150, 80, 4.1, 'Hyderabad', 'Available'),
('Green Tea', 'Food', 'Lipton', 250, 45, 4.3, 'Bangalore', 'Available'),

('Cricket Bat', 'Sports', 'MRF', 4000, 15, 4.5, 'Bangalore', 'Available'),
('Football', 'Sports', 'Nivia', 1200, 30, 4.2, 'Chennai', 'Available'),
('Badminton Racket', 'Sports', 'Yonex', 2500, 20, 4.6, 'Mumbai', 'Available'),
('Sports Shoes', 'Sports', 'Puma', 6000, 12, 4.4, 'Pune', 'Available'),
('Gym Bag', 'Sports', 'Nike', 1800, 25, 4.1, 'Hyderabad', 'Available'),

('Water Bottle', 'Accessories', 'Milton', 500, 70, 4.2, 'Bangalore', 'Available'),
('Backpack', 'Accessories', 'Skybags', 1800, 35, 4.4, 'Chennai', 'Available'),
('Sunglasses', 'Accessories', 'RayBan', 7500, 10, 4.7, 'Mumbai', 'Available'),
('Wallet', 'Accessories', 'Wildcraft', 900, 40, 4.0, 'Pune', 'Available'),
('Umbrella', 'Accessories', 'Popy', 600, 50, 3.8, 'Hyderabad', 'Available');

select * from products;

use company_db;
show tables;
desc employee;

insert into employee values(
120,"Tony","tony@gmail.com",26,"Bangalore");

select * from employee;
insert into employee values(
121,"Keerthana","keerthana@gmail.com",26,"Chennai"),
(122,"Prachi","prachi@gmail.com",27,"Bangalore");
select * from employee;

insert into employee (emp_age,emp_id,emp_email,emp_name)
values (30,123,"sudeep@gmail.com","Sudeep");


-- Alter-(DML)
-- Change column name
alter table employee change emp_name e_name varchar(20);
alter table employee change emp_email e_email varchar(35);

-- Add single column
alter table employee add emp_salary int;

-- Add Multiple columns
alter table employee add emp_dept varchar(20),
add emp_status varchar(15);
-- Drop single column
alter table employee drop emp_salary;

alter table employee add emp_salary int;
select * from employee;
alter table employee rename emp;
show tables;

select * from emp;
-- Update 
-- Safe_SQL_UPDATES =In Mysql Workbench its in the enable mode

update emp set emp_status="Active" where e_name="Anu";
set SQL_SAFE_UPDATES=0; -- Disable Mode-We can use other than pk to update
set SQL_SAFE_UPDATES=1; -- Enable Mode -We can use only pk to update

update emp set emp_status="Active";
update emp set emp_dept="IT" where place="Bangalore";
-- HR In Chennai,Sales in Hyderabad
select * from emp;




























