drop table if exists T1;
create table T1 (Emp_Id int, departmet_id int, age int, First_name varchar(20), 
Last_name varchar(20), email varchar(30), birth_date date, hire_date date, post_date date);
insert into T1 (Emp_Id, departmet_id, age, First_name, Last_name, email, birth_date, hire_date, post_date)
values
 (1,3,33,"Todd","Finley","semper.egestas.urna@aol.couk","20-05-23","16-01-23","12-07-21"),
 (2,4,25,"Morgan","Mills","egestas.a@hotmail.ca","08-10-21","04-11-22","09-12-19"),
 (3,1,24,"Keelie","Allison","consequat.nec@icloud.org","30-06-21","25-09-19","02-09-22"),
 (4,3,30,"Yasir","Logan","nulla.facilisi@outlook.edu","20-09-21","18-04-20","14-10-22"),
 (5,2,28,"Jessamine","Guthrie","ligula@outlook.edu","30-04-21","20-12-22","09-05-21"),
 (6,5,45,"Farrah","Rutledge","nulla.integer@icloud.com","13-11-21","04-09-21","09-06-20"),
 (7,1,30,"Kenyon","Fuller","sed.auctor.odio@yahoo.ca","01-11-21","06-08-22","27-10-21"),
 (8,5,31,"Brennan","Zamora","quam.elementum@yahoo.net","28-04-23","02-02-22","23-07-22"),
 (9,2,29,"Rylee","Bentley","molestie.in@protonmail.org","18-11-19","17-09-20","02-12-22"),
 (10,4,26,"Clare","Farmer","nonummy@icloud.org","24-03-23","14-07-19","19-10-20");

select * from T1;  
-- Delete all employees under or equal to 29 years of age.
delete from T1 where age <= 29;

describe T1;
truncate table T1;

drop table if exists T2;
create table T2 (Emp_Id int, department_id int, Region_id int, Address varchar(50), PostalZip varchar(10), 
                 Country varchar(15), birth_date date, Start_date date, End_date date);
                 
insert into T2 (Emp_Id, department_id, Region_id, Address, PostalZip, Country, birth_date, 
                Start_date, End_date)
values
  (1,4,2765,"P.O. Box 386, 2229 Sodales St.","157421","New Zealand","12-01-20","26-05-19","16-02-23"),
  (2,3,1920,"Ap #897-650 Nulla St.","29L 7W0","Netherlands","21-10-20","22-06-19","24-04-21"),
  (3,3,2562,"P.O. Box 350, 9938 Placerat. Rd.","597504","Canada","22-04-21","22-04-23","27-07-19"),
  (4,3,1986,"851-2831 Congue Ave","6331","Ireland","11-02-21","18-08-19","12-10-22"),
  (5,4,2802,"778-5135 Blandit Rd.","25317","Norway","09-07-21","25-12-19","07-09-19"),
  (6,2,1432,"359-8339 Ac St.","27142","Germany","27-11-21","29-03-22","18-02-20"),
  (7,3,1731,"Ap #356-3286 In Rd.","661735","France","21-12-19","23-11-20","13-01-23"),
  (8,2,1409,"Ap #896-3533 Velit. Rd.","11821","Netherlands","02-10-21","16-10-19","17-06-21"),
  (9,5,2916,"263-9931 Nulla Ave","36763","Peru","26-07-20","11-01-21","20-07-19"),
  (10,3,1271,"325-9172 Ullamcorper St.","6317","Ukraine","27-04-22","12-09-19","29-07-20");
  
  select * from T2;

-- Remove all employees who are currently assigned to department 3.
delete from T2 where department_id = 3;



drop table if exists T3;
create table T3 (Emp_Id int, department_id int, Job_Id int, department_Name varchar(30),
Edu_Level varchar(30), PhoneNo varchar(15), hire_date date, Start_date date, End_date date);

insert into T3 (Emp_Id, department_id, Job_Id, department_Name, Edu_Level, PhoneNo, 
                 hire_date, Start_date, End_date)
VALUES
  (1,3,102,"Legal Department","Master","(249) 693-1122","14-08-19","24-04-21","05-09-21"),
  (2,2,102,"Customer Service","Master","(788) 412-7682","22-06-21","02-02-22","18-08-22"),
  (3,2,101,"Sales and Marketing","Associate","(226) 407-7248","15-05-22","05-10-21","11-03-20"),
  (4,2,102,"Finances","Master","(341) 572-3604","15-09-20","21-08-21","10-10-21"),
  (5,3,102,"Legal Department","Master","(522) 487-1553","17-03-21","24-01-20","01-08-21"),
  (6,2,102,"Customer Service","Associate","(604) 573-6268","19-03-20","06-10-21","11-09-19"),
  (7,1,103,"Payroll","Bachelor","(235) 199-6725","10-10-20","05-11-22","24-05-22"),
  (8,2,101,"Legal Department","Doctorate","(460) 255-5746","20-01-20","12-05-23","05-04-21"),
  (9,5,101,"Payroll","Bachelor","(458) 838-1028","24-03-22","11-10-21","04-06-19"),
  (10,1,102,"Tech Support","Doctorate","(260) 752-9249","23-07-21","21-09-22","11-01-20");
  
 -- Remove all employees who are currently assigned to department "Legal Department" or "Payroll".
 delete from T3 where department_Name = "Legal Department" or department_Name = "Payroll";
  
select * from T3;