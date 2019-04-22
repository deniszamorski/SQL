-- create and select the database
DROP DATABASE IF EXISTS SchoolDataModel;
CREATE DATABASE SchoolDataModel;
USE SchoolDatamodel;
-- Create Student Table
Create Table Student (
ID				INT            	PRIMARY KEY  AUTO_INCREMENT,
FirstName 		nvarchar(25)	NOT NULL,
LastName  		nvarchar(25)	NOT NULL,
StreetAddress	nvarchar(25)	NOT NULL,
City			nvarchar(25)	NOT	NULL,
State			nvarchar(25)	NOT	NULL,
Zip				nvarchar(5)		NOT	NULL,
Birthdate		date			NOT NULL,
PhoneNumber		nvarchar(10)	NOT	NULL,
Email			nvarchar(25)	NOT	NULL,
SSN				nvarchar(11)	NOT	NULL
);

-- Create Course Table
Create Table Course (
ID				INT            	PRIMARY KEY  AUTO_INCREMENT,
Number			INT				NOT NULL 		UNIQUE,	
Subject			nvarchar(25)	NOT NULL,
Name			nvarchar(25)	NOT NULL
);

-- Create Instructor Table
Create Table Instructor (
ID				INT            	PRIMARY KEY  AUTO_INCREMENT,
CourseID		INT				NOT NULL,
FirstName		nvarchar(25)	NOT NULL,
LastName		nvarchar(25)	NOT NULL,
foreign key (CourseID) references Course (ID)
);

-- Create Enrollment Table
Create Table Enrollment (
ID				INT            	PRIMARY KEY  AUTO_INCREMENT,
StudentID		INT				NOT NULL,
CourseID		INT				NOT NULL,
Grade			decimal(5,2),
foreign key (CourseID) references Course (ID),
foreign key (StudentID) references Student (ID)
);

-- Insert Student Values
INSERT Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
		VALUES ('Denis', 'Zamorski', '2687 Towne BLVD', 'Middletown', 'OH', '45044', '1991-01-31', '2245480047', 'deniszamorski1@gmail.com', '999-99-9999');
INSERT Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
		VALUES ('Alex', 'Jones', '789 Shellbark ST', 'Blacklick', 'OH', '43004', '1968-05-30', '6133967198', 'look_alex@yahoo.com', '888-88-8888');
INSERT Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
		VALUES ('Elon', 'Musk', '1 Tesla DR', 'Palo Alto', 'CA', '91210', '1971-06-28', '8006138840', 'elon_musk@tesla.com', '777-77-7777');
INSERT Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
		VALUES ('Ryan', 'Reynolds', '3 DP WAY', 'Hollywood', 'CA', '91219', '1976-10-23', '8176138841', 'ryanr@deadpool.com', '666-66-6666');
INSERT Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
		VALUES ('Joe', 'Rogan', '999 JRE HWY', 'Los Angeles', 'CA', '91921', '1967-08-11', '8077137741', 'joerogan@ufc.com', '555-55-5555');
-- Insert Course Values
Insert Course (Number, Subject, Name) Values ('123', 'Programming', 'Java');
Insert Course (Number, Subject, Name) Values ('456', 'Programming', 'SQL');
Insert Course (Number, Subject, Name) Values ('789', 'Project Management', 'Scrum Master');

-- Insert Instructor Values
Insert Instructor (CourseID,FirstName, LastName) Values ('1','Sean', 'Blessing');
Insert Instructor (CourseID,FirstName, LastName) Values ('2','Greg', 'Doud');

-- Insert Enrollment Values
Insert Enrollment (StudentID, CourseID, Grade) 	Values ('3', '2', '99.3');
Insert Enrollment (StudentID, CourseID, Grade)	Values ('5', '1', '89.0');

-- create a user and grant privileges to that user
CREATE USER school_user@localhost IDENTIFIED BY 'zamzam';
GRANT SELECT, INSERT, DELETE, UPDATE ON school. * TO mma_user@localhost;
