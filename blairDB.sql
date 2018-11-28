create database BLAIR;

use BLAIR

create table GAMES(
gameId int IDENTITY(1,1) primary key,
gameTitle varchar(255) not null,
price decimal(4,2) not null,
gameDescription varchar(255) not null,
requirements varchar(255) not null
);

use BLAIR

create table TRANSACTIONHISTORY(
transactionId int IDENTITY(1,1) primary key,
transactionDetails varchar(255) not null,
transactionDate varchar(255) not null
);

use BLAIR

create table USER_TABLE(
userId int IDENTITY(1,1) primary key,
userName varchar(255) not null,
userPassword varchar(255) not null,
lastName varchar(255) null,
firstName varchar(255) null,
dateOfBirth varchar(255) null,
country varchar(255) null,
phone int null,
email varchar(255) null,
accountType varchar(255) null,
cc_FullName varchar(255) null,
cc_Number int null,
cc_ExpiryDate varchar(255) null,
cc_CVC int
);
