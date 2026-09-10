/*
Not null
Default
Unique
Check
Primary
Foreign Key
Composite */
-- Select the database
-- Create database database_name;
create database college_info;
use college_info;
-- Display the tables
show tables;
/* SQL Commands
DDL-Data Definition Language
	-Create,Alter,Drop,Truncate
DML-Data Manipulation Language
	-Insert,Update,Delete
DQL-Data Query Language
	-Select
DCL-Data COntrol Language
	-Grant,Revoke(User's permission)
TCL-Transaction Control Language
	-Commit,Savepoint,Rollback */
    
-- CRUD
-- Create the table
use college_info;
create table student(
std_id int primary key,
std_name varchar(18) not null,
std_email varchar(25) unique,
std_marks int check (std_marks>65),
placed varchar(10) default 'No'
);
-- To describe the table
desc student;
-- Insert the values
-- Insert Single Record
insert into student values
(10,"Kasthuri","kasthuri@gmail.com",85,"Yes");

-- Check data is inserted or not we ar going to use DQL

select * from student;
-- insert multiple records 
insert into student values
(20,"Sowmi","sowmi@gmail.com",90,"Yes"),
(30,"Anu","Anu@gmail.com",70,"No"),
(40,"Keerthi","keerthi@gmail.com",80,"Yes"),
(50,"Karthik","karthik@gmail.com",66,"No"),
(60,"Preethi","preeethi@gmail.com",68,"No"),
(70,"Arun","arun@gmail.com",75,"No"),
(80,"Pavan","pavan@gmail.com",95,"Yes"),
(90,"Krish","krish@gmail.com",88,"Yes"),
(110,"Sudeep","sudeep@gmail.com",98,"Yes");

select * from student;

-- Check the constraints

-- Check the primary key
insert into student values
(10,"Kasthuri","kasthu@gmail.com",85,"Yes");

-- Check Null values
insert into student values
(120,null,"kasthu@gmail.com",85,"Yes");

-- Insert values with specific column
-- Check Default Constraint
insert into student (std_id,std_name,std_marks)
values(120,"Renu",70);

-- Check Marks Constraint
insert into student (std_id,std_name,std_marks)
values(130,"Renuka",66);
select * from student;

-- Alter
-- Modify Column name,add column,drop column

-- Change old column name to new column name
alter table student change std_name s_name varchar(18);

-- Change multiple old column name to new column name
alter table student
change std_email email varchar(20),
change s_name st_name varchar(10);

-- Add new single column
alter table student 
add company varchar(15);

-- Add multiple column
alter table student
add place varchar(18),
add doj date; -- Format('YYYY-MM-DD')

-- Drop Single Column
alter table student 
drop doj;

-- alter table student drop company,drop place; -Multiple Column

-- Change old table name to new table name
alter table student rename to student_info;
alter table student_info rename to student;
desc student;
/*
create table employee(Col_name Constraints)
insert into tabl_name values()
insert into table_name(col_1,Col_2) values(Val1,Val2)
Retrieve the information-select * from table_name
Alter-Modify or change
alter table table_name add col_name datatype,add col_nam2 dtype
alter table table_name drop col_name datatype,drop col_nam2 dtype
alter table table_name rename to new_table_name
alter table table_name change old_col_name new_col_name 
insert into student (st_id,st_name,st_email) values(10,345..)
dept int Foreign key
references
*/
use college_info;
create database college_info;
desc student;
-- alter table table_name old_col_name old_col_name new_dtype;

insert into student values (180,"Tony","tony@gmail.com");-- Here column count not match
insert into student
(std_id,st_name,email,std_marks)
 values (180,"Tony","tony@gmail.com",89);
 
select * from student;
-- Update-update the records
-- Update using primary_key
-- Instead of pk if we are using any other column if information is correct then update
-- Workbench Default enable ur sql_safe _updates=1 (Enable)-U can use only PK
-- update table_name set col="value" where col_name=val
update student set place="Bangalore" where st_name="Sowmi";
update student set place="Bangalore" where std_id=20; -- Whoever getting error try this cmd
set sql_safe_updates=0; -- Disable ur safe mode then u can update except pk other col also
set sql_safe_updates=1; -- Enable ur safe mode then u can update only using pk
set sql_safe_updates=0; 
alter table student add company varchar(18);
update student set company="Infosys";-- Default assign value to all rows
-- Between Clause
update student set place="Chennai" where std_marks between 75 and 89;
-- > and < AND-Both condition should True
update student set place="Hyderabad" where std_marks>65 and std_marks<=75;

-- update company=null
update student set company=null where std_marks<68 or placed="No";
update student set company="TCS" where std_marks>95 or placed=null;
update student set company="TCS" where std_marks>95 and placed=null;
update student set std_marks=90 where place in ("Bangalore","Chennai");

update student set placed="Yes",company="Wipro"
 where place in ("Bangalore","Chennai");
/* Delete- Delete specific row
	Truncate-Delete all the table but table structure remain
    drop-entire information will delete */
    
delete from student where st_name="Renu"; -- Disable safe sql_update mode
-- otherwise it allows only pk  
delete from student where placed="No" and std_marks=68;
-- Retrieve specific column
select st_name,std_marks,place from student;
select * from student;

/* Task
	-Update emp_dept,emp_location
    -Update emp_location ="Bangalore" Salary is 450000
    -Update Department in (IT,FInance) location is Hyderabad
    -Update emp_status=Active for all row
    -Update emp_status="Inactive" in Hyderabad Location
    -Update emp_salary=50000 check condition dept="IT" and Location="Hyderabad"
    -Delete some row record using emp_location 
    -Truncate the record -create new table insert 5 row and then apply*/






















































/* 
Task
Create table for Employee
Apply Constriants
Emp_Id,Emp_Name,Salary,Experience,age
Emp_Name-Not null
Emp_id-unique not null
salary -default
age-Check>=25
Alter add company,department,location
Drop some column
Insert 10 records */
























    
    













