drop table if exists T7;
create table T7 (FirstName varchar(20), LastName varchar(20), SNN varchar(20), Hire_date date, 
StartDate date, EndDate date, Trans1_date timestamp, Trans2_date timestamp, Trans3_date timestamp,
Balance numeric(8,2), Salary numeric(10,2), Emp_dues numeric(8,2));
insert into T7 (FirstName, LastName, SNN, Hire_date, StartDate, EndDate, Trans1_date, Trans2_date, Trans3_date, Balance, Salary, Emp_dues)
values
('Steve', 'Johnson', '333333333', '2020-10-15', '2020-11-01', '2021-03-31','2020-12-01 11:30', '2021-01-01 11:30', '2021-02-01 11:30', 7000.00, 80000.00, 100.00),
('Khaled', 'Ali', '444444444', '2020-11-01', '2020-11-15', '2021-04-30','2020-12-01 16:40', '2021-01-01 16:40', '2021-02-01 16:40', 500.00, 82500.00, 25.00),
('John', 'Brown', '555555555', '2020-11-15', '2020-12-01', '2021-05-31','2020-12-01 20:50', '2021-01-01 20:50', '2021-02-01 20:50', 250.00, 82000.00, 75.00),
('Tom', 'Davis', '666666666', '2020-12-01', '2020-12-15', '2021-06-30','2020-12-01 23:00', '2021-01-01 23:00', '2021-02-01 23:00', 2500.00, 81500.00, 50.00),
('Sara', 'Mohsen', '777777777', '2020-12-15', '2021-01-01', '2021-07-31','2021-01-01 02:10', '2021-02-01 02:10', '2021-03-01 02:10', 6000.00, 90000.00, 50.00),
('Bob', 'Thompson', '888888888', '2021-01-01', '2021-01-15', '2021-08-31','2021-02-01 05:20', '2021-03-01 05:20', '2021-04-01 05:20', 4000.00, 92500.00, 75.00),
('Randy', 'Moore', '999999999', '2021-01-15', '2021-02-01', '2021-09-30','2021-03-01 08:30', '2021-04-01 08:30', '2021-05-01 08:30', 750.00, 85000.00, 100.00),
('Karen', 'Taylor', '123-45-6789', '2021-02-01', '2021-02-15', '2021-10-31','2021-03-01 11:40', '2021-04-01 11:40', '2021-05-01 11:40', 15000.00, 87500.00, 75.00),
('John','Smith','123-45-1234', '2020-01-01','2020-03-01', '2020-11-15', '2021-01-01 00:00:00','2021-02-11 00:00:00', '2021-03-25 03:15:12', 145.34, 80000.00, 29.00), 
('Charlotte','Brown','111-00-3456', '2020-02-19','2020-04-15', '2021-01-15', '2021-02-14 00:00:00','2021-03-06 00:00:00', '2021-04-05 02:45:54', 87.00, 65000.00, 18.20);  

select * from T7;

SELECT EXTRACT(YEAR FROM '2018-07-22');

-- delete all employees who hired in 2020.
delete from T7 where extract(year from Hire_date) = '2020';

drop table if exists T8;
create table T8 (FName varchar(30), LName varchar(30), PreferredName varchar(30), BirthDate date,
    ContactDate date, PurchaseDate date, Record_Created timestamp, LastTransaction timestamp ,LastModified timestamp,
    TotalPurchases numeric(12,3), TotalCredits numeric(12,3), Balance numeric(12,3));
    
 insert into T8 (FName, LName, PreferredName, BirthDate, ContactDate, PurchaseDate, Record_Created, 
    LastTransaction, LastModified, TotalPurchases, TotalCredits, Balance)
values 
('Keara', 'Willson', 'Keara', '1994-11-02', '2018-05-10', '2018-05-09', '2018-05-10 09:09:07', 
    '2018-05-10 09:14:15', '2018-05-10 09:14:15', 200.250, 0.000, 200.250), 
('Martin', 'Peterson', 'Marty', '1996-02-19', '2018-05-11', '2018-05-09', '2018-05-11 08:34:21', 
    '2018-05-11 08:40:37', '2018-05-11 08:40:37', 150.130, 0.000, 150.130),
