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
