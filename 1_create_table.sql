USE cs134318;
/*I run them in different order first to create in database to not get error*/
CREATE TABLE Course(
   CourseNo VARCHAR(10) PRIMARY KEY,
   CourseName VARCHAR(20),
   Department VARCHAR(20),
   INDEX (CourseNo)
);

CREATE TABLE Section(
	CourseNo VARCHAR(10),
	SectionNo INT,
	Instructor VARCHAR(30),
	PRIMARY KEY (CourseNo, SectionNo),
	FOREIGN KEY (CourseNo) REFERENCES Course (CourseNo),
	INDEX (CourseNo),
	INDEX (SectionNo)
);


CREATE TABLE Enrolls(
	SSN INT(9),
	SectionNo INT,
	CourseNo VARCHAR(10),
	PRIMARY KEY (SSN, SectionNo, CourseNo),
	FOREIGN KEY (SSN) REFERENCES Student (SSN),
	FOREIGN KEY (SectionNo) REFERENCES Section (SectionNo),
	FOREIGN KEY (CourseNo) REFERENCES Section (CourseNo)
);

CREATE TABLE Student(
   SSN INT(9),
   FirasName  VARCHAR(30),
   LastName VARCHAR(30),
	 Street VARCHAR(30),
	 City VARCHAR(30),
	 State VARCHAR(10),
	 Zip INT(8),
   PRIMARY KEY (SSN),
	 INDEX (SSN)
);


CREATE TABLE Takes(
   SSN INT(9),
   CourseNo VARCHAR(10),
   SectionNo INT,
   ExamNo INT,
   Result VARCHAR(2),
   PRIMARY KEY (ExamNo, SectionNo, SSN, CourseNo),
   FOREIGN KEY (SSN) REFERENCES Student (SSN),
   FOREIGN KEY (CourseNo) REFERENCES Exam (CourseNo),
   FOREIGN KEY (SectionNo) REFERENCES Exam (SectionNo),
   FOREIGN KEY (ExamNo) REFERENCES Exam (ExamNo)
);

CREATE TABLE Exam(
	CourseNo VARCHAR(10),
	SectionNo INT,
	ExamNo INT,
	E_Date DATE,
	E_Time TIME,
	PRIMARY KEY (ExamNo, SectionNo, CourseNo),
	FOREIGN KEY (CourseNo) REFERENCES Section (CourseNo),
	FOREIGN KEY (SectionNo) REFERENCES Section (SectionNo),
	INDEX (CourseNo),
	INDEX (SectionNo),
	INDEX (ExamNo)
);


CREATE TABLE ConductedIn(
	RoomNo INT,
	Building VARCHAR(10),
	CourseNo VARCHAR(10),
	SectionNo INT,
	ExamNo INT,
	PRIMARY KEY (RoomNo, Building, CourseNo, SectionNo, ExamNo),
	FOREIGN KEY (RoomNo) REFERENCES ClassRoom (RoomNo),
	FOREIGN KEY (Building) REFERENCES ClassRoom (Building),
	FOREIGN KEY (CourseNo) REFERENCES Exam (CourseNo),
	FOREIGN KEY (SectionNo) REFERENCES Exam (SectionNo),
	FOREIGN KEY (ExamNo) REFERENCES Exam (ExamNo)
);

CREATE TABLE ClassRoom(
	RoomNo INT,
	Building VARCHAR(10),
	Capacity INT,
	PRIMARY KEY (RoomNo, Building),
	INDEX (RoomNo),
	INDEX (Building)
);
