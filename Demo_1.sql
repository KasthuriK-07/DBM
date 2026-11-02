-- Single Line Commen
/* Multi-Line Comment */

/*
 SQL-Structure Query Language 
 To communicate data in mysql
 
 SQL Commands
	1.DDL-(Data Definition Language)
		-Create,Drop,Truncate,Alter
        -Create-Create new table
        -Drop-Drop the entire table
        -Truncate-Only Values got deleted table 
			structure remains
		-Alter-Modify or change or delete the table
	2.DML-(Data Manipulation Language)
		-Insert,Update,Delete
        -Insert-Adding the records
        -Update-Existing records to modify
        -Delete-Delete the single records
	3.DQL-(Data Query Language)
		-select-Retrieve the records
	4.DCL-(Data  Control Language)
		-Grant,Revoke
        -Permission Allow or Deny
	5.TCL-(Transactional Control Language)
		-Commit,Rollback,Savepoint */
        
-- To know how many databases are available
show databases;

-- Create database
create database emp_info;

-- Drop the database
drop database emp_info;-- Delete the database

-- Create db 
create database emp_info;
show databases;

-- Constraints -Rules to applied for the table
/* 
	-Not null-It should not allow empty records
		Ex.Name not null
    -Unique-Don't allows repetation
		Ex.Id
	-primary key-Identify the rows using this pk
		not null,unique
	-composite key -allows more than one pk
		Ex.Id,Email (Primary Key)
	-Foreign Key-Identify the relation b/w tables
		Refer one table pk to another table pk
        
        EX.Employee             Department
      dept_id  Foreign key            dept_id pk
      references department(dept_id)  dept_name
      -Check Constraints-
		Age check age>18
	- Default 
		default "Bangalore" */
	
-- Select the databases
use emp_info;
-- Datatypes
/*
	Numeric Data-Int,tinyint,bigint,float,decimal
		Ex.Float-45.676
        Decimal(5,2)=90.56
    String Data-Char,Varchar
    char-fixed memory location
		ex.char(2) 
			Gender Char(2)
	varchar
		Ex.name varchar(30)
			Ex.5 letters
	Date
		-Date,Datetime */
-- Create table
create table employee(
emp_id int primary key,
emp_name varchar(20) not null,
emp_email varchar(30) unique,
emp_age int check(emp_age>25),
emp_location varchar(34) default "Bangalore");

-- Display the tables
show tables;

-- To know the structure of the table
desc employee;

-- Insert the single record
insert into employee values
(101,'Kasthuri','kasthuri@gmail.com',30,'Hyderabad');

insert into employee(emp_id,emp_email,emp_location,emp_age,
emp_name) values
(102,"sowmi@gmail.com","Chennai",26,"Sowmiya");
-- Values got inserted or not to check 
select * from employee;

-- Insert multiple records
insert into employee values
(103,'Keerthi','keerthi@gmail.com',31,'Mumbai'),
(104,'Anu','anu@gmail.com',26,'Bangalore'),
(105,'Preethi','preethi@gmail.com',32,'Chennai');

select * from employee;

-- Check the constraints
-- Emp Name not allows null values
insert into employee (emp_id,emp_name,emp_email,emp_age)
values (106,null,"karthik@gmail.com",27);

-- Primary key not allows duplicates
insert into employee (emp_id,emp_name,emp_email,emp_age)
values (105,null,"karthik@gmail.com",27);
-- Check constraint Violate the age
insert into employee (emp_id,emp_name,emp_email,emp_age)
values (106,null,"karthik@gmail.com",20);
-- Default take location (i.e) Bangalore
insert into employee (emp_id,emp_name,emp_email,emp_age)
values (106,"Karthik","karthik@gmail.com",28);

select * from employee;









