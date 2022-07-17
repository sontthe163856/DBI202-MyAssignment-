CREATE DATABASE [Assignment Manager Grading System ];
use [Assignment Manager Grading System ];

CREATE TABLE Student(
	StuID char(150) NOT NULL PRIMARY KEY,
	FName varchar(150) NOT NULL,
	LName varchar(150) NOT NULL,
	Gender bit NOT NULL,
	DoB date NOT NULL,
	Major varchar(150) NOT NULL,
	Address nvarchar(150) NOT NULL,
	Campus nvarchar(150) NOT NULL,
	P_Number int NOT NULL,
);

CREATE TABLE Lecturers(
	LID char(150) NOT NULL PRIMARY KEY,
	LecName nvarchar(150) NOT NULL,
	DoB date NOT NULL,
	Gender bit NOT NULL,
	P_Number int NOT NULL,
	Email varchar(150) NOT NULL,
	Address nvarchar(150) NOT NULL,
);

CREATE TABLE [Group](
	GID varchar(150) NOT NULL PRIMARY KEY,
	SemID nvarchar(150) NOT NULL,
	SuID char(150) NOT NULL,
	LID char(150) NOT NULL,
	ClassID char(10) NOT NULL, 
	CONSTRAINT fk_Group FOREIGN KEY (LID)  REFERENCES Lecturers(LID),
	CONSTRAINT fk_Group2 FOREIGN KEY (SuID) REFERENCES [Subject](SuID),
	CONSTRAINT fk_group4 FOREIGN KEY (ClassID) REFERENCES CLASSES(ClassID),
);

CREATE TABLE [Subject](
	SuID char(150) NOT NULL PRIMARY KEY,
	SuName nvarchar(150) NOT NULL
);

CREATE TABLE Semester(
	SemID char(150) NOT NULL PRIMARY KEY,
	SemName varchar(150) NOT NULL,
	StarDate date NOT NULL,
	EndDate date NOT NULL,
);

CREATE TABLE Grade(
	StuID char(150) NOT NULL,
	SuID char(150) NOT NULL,
	AssID nvarchar(150) NOT NULL,
	LID char(150) NOT NULL,
	Mark float NOT NULL,
	CONSTRAINT Check_Mark CHECK (Mark >= 0 and Mark <= 10),
	constraint Gr_Primary_key Primary KEY (StuID,SuID),
	constraint Gr_Foreign_key FOREIGN KEY (StuID) references Student(StuID),
	constraint Gr_Foreign_key_1 FOREIGN KEY (SuID) references Subject(SuID),
);


CREATE TABLE Assessment
(
	[AssID] [nvarchar](150) NOT NULL PRIMARY KEY,
	[Asname] [nvarchar](150) NOT NULL,
	[weigh] [decimal](5, 2) NOT NULL,
	[SuID] [char](150) NOT NULL,
constraint Ass_Foreign_key FOREIGN KEY (SuID) references Subject(SuID)
);

CREATE TABLE Category(
	TypeID char(10) NOT NULL PRIMARY KEY,
	Decription varchar(150) NOT NULL,
);

CREATE TABLE CLASSES(
	ClassID char(10) NOT NULL PRIMARY KEY,
	ClassName char(10) NOT NULL,
);


CREATE TABLE Assessment_Student
( 
	[AssID] [nvarchar](150) NOT NULL,
	[SuID] [char](150) NOT NULL,
	[Date] [date] NOT NULL,
	[Score] [int] NOT NULL,
  constraint Ass_S_Primary_key Primary KEY (AssID,SuID),
  constraint Ass_S_Foreign_key FOREIGN KEY (AssID) references Assessment(AssID),
  constraint Ass_S_Foreign_key_1 FOREIGN KEY (SuID) references Subject(SuID),
);

CREATE TABLE [Join](
	StuID char(150) NOT NULL,
	GID varchar(150) NOT NULL,
	constraint Ass_Primary_key Primary KEY (GID,StuID),
	constraint Join_Foreign_key FOREIGN KEY (GID) references [Group](GID),
	constraint Join_Foreign_key_1 FOREIGN KEY (StuID) references Student(StuID),
);


CREATE TABLE Class_Semester(
	SemID char(150) NOT NULL,
	ClassID char(10) NOT NULL,
	--constraint Ass_Primary_key Primary KEY (SemID,ClassID),
	constraint Cl_S_Foreign_key FOREIGN KEY (SemID) references [Semester](SemID),
	constraint Cl_S_Foreign_key_1 FOREIGN KEY (ClassID) references Classes(ClassID),
);

