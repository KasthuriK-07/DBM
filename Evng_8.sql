-- Single line comment
/* MultiLine Comment */
/* Why we need database??
		-To store huge amount of data
        -Without db its difficult to searching
        -Easy to retrieve the data
        -Data deduplication avoid
        -Data integrity 
        
        Example:
			Shruthi won first price in sports.
            name
            rank
            activity
            
		Database 			DBMS
        Collection of      To manage db we are using
        records            s/w-mysql workbench,postgresql\
        
        To communicate database we are going to use
        SQL-(Structure Query language)
        
        Data
			1.Structured Data
				-Data which is tabular format
					Rows and Col
						SQL DB-RDMS(Relational DBMS)
            2.Unstructured Data
				-Videos,Audio,file,images,text
            3.Semi-Structured Data
				Json data(Javascript Object Notation)
                Keys and Values pairs
					{"id":10,
                     "name":"anu",
                     "email":"anu@gmail.com"}
				Ex.MongoDB-Nosql(document db)
	SQL Commands
		1.DDL(Data Definition Language)
			-Create,Alter,Drop,Truncate
            Create-Create table or db
            Alter-Modify or add or drop tables
            Drop-Delete data and including table structure
            Truncate-Delete data but remains table structure
		2.DML(Data Manipulation Language)
			-Insert,Update,Delete
				Insert-Add the records or data
                Update-Existing data to modify
                delete-existing data to delete
		3.DQL(Data Query Language)
			-Select-Retrieve the information
		4.DCL(Data Control Language)
			-Grant,Revoke(permission related queries)
		5.TCL(Transactional Control Language)
			-Commit,Rollback,Savepoint
Constraints-Rules to be applied for the db
	1.Not null-Avoid null values ur data should be filled
		Ex.name not null
	2.Unique-It won't allows repeated values
		Ex.Id,Email
	3.Primary key-Col should not have null value and repeated
    values
		Ex.not null,unique
        Its going to define the rows
        Composite Key-More than one primary key
        Ex.Id ,Email
        Foreign Key-Connect b/w two tables
			One table primary key it refers to the other table
            Example:
					Table 1                     Table 2
				Customer Information          Order Information
                cus_id(pk)                      order_id(pk)
                cus_name						order_info
                order_id						product_info
                cus_email					    order_status
        
        4.Check-Apply some condition
			age check(age>25)
		5.Default
			place default "bangalore" */

-- Display the databases
show databases;
-- Create databases
create database ecommerce;
-- Drop the database
drop database ecommerce;
create database ecommerce;
show databases;

-- Select the database
use ecommerce;
-- Create table with constraint
show tables; -- To display the tables in ecommerce db
/* datatypes
	Numeric-int,float,decimal,tinyint,smallint
    String-Char(fixed length memory),
			varchar(variable length memory)
	Date,datetime,time */
create table products(
pr_id int primary key,
pr_name varchar(30) not null,
pr_qty int check(pr_qty>=1),
pr_price int not null,
category varchar(20) default "Accessories",
pr_desc varchar(30) unique);

show tables;

-- To know the table structure
desc products;

-- Select the database
-- create database emp_info;
-- use emp_info
use ecommerce;
-- Create (DDL) Commands
create table employee(
emp_id int primary key,
emp_name varchar(20) not null,
emp_email varchar(35) unique,
emp_age int check(emp_age>25),
emp_place varchar(20) default "Bangalore");
show tables;
desc employee;
-- Insert(DML)
-- To check the data inside the table
select * from employee;-- DQL Commands
-- Insert single record
insert into employee values
(101,"Kasthuri","kasthuri@gmail.com",30,"Bangalore");

insert into employee  (emp_id,emp_name,emp_email,emp_age)
values (102,"Sowmiya","sowmi@gmail.com",26);
insert into employee values 
(110,"Rohit","rohit@gmail.com",36,"Pune");
-- insert multiple records
insert into employee values
(103,"Preethi","preethi@gmail.com",27,"Mumbai"),
(104,"Swathi","swathi@gmail.com",28,"Chennai"),
(105,"Karthik","karthik@gmail.com",31,"Hyderabad"),
(106,"Arun","arun@gmail.com",30,"Chennai"),
(17,"Prajwal","prajwal@gmail.com",29,"Pune");
insert into employee  (emp_id,emp_name,emp_email,emp_age)
values (107,"Renuka","renuka@gmail.com",26),
(108,"Swathika","swathika@gmail.com",29);

insert into employee values
(120,"Mitchell","Mitchell@gmail.com",33,"Riga"),
(121,"Edge","Edge@gmail.com",28,"Warsaw"),
(122,"Casper","Casper@gmail.com",31,"Ventspils"),
(123,"Benedict","Benedict@gmail.com",29,"Riga");

-- Check Primary Key Constraint
insert into employee values
(120,"Mitchell","Mitchell@gmail.com",33,"Riga");
-- Check null value for name
insert into employee values
(120,null,"Mitchell@gmail.com",33,"Riga");
-- Alter(DML)
-- Change col_name(emp_email) to email
alter table employee change emp_email email varchar(45);
alter table employee change emp_place place varchar(20);
-- Add single column
alter table employee add emp_dept varchar(15);
-- Add multiple column
alter table employee add emp_salary int,
add emp_status varchar(15);
-- Drop single column
alter table employee drop emp_status;
alter table employee drop emp_dept,drop emp_salary; -- Drop multiple column
alter table employee add emp_dept varchar(15),
add emp_salary int,add emp_status varchar(10);
-- Update 
-- In Mysql Workbench SAFE_SQL_UPDATES its already enable
-- If its enable u can't update the data without pk
-- Disable Safe Sql Updates
set SQL_SAFE_UPDATES=0;
-- Enable Safe Sql Updates
set SQL_SAFE_UPDATES=1;
set SQL_SAFE_UPDATES=0;
update employee set emp_dept="HR" where place="Bangalore";
update employee set emp_dept="IT" where place="Hyderabad";

-- Update salary age between 31 and 40
update employee set emp_salary=65000 where emp_age between 31 and 40;
update employee set emp_status="Active" 
where emp_age<30 and place="Bangalore"; -- And
update employee set emp_status="Inactive" 
where emp_age>40 or place="Chennai"; -- Or
update employee set emp_status="Inactive" 
where place not in ("Bangalore","Pune","Hyderabad");-- Not in 
update employee set emp_dept="Sales"
where place in ("Pune","Mumbai","Chennai");-- In

-- Delete we can some data to delete for this also we should disable sql updates
delete from employee where place="Riga";


select * from employee;


-- Task
	-- Create Student Table
		-- Insert 10 Records
        -- Alter Add some col name,drop col
        -- Update Using Between,And,or,Not in ,In
        -- Delete some record
        -- Truncate
        -- Drop












        