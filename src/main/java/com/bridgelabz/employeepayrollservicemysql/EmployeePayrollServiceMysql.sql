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