('Brittany', 'Fox', 'Britt', '1989-03-04', '2018-05-12', '2018-05-09', '2018-05-12 07:11:44',
    '2018-05-12 07:18:15', '2018-05-12 07:18:15', 550.830, 0.000, 550.830), 
('Ahmed', 'Carson', 'Ahmed', '1986-07-12', '2018-05-13', '2018-05-09', '2018-05-13 06:12:09',
    '2018-05-13 06:20:01', '2018-05-13 06:20:01', 720.350, 0.000, 720.350),
('Duncan', 'Wood', 'Duncan', '1995-04-15', '2018-05-14', '2018-05-09', '2018-05-14 05:01:00', 
    '2018-05-14 05:08:18', '2018-05-14 05:08:18', 350.400, 0.000, 350.400),
('Adrian', 'Hunter', 'Adrian', '1993-08-26', '2018-05-15', '2018-05-09', '2018-05-15 04:09:22',
    '2018-05-15 04:16:44', '2018-05-15 04:16:44', 840.120, 0.000, 840.120), 
('Tessa', 'Lopez', 'Tess', '1983-10-29', '2018-05-16', '2018-05-09', '2018-05-16 03:07:33',
    '2018-05-16 03:13:42', '2018-05-16 03:13:42', 290.510, 0.000, 290.510),
('Wade', 'David', 'Wade', '1992-01-05', '2018-05-17', '2018-05-09', '2018-05-17 02:05:43', 
    '2018-05-17 02:13:01', '2018-05-17 02:13:01', 325.870, 0.000, 325.870),
('Hayden', 'Larson', 'Hayden', '1997-06-21', '2018-05-18', '2018-05-09', '2018-05-18 01:02:39', 
    '2018-05-18 01:07:41', '2018-05-18 01:07:41', 860.690, 0.000, 860.690),
('Kendall', 'Shell', 'Kendall', '1991-12-13', '2018-05-19', '2018-05-09', '2018-05-19 00:09:22', 
    '2018-05-19 00:17:51', '2018-05-19 00:17:51', 510.270, 0.000, 510.270);
 
 -- Delete all customers whose last name includes the letter 'o' in any position.
 
 select * from T8;
 select * from T8 where LName like '%o%';
 delete from T8 where LName like '%o%';


drop table if exists T9;
create table T9 (FName varchar(30), LName varchar(30), email varchar(100), 
AdmissionDate date, DateOfBirth date, start_date date, RegistrationDate timestamp, updated_at timestamp, 
GraduationDate timestamp, St_Height numeric(5,2), St_Weight numeric(5,2), St_gpa numeric(4,2));

insert into T9 
values 
('John', 'Smith', 'john.smith@email.com', '2020-01-02', '1995-05-24', '2020-08-01', '2020-05-15 15:55', '2020-06-15 13:12', '2020-01-02 15:32:45', 68.00, 192.00, 3.60),
('Adam', 'Challen', 'adam.challen@email.com', '2020-05-10', '1996-07-14', '2020-08-01', '2020-05-15 16:20', '2020-06-15 14:15', '2021-01-03 15:32:45', 74.00, 210.00, 3.80),
('Grace', 'Katz', 'grace.katz@email.com', '2020-01-03', '1994-02-10', '2020-08-01', '2020-05-15 17:00', '2020-06-15 14:55', '2021-01-04 15:32:45', 66.00, 185.00, 3.82),
('Joseph', 'Wood', 'joseph.wood@email.com', '2019-09-02', '1996-10-19', '2020-08-01', '2020-05-15 18:20', '2020-06-15 15:30', '2023-01-05 15:32:45', 72.00, 220.00, 4.00),
('Tina', 'Starr', 'tina.starr@email.com', '2020-03-14', '1994-07-01', '2020-08-01', '2020-05-15 19:00', '2020-06-15 16:00', '2022-01-11 15:32:45', 65.00, 200.00, 3.85),
('Anne', 'Walker', 'anne.walker@email.com', '2020-01-02', '1994-03-22', '2020-08-01', '2020-05-15 20:15', '2020-06-15 16:30', '2021-05-20 12:18:30', 64.00, 140.00, 3.75),
('Albert', 'Phillips', 'albert.phillips@email.com', '2019-09-02', '1996-12-25', '2020-08-01', '2020-05-15 20:55', '2020-06-15 17:10', '2022-05-20 18:21:30', 74.00, 198.00, 3.50),
('Matthew', 'Fisher', 'matthew.fisher@email.com', '2020-01-04', '1993-09-18', '2020-08-01', '2020-05-15 21:30', '2020-06-15 17:50', '2023-05-20 13:16:20', 69.00, 180.00, 3.82),
('Tony', 'Peterson', 'tony.peterson@email.com', '2020-08-10', '1995-11-02', '2020-08-01', '2020-05-15 22:10', '2020-06-15 18:30', '2021-05-20 14:28:45', 71.00, 177.00, 3.89),
('Beth', 'Bennett', 'beth.bennett@email.com', '2020-01-23', '1995-04-20', '2020-08-01', '2020-05-15 22:55', '2020-06-15 19:00', '2021-05-20 17:32:02', 63.00, 140.00, 3.95);

