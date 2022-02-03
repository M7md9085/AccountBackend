drop database AccountDataBase;
create database AccountDataBase;
USE AccountDataBase;

create table user(
user_id int ,
user_first_name varchar(30), 
user_last_name varchar(30), 
user_pass varchar(30), 
user_permission varchar(30), 
user_salary varchar(30), 
user_is_fired varchar(30), 
user_details varchar(30),
primary key (user_id)
);
create table account(

accountRef int,
accountName varchar(32),
primary key (accountRef)
);
create table DebitCreditInfo(
id int ,
ty varchar(32),
userNameid int,
dates varchar(32),
relation int ,
amount double,
primary key (id),
acc int,
FOREIGN KEY (acc) REFERENCES account(accountRef),
FOREIGN KEY (userNameid) REFERENCES user(user_id)
);










