Create Database CVApplication_OPSC

Create table users1(
UserId varchar (50) Primary Key NOT NULL ,
Name varchar (20),
Surname varchar (20),
Email varchar (20),

);

Create table Education(
EducationId varchar (50) Primary Key NOT NULL,
Institute varchar (30),
Major varchar (100),
YearOfCompletion int ,
UserId varchar (50) FOREIGN KEY REFERENCES users1(UserId)
);

Create table Experience(
ExperienceId varchar (50) Primary key NOT NULL,
Employer char (50),
StartDate datetime,
EndDate datetime,
Role varchar (50),
UserId varchar (50) FOREIGN KEY REFERENCES users1(UserId)
);

Create table Skills(
SkillsId varchar (50) Primary key NOT NULL,
Type varchar (50),
Description varchar (300),
UserId varchar (50) FOREIGN KEY REFERENCES users1 (UserId)
);

Create table Reference(
ReferencesId varchar (50) Primary key NOT NULL,
EmployerName varchar (20),
EmployerRole varchar (20),
Company varchar (100),
PhoneNumber int,
EmployerEmail varchar (20)
);

DROP TABLE USERS1;
DROP TABLE EDUCATION;
DROP TABLE EXPERIENCE;
DROP TABLE SKILLS;
DROP TABLE REFERENCE;

--Notes:

--User shouldnt be able to enter null value
--Name each member in the entities appropriately so there’s no ambiguity 
--Add values to some varchar datatypes
--Correct foreign key lines in script




