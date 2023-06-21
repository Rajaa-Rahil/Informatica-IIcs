-- Table 1

drop table if exists infoInstructor;

create table infoInstructor(
ID  number(10) not null,
DepartmentName  varchar2(255),
headedBY  varchar2(255),
FirstName  varchar2(255) not null,
LastName  varchar2(255) not null,
Phone  varchar2(255) not null,
constraint pk_Instructor primary key(ID),
constraint fk_Instructor_dept foreign key (DepartmentName) references Department(Name)
);

-- Insert Into Table 1
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone) 
values (1, 'Computer Science', 'Prof. Hetherington', 'Lee', 'Turner', '555-2222');
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone) 
values (2, 'Biology', 'Prof. Smith', 'Max', 'Anderson', '555-3333');
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone) 
values (3, 'Chemistry', 'Prof. Johnson', 'Dave', 'Miller', '555-4444');
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone) 
values (4, 'Physics', 'Prof.Wills', 'John', 'Smith', '555-5555');
insert into infoInstructor (ID, DepartmentName, headedBy, FirstName, LastName, Phone) 
values (5, 'Mathematics', 'Prof. Rodriguez', 'Kai', 'Robertson', '555-6666');

select * from infoInstructor;

describe infoInstructor;

-- Table 2
drop table if exists Department;

create table Department(
Name varchar2(255) not null,
Location  varchar2(255) not null,
constraint pk_Department primary key(Name)
);

-- Insert Into Table 2
insert into Department (Name, Location) values ('Computer Science', 'DT 417');
insert into Department (Name, Location) values ('Biology', 'DT 412');
insert into Department (Name, Location) values ('Chemistry', 'DT 415');
insert into Department (Name, Location) values ('Physics', 'DT 416');
insert into Department (Name, Location) values ('Mathematics', 'DT 414');

select * from Department;

-- Table 3

drop table if exists Course;
create table Course(
ID    number(10) not null,
DepartmentName  varchar2(255),
InstructorID   number(10),
Duration    number(10) not null,
Name  varchar2(255) not null,
constraint pk_Course primary key(ID),
constraint fk_Course_dept foreign key (DepartmentName) references Department(Name),
constraint fk_Course_Instr foreign key (InstructorID) references infoInstructor(ID)
);

-- Insert Into Table 3
insert into Course (ID, DepartmentName, InstructorID, Duration, Name) values (1, 'Computer Science', 1, 3, 'Computer Networks');
insert into Course (ID, DepartmentName, InstructorID, Duration, Name) values (2, 'Biology', 2, 4, 'Cell Biology');
insert into Course (ID, DepartmentName, InstructorID, Duration, Name) values (3, 'Chemistry', 3, 5, 'Organic Chemistry');
insert into Course (ID, DepartmentName, InstructorID, Duration, Name) values (4, 'Physics', 4, 3, 'Thermodynamics');
insert into Course (ID, DepartmentName, InstructorID, Duration, Name) values (5, 'Mathematics', 5, 4, 'Calculus');

select * from Course;
describe Course;

-- Table 4
create table Course_Student(
CourseID  number(10),
StudentID number(10),
constraint fk_CStu_Course foreign key (CourseID) references Course(ID),
constraint fk_CStu_Student foreign key (StudentID) references Student(ID)
);

-- Insert Into Table 4
insert into Course_Student (CourseID, StudentID) values (1, 10);
insert into Course_Student (CourseID, StudentID) values (2, 11);
insert into Course_Student (CourseID, StudentID) values (3, 12);
insert into Course_Student (CourseID, StudentID) values (4, 13);
insert into Course_Student (CourseID, StudentID) values (5, 14);

select * from Course_Student;
describe Course_Student;


-- Table 5
drop table if exists Student;
create table Student(
ID   number(10) not null,
FirstName  varchar2(255) not null,
LastName  varchar2(255) not null,
Phone  varchar2(255) not null,
constraint pk_Student primary key(ID)
);

-- Insert Into Table 5
insert into Student (ID, FirstName, LastName, Phone) values (10, 'Amy', 'White', '555-1111');
insert into Student (ID, FirstName, LastName, Phone) values (11, 'Jack', 'Grey', '555-7777');
insert into Student (ID, FirstName, LastName, Phone) values (12, 'Nancy', 'Black', '555-8888');
insert into Student (ID, FirstName, LastName, Phone) values (13, 'Leo', 'Blue', '555-9999');
insert into Student (ID, FirstName, LastName, Phone) values (14, 'Steven', 'Brown', '555-0000');

select * from Student;
















































-- Filling Table 1

INSERT INTO infoInstructor VALUES (1, 'Computer Science', 'Jeffery Wilson', 'John', 'Doe', '123-456-7890');
INSERT INTO infoInstructor VALUES (2, 'Mathematics', 'William Jones', 'Mary', 'Smith', '234-567-8901');
INSERT INTO infoInstructor VALUES (3, 'Engineering', 'Claude Bensen', 'Robert', 'Johnson', '345-678-9012');
INSERT INTO infoInstructor VALUES (4, 'Physics', 'Elizabeth Jones', 'Anne', 'Miller', '456-789-0123');
INSERT INTO infoInstructor VALUES (5, 'Microbiology', 'Brian Morgan', 'James', 'Davis', '567-890-1234');

-- Filling Table 2

INSERT INTO Department VALUES ('Computer Science', 'New York');
INSERT INTO Department VALUES ('Mathematics', 'Los Angeles');
INSERT INTO Department VALUES ('Engineering', 'Chicago');
INSERT INTO Department VALUES ('Physics', 'Boston');



-- Filling Table 3

INSERT INTO Course VALUES (1, 'Computer Science', 1, 4, 'Programming');
INSERT INTO Course VALUES (2, 'Mathematics', 2, 2, 'Calculus');
INSERT INTO Course VALUES (3, 'Engineering', 3, 6, 'Robotics');
INSERT INTO Course VALUES (4, 'Physics', 4, 8, 'Quantum Mechanics');
INSERT INTO Course VALUES (5, 'Microbiology', 5, 3, 'Bioengineering');

-- Filling Table 4

INSERT INTO Course_Student VALUES (1, 2);
INSERT INTO Course_Student VALUES (2, 4);
INSERT INTO Course_Student VALUES (3, 6);
INSERT INTO Course_Student VALUES (4, 8);
INSERT INTO Course_Student VALUES (5, 10);

-- Filling Table 5

INSERT INTO Student VALUES (1, 'John', 'Doe', '123-456-7890');
INSERT INTO Student VALUES (2, 'Mary', 'Smith', '234-567-8901');
INSERT INTO Student VALUES (3, 'Robert', 'Johnson', '345-678-9012');
INSERT INTO Student VALUES (4, 'Anne', 'Miller', '456-789-0123');
INSERT INTO Student VALUES (5, 'James', 'Davis', '567-890-1234');