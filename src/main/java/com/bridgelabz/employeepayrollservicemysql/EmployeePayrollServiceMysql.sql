# "WELCOME TO EMPLOYEE PAYROLL SERVICE MYSQL"

 # "UC1 - CREATE EMPLOYEE PAYROLL SERVICE DATABASE"
 create database employee_payroll_service;
 show databases;
 use employee_payroll_service;
 select database;

 # "UC2 - CREATE TABLE EMPLOYEE PAYROLL"
 use employee_payroll_service;
 create table employee_payroll(ID int NOT NULL AUTO_INCREMENT UNIQUE,NAME varchar(150) NOT NULL,SALARY double NOT NULL,START date NOT NULL);
 describe employee_payroll;

 # "UC3 - CREATE EMPLOYEE PAYROLL DATA"
 insert into employee_payroll(ID,NAME,SALARY,START)values(1,'PREM',10000.00,'2018-06-01'),(2,'KALPESH',20000.00,'2019-06-01'),(3,'RAHUL',15000.00,'2017-06-01');

 # "UC4 - RETRIEVE ALL EMPLOYEE PAYROLL DATA"
 select * from employee_payroll;

 # "UC5 - RETRIEVE SALARY DATA FOR PARTICULAR EMPLOYEE"
 select salary from employee_payroll where name = 'KALPESH';
 select * from employee_payroll where start between cast('2017-06-01'as date)and date(now());

 # "UC6 - ADD GENDER TO EMPLOYEE PAYROLL TABLE AND UPDATE TABLE"
 alter table employee_payroll add GENDER char(1) NOT NULL after NAME;
 update employee_payroll set GENDER = 'M' where NAME = 'PREM' or NAME = 'KALPESH' or NAME = 'RAHUL';
 insert into employee_payroll(ID,NAME,GENDER,SALARY,START)values(4,'KAVITA','F',10000.00,'2019-06-01'),(5,'KALYANI','F',20000.00,'2019-06-01');

 # "UC7 - USE DATABASE FUNCTION"
 select sum(SALARY)from employee_payroll where GENDER = 'F'group by GENDER;
 select avg(SALARY)from employee_payroll where GENDER = 'F'group by GENDER;
 select min(SALARY)from employee_payroll where GENDER = 'F'group by GENDER;
 select max(SALARY)from employee_payroll where GENDER = 'F'group by GENDER;
 select GENDER, COUNT(NAME) from employee_payroll group by GENDER;

 # "UC8 - EXTEND EMPLOYEE PAYROLL TABLE TO ADD EMPLOYEE PHONE,ADDRESS,DEPARTMENT"
 alter table employee_payroll add PHONE_NUMBER int NOT NULL after GENDER;
 alter table employee_payroll add ADDRESS varchar(150) after PHONE_NUMBER;
 alter table employee_payroll add DEPARTMENT varchar(50) NOT NULL after ADDRESS;

 update employee_payroll set PHONE_NUMBER = 73875576 where NAME = 'PREM';
 update employee_payroll set PHONE_NUMBER = 85236955 where NAME = 'KALPESH';
 update employee_payroll set PHONE_NUMBER = 89632555 where NAME = 'RAHUL';
 update employee_payroll set PHONE_NUMBER = 96325558 where NAME = 'KAVITA';
 update employee_payroll set PHONE_NUMBER = 96325258 where NAME = 'KALYANI';

 update employee_payroll set ADDRESS = 'NASHIK' where NAME = 'PREM';
 update employee_payroll set ADDRESS = 'NASHIK' where NAME = 'KALPESH';
 update employee_payroll set ADDRESS = 'NASHIK' where NAME = 'RAHUL';
 update employee_payroll set ADDRESS = 'NASHIK' where NAME = 'KAVITA';
 update employee_payroll set ADDRESS = 'NASHIK' where NAME = 'KALYANI';

 update employee_payroll set DEPARTMENT = 'HR' where NAME = 'PREM';
 update employee_payroll set DEPARTMENT = 'ADMIN' where NAME = 'KALPESH';
 update employee_payroll set DEPARTMENT = 'SALES' where NAME = 'RAHUL';
 update employee_payroll set DEPARTMENT = 'ACCOUNTS' where NAME = 'KAVITA';
 update employee_payroll set DEPARTMENT = 'RESERCH' where NAME = 'KALYANI';

 # "UC9 - EXTEND EMPLOYEE PAYROLL TABLE TO ADD BASIC PAY,DEDUCTIONS,TAXABLE PAY,INCOME TAX AND NET PAY"
 alter table employee_payroll add BASIC_PAY double NOT NULL after SALARY,add DEDUCTIONS double NOT NULL after BASIC_PAY,add TAXEBLE_PAY double NOT NULL after DEDUCTIONS,add INCOME_TAX double NOT NULL after TAXEBLE_PAY,add NET_PAY double NOT NULL after INCOME_TAX;

 update employee_payroll set BASIC_PAY = 10000 where NAME = 'PREM';
 update employee_payroll set BASIC_PAY = 20000 where NAME = 'KALPESH';
 update employee_payroll set BASIC_PAY = 15000 where NAME = 'RAHUL';
 update employee_payroll set BASIC_PAY = 10000 where NAME = 'KAVITA';
 update employee_payroll set BASIC_PAY = 20000 where NAME = 'KALYANI';

 update employee_payroll set DEDUCTIONS = 2000 where NAME = 'PREM';
 update employee_payroll set DEDUCTIONS = 2000 where NAME = 'KALPESH';
 update employee_payroll set DEDUCTIONS = 2000 where NAME = 'RAHUL';
 update employee_payroll set DEDUCTIONS = 2000 where NAME = 'KAVITA';
 update employee_payroll set DEDUCTIONS = 2000 where NAME = 'KALYANI';

 update employee_payroll set TAXEBLE_PAY = 1000 where NAME = 'PREM';
 update employee_payroll set TAXEBLE_PAY = 1000 where NAME = 'KALPESH';
 update employee_payroll set TAXEBLE_PAY = 1000 where NAME = 'RAHUL';
 update employee_payroll set TAXEBLE_PAY = 1000 where NAME = 'KAVITA';
 update employee_payroll set TAXEBLE_PAY = 1000 where NAME = 'KALYANI';

 update employee_payroll set INCOME_TAX = 2000 where NAME = 'PREM';
 update employee_payroll set INCOME_TAX = 2000 where NAME = 'KALPESH';
 update employee_payroll set INCOME_TAX = 2000 where NAME = 'RAHUL';
 update employee_payroll set INCOME_TAX = 2000 where NAME = 'KAVITA';
 update employee_payroll set INCOME_TAX = 2000 where NAME = 'KALYANI';

 update employee_payroll set NET_PAY = 8000 where NAME = 'PREM';
 update employee_payroll set NET_PAY = 18000 where NAME = 'KALPESH';
 update employee_payroll set NET_PAY = 13000 where NAME = 'RAHUL';
 update employee_payroll set NET_PAY = 8000 where NAME = 'KAVITA';
 update employee_payroll set NET_PAY = 18000 where NAME = 'KALYANI';