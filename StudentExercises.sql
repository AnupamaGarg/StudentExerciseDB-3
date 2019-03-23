/*Create tables from each entity in the Student Exercises ERD.
Populate each table with data. You should have 2-3 cohorts, 5-10 students, 4-8 instructors, 
2-5 exercises and each student should be assigned 1-2 exercises.*/

DROP TABLE IF EXISTS StudentExcercise;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Cohort ;
DROP TABLE IF EXISTS Excercise;



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
    SlackHandle VARCHAR(50) NOT NULL,
	CohortId INT NOT NULL,
    CONSTRAINT FK_StudentCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
	
);

INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Priyanka','Garg',1,'@priyanka');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Madi','Peper',1,'@madi');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Mary','Remo',3,'@mary');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Hannah','Neil',3,'@hannah');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Grady','Robins',3,'@grady');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Colleen','Woolsay',3,'@colleen');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Anupama','Garg',3,'@anupama');
INSERT INTO Student(FirstName,LastName,CohortId,SlackHandle)VALUES('Prafulata','LastName',4,'@Prafulata');


CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    SlackHandle VARCHAR(50) NOT NULL,
	CohortId INT NOT NULL,
    CONSTRAINT FK_InstructorCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id),
	
);

INSERT INTO Instructor(FirstName,LastName,CohortId,SlackHandle)VALUES('Brenda','Long',1,'@brenda');
INSERT INTO Instructor(FirstName,LastName,CohortId,SlackHandle)VALUES('Andy','Collins',3,'@andy');
INSERT INTO Instructor(FirstName,LastName,CohortId,SlackHandle)VALUES('Steve','BrownLee',4,'@steve');
INSERT INTO Instructor(FirstName,LastName,CohortId,SlackHandle)VALUES('Jisie','David',5,'@jisie');




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


CREATE TABLE StudentExcercise(
StudentId INT NOT NULL,
ExcerciseId INT NOT NULL,
CONSTRAINT FK_StudentExcerciseStudent FOREIGN KEY(StudentId) REFERENCES Student(Id),
CONSTRAINT FK_StudentExcerciseExcercise FOREIGN KEY(ExcerciseId) REFERENCES Excercise(Id)

);

INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(1,2);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(2,2);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(2,4);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(3,1);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(4,3);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(5,6);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(6,2);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(7,5);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(7,6);
INSERT INTO StudentExcercise(StudentId,ExcerciseId) VALUES(8,3);













