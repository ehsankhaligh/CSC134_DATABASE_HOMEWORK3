USE cs134318;

INSERT INTO Course (CourseNo, CourseName, Department)
VALUES
	('CSC130', 'Data Structure and Algorithms', 'Computer Science'),
	('CSC133', 'Object-Oriented Computer Graphics', 'Computer Science'),
	('CSC134', 'Database Management Systems', 'Computer Science'),
	('CSC137', 'Computer Organization', 'Computer Science'),
  ('CSC140', 'Advance Data Structure and Algorithms', 'Computer Science'),
  ('CSC180', 'Intelligence System', 'Computer Science')
  ('Stat50', 'Statistics and probability', 'Computer Science');

INSERT INTO Section (CourseNo, SectionNo, Instructor)
  VALUES
      ('stat50', 1, 'J. Ingram'),
      ('CSC180', 1, 'S. Gordon'),
      ('CSC137', 5, 'B. Faroughi'),
      ('CSC133', 3, 'H. Nguyen'),
      ('CSC137', 4, 'W. Chang');
      ('CSC130', 5, 'Y. Chen'),
    	('CSC133', 12, 'M. Biroge'),
    	('CSC133', 8, 'P. Dotti'),
    	('CSC133', 6, 'P. Dotti'),
    	('CSC134', 3, 'X. Sun');

INSERT INTO Student (SSN, FirstName, LastName, Street, City, State, Zip)
  VALUES
    (411996126, 'Asghar', 'Farhadi', '76 Kingston Street', 'Sacramento', 'CA', 95677),
    (262556453, 'Akbar', 'mojaneb', '2 Hartford Court', 'Sacramento', 'CA', 95677),
    (457634643, 'Tim', 'Navas', '641 Market Ave.', 'Sacramento', 'CA', 95677),
    (368989472, 'Iker', 'Casillas', '7256 South Blue Spring St.', 'Sacramento', 'CA', 95677),
    (789353489, 'Reza', 'Ronaldo', '169 Selby Street', 'Sacramento', 'CA', 95677),
    (123890365, 'Hossein', 'Ramos', '41 South Road', 'Sacramento', 'CA', 95677);

INSERT INTO ClassRoom (RoomNo, Building, Capacity)
  Values
   (5029, 'RVR', 30),
   (1002, 'RVR', 25),
   (201, 'BRH', 20),
   (1002, 'LNH', 15),
   (3012, 'RVR', 40);

INSERT INTO Enrolls (SSN, SectionNo, CourseNo)
  VALUES
    (411996126, 12, 'CSC133'), (411996126, 2, 'CSC137'),
    (262556453, 12, 'CSC133'), (262556453, 2, 'CSC137'), (262556453, 3, 'CSC134'),
    (457634643, 12, 'CSC133'), (457634643, 1, 'stat50'), (457634643, 1, 'CSC134'),
    (368989472, 5, 'CSC130'), (368989472, 8, 'CSC133'), (368989472, 1, 'stat50'),
    (789353489, 1, 'stat50'), (789353489, 3, 'CSC133'),
    (123890365, 8, 'CSC133'), (123890365, 2, 'CSC137');

INSERT INTO Exam (CourseNo, SectionNo, ExamNo, E_Date, E_Time)
  VALUES
    	('CSC130', 5, 13, '2017-04-09', '17:30:00'),
    	('CSC130', 5, 2, '2017-04-09', '12:00:00'),
    	('CSC133', 8, 1, '2017-04-09', '17:30:00'),
      ('CSC133', 3, 1, '2017-04-09', '18:30:00'),
    	('CSC133', 8, 2, '2017-03-09', '13:30:00'),
    	('CSC133', 12, 4, '2017-06-22', '12:00:00'),
    	('CSC134', 3, 1, '2017-07-13', '14:15:00'),
    	('CSC134', 3, 2, '2017-07-13', '16:15:00'),
    	('CSC134', 3, 3, '2017-08-13', '14:15:00'),
    	('CSC137', 2, 1, '2018-03-17', '08:00:00'),
    	('CSC137', 2, 2, '2018-03-18', '08:00:00'),
      ('CSC137', 5, 3, '2018-03-18', '11:00:00'),
    	('stat50', 1, 17, '2018-01-03', '10:00:00'),
      ('stat50', 1, 15, '2018-01-03', '11:00:00');

INSERT INTO Takes (SSN, CourseNo, SectionNo, ExamNo, Result)
  VALUES
    (123890365, 'CSC130', 5, 13, 'A'),
    (123890365, 'CSC133', 8, 2, 'A'),
    (123890365, 'CSC137', 2, 1, 'A'),
    (262556453, 'CSC137', 2, 1, 'A'),
    (262556453, 'CSC134', 3, 2, 'B'),
    (262556453, 'CSC137', 2, 2, 'A'),
    (368989472, 'CSC130', 5, 13, 'A'),
    (368989472, 'CSC133', 8, 2, 'C'),
    (368989472, 'stat50', 1, 17, 'F'),
    (411996126, 'CSC133', 8, 2, 'D'),
    (411996126, 'CSC137', 2, 1, 'B'),
    (457634643, 'CSC134', 3, 3, 'C'),
    (457634643, 'stat50', 1, 17, 'C'),
    (457634643, 'CSC133', 12, 4, 'C'),
    (789353489, 'stat50', 1, 15, 'B'),
    (789353489, 'CSC133', 3, 1, 'A');

INSERT INTO ConductedIn (RoomNo, Building, CourseNo, SectionNo, ExamNo)
  VALUES
  (201, 'BRH', 'CSC137', 2, 1),
  (1002, 'LNH', 'CSC137', 2, 2),
  (201, 'BRH', 'CSC134', 3, 1),
  (1002, 'LNH', 'CSC133', 8, 1),
  (5029, 'RVR', 'CSC133', 8, 1),
  (3012, 'RVR', 'CSC133', 12, 4),
  (1002, 'RVR', 'stat50', 1, 17),
  (1002, 'RVR', 'stat50', 1, 15);
