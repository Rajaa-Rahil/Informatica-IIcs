-- Table 1
use info_iicsdb;
drop table if exists infoInstructor;
create table infoInstructor(
ID integer(10) not null,
DepartmentName  varchar(255),
headedBY  varchar(255),
FirstName  varchar(255) not null,
LastName  varchar(255) not null,
Phone  varchar(255) not null,
primary key(ID),
foreign key (DepartmentName) references Department(Name)
);

-- Insert Into Table 1
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone)
values
(1, 'Computer Science', 'Prof. Hetherington', 'Lee', 'Turner', '555-2222'),
(2, 'Biology', 'Prof. Smith', 'Max', 'Anderson', '555-3333'),
(3, 'Chemistry', 'Prof. Johnson', 'Dave', 'Miller', '555-4444'),
(4, 'Physics', 'Prof.Wills', 'John', 'Smith', '555-5555'),
(5, 'Mathematics', 'Prof. Rodriguez', 'Kai', 'Robertson', '555-6666');

select * from infoInstructor;

-- ------------------
describe infoInstructor;
alter table infoInstructor
add constraint foreign key (DepartmentName) references Department(Name);
-- --------------------

-- Table 2
drop table if exists Department;

create table Department(
Name varchar(255) not null,
Location  varchar(255) not null,
primary key(Name)
);

-- Insert Into Table 2
insert into Department (Name, Location)
values
('Computer Science', 'DT 417'),
('Biology', 'DT 412'),
('Chemistry', 'DT 415'),
('Physics', 'DT 416'),
('Mathematics', 'DT 414');

select * from Department;

-- Table 3
drop table if exists Course;
create table Course(
ID integer(10) not null,
DepartmentName  varchar(255),
InstructorID integer(10),
Duration    integer(10) not null,
Name  varchar(255) not null,
primary key(ID),
foreign key (DepartmentName) references Department(Name),
foreign key (InstructorID) references infoInstructor(ID)
);

-- Insert Into Table 3
insert into Course (ID, DepartmentName, InstructorID, Duration, Name)
values
(1, 'Computer Science', 1, 3, 'Computer Networks'),
(2, 'Biology', 2, 4, 'Cell Biology'),
(3, 'Chemistry', 3, 5, 'Organic Chemistry'),
(4, 'Physics', 4, 3, 'Thermodynamics'),
(5, 'Mathematics', 5, 4, 'Calculus');

select * from Course;
describe Course;

-- Table 4
create table Course_Student(
CourseID integer(10),
StudentID integer(10),
foreign key (CourseID) references Course(ID),
foreign key (StudentID) references Student(ID)
);

-- Insert Into Table 4
insert into Course_Student (CourseID, StudentID)
values
(1, 10),
(2, 11),
(3, 12),
(4, 13),
(5, 14);

select * from Course_Student;
describe Course_Student;


-- Table 5
drop table if exists Student;
create table Student(
ID integer(10) not null,
FirstName  varchar(255) not null,
LastName  varchar(255) not null,
Phone  varchar(255) not null,
primary key(ID)
);

-- Insert Into Table 5
insert into Student (ID, FirstName, LastName, Phone)
values
(10, 'Amy', 'White', '555-1111'),
(11, 'Jack', 'Grey', '555-7777'),
(12, 'Nancy', 'Black', '555-8888'),
(13, 'Leo', 'Blue', '555-9999'),
(14, 'Steven', 'Brown', '555-0000');

select * from Student;