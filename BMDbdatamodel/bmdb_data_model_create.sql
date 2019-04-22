-- create and select the database
DROP DATABASE IF EXISTS BMDB;
CREATE DATABASE BMDB;
USE BMDB;

-- Create Actor Table
Create Table Actor (
ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
FirstName	varchar(25)		NOT NULL,
LastName	varchar(25)		NOT NULL,
Gender 		varchar(6)		NOT NULL,
BirthDate 	date			NOT NULL
);

-- Create Movie Table
Create Table Movie (
ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
Title 		varchar(100)	NOT NULL,
Rating		varchar(5)		NOT NULL,
Year		int				NOT NULL,
Director	varchar(50)		NOT NULL
);

-- Create Genre Table
Create Table Genre (
ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
Name 		varchar(50)		NOT NULL
);

-- Create Credits Table
Create Table Credit (
ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
MovieID		INT				NOT NULL,
ActorID		INT				NOT NULL,
Role		varchar(25)		NOT NULL,
Foreign Key (MovieID) References Movie (ID),
Foreign Key (ActorID) References Actor (ID),
Constraint act_mov unique (ActorID, MovieID)
);

-- Create MovieGenre Table
Create Table MovieGenre (
ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
MovieID		INT				NOT NULL,
genreID		INT				NOT NULL,
Foreign Key (MovieID) References Movie (ID),
Foreign Key (genreID) References Genre (ID)
);

-- Insert value to Actor Table

Insert Actor (FirstName, LastName, Gender, Birthdate)
	Values ('Chris', 'Hemsworth', 'M', '1983-8-11');
Insert Actor (FirstName, LastName, Gender, Birthdate)
	Values ('Chris', 'Evans', 'M', '1981-06-13');
Insert Actor (FirstName, LastName, Gender, Birthdate)
	Values ('Robert', 'Downey Jr', 'M', '1965-04-20');

-- Insert Value to Movie Table
Insert Movie (Title, Rating, Year, Director)
	Values (

-- Insert Value to Genre Table
Insert Genre (NAME) 
	Values
('Adventure'),
('Comedy'),
('Crime'),
('Drama'),
('Fantasy'),
('Historical'),
('Historical fiction'),
('Horror'),
('Magical realism'),
('Mystery'),
('Paranoid Fiction'),
('Philosophical'),
('Political'),
('Romance'),
('Saga'),
('Satire'),
('Science fiction'),
('Social'),
('Speculative'),
('Thriller'),
('Urban'),
('Western')
;


-- Insert Value to Credits Table

-- Insert Value to MovieGenre Table


-- create a user and grant privileges to that user
CREATE USER bmdb_user@localhost IDENTIFIED BY 'zamzam';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;