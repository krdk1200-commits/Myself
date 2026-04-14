create schema employee;
use employee;

create table employee_sales(

sale_id int auto_increment primary key,
employee_name varchar(50),
department varchar(40),
product varchar(40),
region varchar(40),
sale_amount int(10),
sale_date date
);
describe employee_sales;
insert into employee_sales (employee_name, department, product,
 region, sale_amount, sale_date)
values('Rohan','Electronics','Laptop','Mumbai',55000,'2025-01-01');
select * from employee_sales;

insert into employee_sales (employee_name, department, product,
 region, sale_amount, sale_date)
values('Anjali','Furniture','chair','pune',12000,'2025-03-01'),
('karan','Electronics','Mobile', 'Delhi', 25000,'2025-01-02'),
('Neha', 'Stationary','Notebook','Mumbai', 3000, '2025-01-03');
select * from employee_sales;
select employee_name, department from employee_sales;
select employee_name, department as dept from employee_sales;	
-- Dispaly all the records from employee_sales table;
select * from employee_sales;

-- Select Queries
-- Display all records from the employee_sales table.
select * from employee_sales;
-- Display only employee_name, product, and sale_amount.
select employee_name, product, sale_amount from employee_sales;
-- Display employee_name and region for all sales.
select employee_name, region from employee_sales;
-- Display all records but rename sale_amount as Amount.
select * from employee_sales;
select employee_name, department, product, region, sale_amount as amount, sale_date from employee_sales;
-- Display all sales where only product and sale date are shown.
select product, sale_date from employee_sales;

-- WHERE Clause – Basic Filtering
select * from employee_sales;
-- Show all sales from the Mumbai region.
select * from employee_sales where region ='Mumbai';	
-- Show all sales with sale_amount greater than 20,000.
select * from employee_sales where sale_amount>20000;
--  Show all sales that happened on 2025-01-02.
select * from employee_sales where sale_date='2025-01-02';
-- Show all sales with sale_amount between 10,000 and 30,000.
select * from employee_sales where sale_amount>=10000 and sale_amount <=30000;
-- Show all sales that are not from the Stationery department.
select * from employee_sales where department!='Stationary';
select * from employee_sales;
 -- Logical Operators
-- Show all Electronics sales with amount greater than 30,000.
select * from employee_sales where sale_amount>30000;
-- Show all sales from Mumbai OR Delhi.
select * from employee_sales where region='Mumbai' or 'Delhi';
-- Show all Electronics sales from Mumbai OR Delhi.
select * from employee_sales where region ='Mumbai' or 'Delhi';

-- Show all sales from Furniture department in Pune.

-- Show all sales not happening in Pune.

Wildcards
Find all employees whose name starts with ‘A’.
Find all employees whose name ends with ‘i’.
Find all products that contain the word ‘top’.
Find all employee names with exactly 5 characters.
Find all products whose name starts with ‘Lap’.

Distinct
Display all unique departments.
Display all unique regions.
Display all unique department–region combinations.
Display all unique products sold.

Sorting Records (ORDER BY)
Display all records sorted by sale_amount (lowest to highest).
Display all records sorted by sale_amount (highest to lowest).
Display all records sorted by sale_date (latest first).
Display all records sorted by department alphabetically.
Display all records sorted by department, and within each department by highest sale amount.

LIMIT
Display only the first 3 records.
Display the top 2  highest sales.
Display the latest 3 sales records.
Display records 2 to 4 from the table.

Add Columns
Add column - payment mode to the existing table with constraint not null
Add multiple columns - discount, remarks
Add column at a specific position - email after employee_name

Change
change datatype of sale_amount to decimal
increase column employee_name length to 100 size
add not null constraint in department

Rename
rename employee_name to ename
rename sale_date to transaction_date

Drop column
drop column remarks

Update
Update the total sales to 45,000 for the record with sale_id = 3
Update the region to Bangalore for ename Rohan.
Update both sale_amount and region for the record with sale_id = 5
Increase the sale amount by 2,000 for all Electronics sales in Delhi.
Update the region to Pune for all employees whose name starts with ‘A’.

Delete
Delete the record with sale_id = 7
Delete all sales from the Stationery department
Delete all sales from Pune where sale amount is less than 5,000.
Delete all records where employee name starts with ‘Test’.
Delete all records from the table.

truncate vs drop vs delete


create table school(
s_id int auto_increment primary key,
name varchar(40),
place varchar(49),
state varchar(49),
DOE date);

insert into school(name, place, state, DOE)
values( )