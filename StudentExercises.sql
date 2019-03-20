/*Create tables from each entity in the Student Exercises ERD.
Populate each table with data. You should have 2-3 cohorts, 5-10 students, 4-8 instructors, 
2-5 exercises and each student should be assigned 1-2 exercises.*/

DROP TABLE IF EXISTS Cohort ;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Excercise;
DROP TABLE IF EXISTS StudentExcercise;


CREATE TABLE StudentExcercise(
StudentId INT NOT NULL,
ExcerciseId INT NOT NULL

);

CREATE TABLE Cohort (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    CohortName VARCHAR(50) NOT NULL

);

INSERT INTO Cohort(CohortName)VALUES('Cohort-27');
INSERT INTO Cohort(CohortName)VALUES('Cohort-28');
INSERT INTO Cohort(CohortName)VALUES('Cohort-29');
INSERT INTO Cohort(CohortName)VALUES('Cohort-30');
INSERT INTO Cohort(CohortName)VALUES('Cohort-31');

CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CohortId INT NOT NULL,
	SlackHandle VARCHAR(50) NOT NULL
    CONSTRAINT FK_StudentCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Priyanka','Garg','27','day-cohort-27');
INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Madi','Peper','27','day-cohort-27');
INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Mary','Remo','29','day-cohort-29');
INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Hannah','Neil','27','day-cohort-27');
INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Grady','Robins','27','day-cohort-27');
INSERT INTO Student(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Colleen','Woolsay','27','day-cohort-27');


CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CohortId INT NOT NULL,
	SlackHandle VARCHAR(50) NOT NULL
	CONSTRAINT FK_InstructorCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

INSERT INTO Instructor(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Brenda','Long','27','day-cohort-27');
INSERT INTO Instructor(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Andy','Collins','29','day-cohort-29');
INSERT INTO Instructor(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Steve','BrownLee','30','day-cohort-30');
INSERT INTO Instructor(FirstName,LastNAme,CohortId,SlackHandle)VALUES('Jisie','David','31','day-cohort-31');




CREATE TABLE Excercise (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    ExcerciseName VARCHAR(50) NOT NULL,
    ExcerciseLanguage VARCHAR(50) NOT NULL,
   );

INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('Overly-Excited','Java-Script');
INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('Chick-Monkey','Java-Script');
INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('Kennel','React');
INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('Linq','CSharp');
INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('Dictionary','CSharp');
INSERT INTO Excercise(ExcerciseName,ExcerciseLanguage)VALUES('List','CSharp');






