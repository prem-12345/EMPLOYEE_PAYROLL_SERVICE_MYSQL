# "WELCOME TO EMPLOYEE PAYROLL SERVICE MYSQL"

 # "UC1 - CREATE EMPLOYEE PAYROLL SERVICE DATABASE"
 create database employee_payroll_service;
 show databases;
 use employee_payroll_service;
 select database;

 # "UC2 - CREATE TABLE EMPLOYEE PAYROLL "
 use employee_payroll_service;
 create table employee_payroll(ID int NOT NULL AUTO_INCREMENT UNIQUE,NAME varchar(150) NOT NULL,SALARY double NOT NULL,START date NOT NULL);
 describe employee_payroll;
