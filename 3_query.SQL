/*Query1
Retrieve	information	(SSN,	first	name	and	last	name)	about	students	who	take	the
course	‘Database	Management	Systems’.
*/

SELECT Student.SSN,Student.FirasName,Student.LastName
FROM  Student,Enrolls,Course
WHERE Student.SSN = Enrolls.SSN AND
      Enrolls.CourseNo = Course.CourseNo AND
      CourseName = 'Database Management Systems';

/*Query 2
Retrieve	the	courses	(List	course	name	and	number	of	sections)	that	have	more	than	2
sections.
*/

SELECT Course.CourseName AS 'Course',COUNT(DISTINCT Section.SectionNo) AS '# of Sections'
FROM Course,Section
WHERE Course.CourseNo = Section.CourseNo
GROUP BY Course.CourseNo
HAVING COUNT(DISTINCT Section.SectionNo) > 2;

/*Query3
List	each	course	number,	course	name	and	section	number	which	have 3	or	more
students	in	the	section.
*/

SELECT Course.CourseNo, Course.CourseName, Enrolls.SectionNo
FROM Course, Enrolls
WHERE Enrolls.CourseNo = Course.CourseNo
HAVING COUNT(DISTINCT Enrolls.SSN) >= 3;

/* Query 4
Retrieve	the	information	(SSN,	first	name,	and	last	name)	of	students	who	got	Grade	‘A’
in	at	least	3	exams.
*/

SELECT Student.SSN,Student.FirasName, Student.LastName
FROM   Student, Takes
WHERE  Takes.SSN = Student.SSN AND Takes.Result = 'A'
HAVING COUNT(DISTINCT Takes.Result = 'A' >= 3);

/*Query 5
Obtain	information	(exam	number,	exam	date,	course	number	and	section	number)
about	exams	taking	place	in	building	‘RVR’.	Along	with	that	get	the	room’s	capacity	and
room	number.
*/
SELECT Exam.ExamNo, Exam.E_Date, Exam.CourseNo, Exam.SectionNo, ClassRoom.Capacity, ClassRoom.RoomNo
FROM 	(SELECT *
FROM ConductedIn
WHERE ConductedIn.Building = 'RVR'
) AS RVR
INNER JOIN Exam ON RVR.CourseNo = Exam.CourseNo AND RVR.SectionNo = Exam.SectionNo
AND RVR.ExamNo = Exam.ExamNo
INNER JOIN ClassRoom ON RVR.RoomNo = ClassRoom.RoomNo AND RVR.Building = ClassRoom.Building;

/*	Query6
Retrieve	information	(SSN,	first	name	and	last	name)	about	students	who	are	enrolled	in
both	the	course	‘CSC133’	and	‘CSC137’.	‘CSC133’	and	‘CSC137’	are	both	course
numbers.
*/
SELECT s.SSN, s.FirstName, s.LastName
FROM Student as s,Enrolls as e
WHERE Student.SSN IN	(SELECT st.SSN
FROM Student as st,Enrolls as en
WHERE st.SSN = en.SSN AND en.CourseNo = 'CSC133')
AND s.SSN = e.SSN AND e.CourseNo = 'CSC137';

/*	Query7
Get	the	information	(SSN,	first	name	and	last	name)	about	students	who	take	the	course
‘Data	structure	and	algorithms’.	Also	get	the	section	number	in	which	they	have
enrolled	in	the	course,	as	well	as	the	instructor	of	the	section.
*/
SELECT st.SSN, st.FirstName, st.LastName, se.SectionNo, se.Instructor
FROM Student as st,Enrolls as en,Section as se, Course as co
WHERE st.SSN = en.SSN AND en.CourseNo = co.CourseNo
AND en.CourseNo = se.CourseNo AND en.SectionNo = se.SectionNo
AND co.CourseName = 'Data Structure and Algorithms';
