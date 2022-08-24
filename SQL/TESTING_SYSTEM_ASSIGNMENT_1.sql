drop database if exists testing_system_assignment_1;
create database testing_system_assignment_1;

use testing_system_assignment_1;

create table department (
department_id int  unsigned primary key  auto_increment,
department_name varchar(50)
 );
 create table position (
position_id int  unsigned primary key  auto_increment,
position_name varchar(50)
 );
 
 create table Account (
account_id int  unsigned primary key  auto_increment,
email varchar(100) unique,
username varchar(100) unique,
full_name varchar(100),
department_id int unsigned,
foreign key(department_id) references department(department_id),
position_id int unsigned,
foreign key (position_id) references position (position_id),
create_date Date
 );
 
create table `Groups` (
group_id int  unsigned primary key  auto_increment,
group_name varchar(100) unique,
creator_id int,
create_date Date
 );
 
create table group_account (
group_id int  unsigned ,
foreign key (group_id) references `Groups` (group_id),
account_id int unsigned,
foreign key (account_id) references Account (account_id),
creator_id int,
join_date Date,
PRIMARY KEY (group_id,account_id)
 );
 
 create table type_question (
type_id int  unsigned primary key  auto_increment,
type_name enum ('Essay','Multiple-Choice')
 );

create table category_question (
category_id int  unsigned primary key  auto_increment,
category_name varchar(50)
 );
 
create table question (
question_id int  unsigned primary key auto_increment,
content varchar(1000),
category_id int unsigned,
foreign key (category_id) references category_question(category_id),
type_id int unsigned,
foreign key (type_id) references type_question(type_id),
creator_id int,
create_date date
 );
 
 create table answer(
answer_id int unsigned primary key auto_increment,
content varchar(500),
question_id int unsigned,
foreign key(question_id)references question(question_id),
is_correct boolean
);

create table exam (
exam_id int  unsigned primary key auto_increment,
code varchar(20),
title varchar(50),
category_id int unsigned,
foreign key(category_id )references category_question(category_id ),
duration int unsigned,
creator_id int,
create_date date);

create table exam_question (
exam_id int  unsigned primary key auto_increment,
question_id int unsigned,
foreign key(question_id)references question(question_id)
 );