-- delete all records where the  admission date from '2020-01-02' to '2020-05-10'.
delete from T9
where AdmissionDate between '2020-01-02' and '2020-05-10';

drop table if exists T10;
create table T10 (car_model varchar(50), car_make varchar(50), owner_name varchar(50), 
purchase_date date, pick_up_date date, delivery_date date, bill_date timestamp, created_at timestamp, 
updated_at timestamp, price numeric(9,2), MonthlyInstallment numeric(5,2), AnnualIncome numeric(9,2));

insert into T10 (car_model, car_make, owner_name, purchase_date, pick_up_date, delivery_date, bill_date, created_at, updated_at, price, MonthlyInstallment, AnnualIncome )
values 
('Model 3','Tesla','John Doe','2017-08-30','2017-09-10','2017-09-12','2017-10-20 01:50:25','2017-10-19 13:33:12','2017-10-20 01:50:25',56000,500,80000),
('Convertible','Ferrari','Jane Smith','2017-09-05','2017-09-15','2017-09-20','2017-10-20 11:50:25','2017-10-20 01:52:12','2017-10-20 11:50:25',68000,850,95000),
('Camaro','Chevrolet','David Smith','2017-10-05','2017-10-17','2017-10-26','2017-11-30 07:40:25','2017-11-29 01:53:12','2017-11-30 07:40:25',42000,350,67500),
('Explorer','Ford','Michelle Brown','2018-01-04','2018-01-10','2018-01-15','2018-02-20 15:50:25','2018-02-19 13:53:12','2018-02-20 15:50:25',39000,320,65000),
('Impala','Chevrolet','Jason Smith','2018-03-20','2018-03-31','2018-04-10','2018-05-30 15:50:25','2018-05-29 13:53:12','2018-05-30 15:50:25',22000,250,47000),
('Sentra','Nissan','Edward White','2018-04-10','2018-04-21','2018-04-30','2018-06-12 19:55:25','2018-06-11 11:55:12','2018-06-12 19:55:25',13000,200,33000),
('Coupe 3 Series','BMW','Jill Johnson','2019-01-04','2019-01-15','2019-01-20','2019-03-05 17:50:25','2019-03-04 11:50:12','2019-03-05 17:50:25',42000,300,57500),
('Miata','Mazda','Adam Davis','2019-02-22','2019-03-09','2019-03-15','2019-04-30 15:45:25','2019-04-29 11:45:12','2019-04-30 15:45:25',31000,280,49000),
('Pickup F-250','Ford','Dawn Jones','2019-06-02','2019-06-14','2019-06-20','2019-08-05 11:40:25','2019-08-04 09:40:12','2019-08-05 11:40:25',51000,400,69000),
('Suburban','Chevrolet','Kelly Taylor','2019-08-20','2019-08-31','2019-09-08','2019-10-30 13:35:25','2019-10-29 09:35:12','2019-10-30 13:35:25',58000,410,77000);


select * from T10;

-- Delete all Tesla, Chevrolet, Ford, BMW cars.
delete from T10 where car_make in ('Tesla', 'Chevrolet', 'Ford', 'BMW');