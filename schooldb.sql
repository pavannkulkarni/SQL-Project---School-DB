-- Create the database
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Create the 'Students' table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1)
) ENGINE=InnoDB;

-- Insert data into 'Students'
INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender)
VALUES 
('John', 'Doe', '2005-06-15', 'M'),
('Jane', 'Smith', '2004-09-23', 'F'),
('Michael', 'Johnson', '2006-02-10', 'M'),
('Emily', 'Davis', '2005-12-01', 'F'),
('Chris', 'Brown', '2007-05-19', 'M'),
('Sophia', 'Williams', NULL, 'F'),
('Ethan', 'Miller', '2006-08-05', NULL),
('Olivia', 'Taylor', '2004-07-17', 'F'),
('Liam', 'Anderson', '2005-03-02', 'M'),
('Isabella', 'Thomas', '2005-11-20', 'F'),
('Noah', 'Moore', NULL, 'M'),
('Mason', 'Martin', '2006-05-01', 'M'),
('Lucas', 'Lee', '2007-02-28', 'M'),
('Charlotte', 'Perez', '2005-09-05', 'F'),
('Ava', 'Thompson', '2007-04-15', NULL),
('James', 'White', '2004-12-12', 'M'),
('Alexander', 'Harris', NULL, 'M'),
('Mia', 'Clark', '2005-06-30', 'F'),
('William', 'Hall', '2004-10-10', 'M'),
('Amelia', 'Young', '2006-01-22', 'F'),
('Henry', 'King', '2005-07-14', 'M'),
('Evelyn', 'Wright', '2006-03-19', 'F'),
('Elijah', 'Lopez', '2007-01-10', 'M'),
('Logan', 'Scott', NULL, 'M'),
('Zoe', 'Green', '2004-05-05', 'F');

-- Create the 'Courses' table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    Credits INT
) ENGINE=InnoDB;

-- Insert data into 'Courses'
INSERT INTO Courses (CourseName, Credits)
VALUES 
('Mathematics', 4),
('Science', 3),
('History', 2),
('Art', 1),
('Physical Education', 2),
('Computer Science', 4),
('Biology', 3),
('Chemistry', 4),
('Physics', 3),
('Economics', 2),
('Literature', 3),
('Geography', 2),
('Music', 1),
('Statistics', 4),
('Philosophy', 2),
('Political Science', 3),
('Psychology', 3),
('Sociology', 2),
('French', 2),
('Spanish', 2),
('German', 2),
('Drama', 1),
('Photography', 1),
('Robotics', 3),
('Creative Writing', 2);

-- Create the 'Enrollments' table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
) ENGINE=InnoDB;

-- Insert data into 'Enrollments'
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, Grade)
VALUES 
(1, 1, '2022-09-01', 'A'),
(2, 2, '2022-09-01', 'B'),
(3, 3, '2022-09-01', 'A'),
(4, 4, '2023-01-15', 'B'),
(5, 5, '2022-03-01', 'A'),
(6, 6, '2023-06-01', NULL),
(7, 7, '2023-08-10', 'C'),
(8, 8, NULL, 'A'),
(9, 9, '2023-04-18', 'B'),
(10, 10, '2023-05-25', 'C'),
(11, 11, '2022-10-11', NULL),
(12, 12, '2023-02-20', 'B'),
(13, 13, '2023-03-09', 'A'),
(14, 14, NULL, 'C'),
(15, 15, '2023-07-14', 'B'),
(16, 16, '2022-08-22', 'A'),
(17, 17, '2023-09-30', 'C'),
(18, 18, '2023-11-01', NULL),
(19, 19, '2023-01-05', 'B'),
(20, 20, '2023-12-03', 'A'),
(21, 21, '2022-06-19', 'B'),
(22, 22, '2022-11-24', 'C'),
(23, 23, NULL, 'A'),
(24, 24, '2023-02-10', 'B'),
(25, 25, '2023-05-01', NULL);

-- Create the 'Teachers' table
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    SubjectSpecialization VARCHAR(50)
) ENGINE=InnoDB;

-- Insert data into 'Teachers'
INSERT INTO Teachers (FirstName, LastName, HireDate, SubjectSpecialization)
VALUES 
('Laura', 'White', '2010-08-15', 'Mathematics'),
('James', 'Brown', '2015-09-23', 'Science'),
('Linda', 'Taylor', '2013-11-11', 'History'),
('Robert', 'Anderson', NULL, 'Art'),
('Susan', 'Clark', '2020-04-20', 'Physical Education'),
('David', 'Moore', '2011-09-12', 'Computer Science'),
('Emma', 'Miller', '2012-02-27', 'Biology'),
('Sophia', 'Martinez', '2018-10-18', 'Chemistry'),
('Olivia', 'Hernandez', '2019-05-08', NULL),
('Henry', 'Lee', '2014-01-16', 'Physics'),
('Mason', 'Perez', '2017-07-30', 'Economics'),
('Ava', 'Davis', '2021-03-11', 'Literature'),
('Liam', 'Lopez', NULL, 'Music'),
('Isabella', 'Hall', '2016-04-25', 'Statistics'),
('Lucas', 'Garcia', '2013-07-20', 'Philosophy'),
('Amelia', 'Rodriguez', '2022-09-03', 'Political Science'),
('Ethan', 'Wilson', '2010-06-05', 'Psychology'),
('Zoe', 'Lewis', '2015-12-12', 'Sociology'),
('Michael', 'Harris', '2018-03-24', 'French'),
('Emily', 'Young', '2019-11-13', NULL),
('William', 'King', '2020-02-02', 'Spanish'),
('Mia', 'Scott', '2016-09-21', 'German'),
('Alexander', 'Green', '2021-05-14', 'Drama'),
('Charlotte', 'Adams', '2014-08-06', 'Photography'),
('Oliver', 'Baker', '2017-10-01', 'Robotics');

-- Create the 'Classes' table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(50),
    TeacherID INT,
    CourseID INT,
    Schedule VARCHAR(100),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
) ENGINE=InnoDB;

-- Insert data into 'Classes'
INSERT INTO Classes (ClassName, TeacherID, CourseID, Schedule)
VALUES 
('Math 101 Morning', 1, 1, 'Mon-Wed-Fri 9:00-10:30'),
('Science Basics', 2, 2, 'Tue-Thu 10:00-11:30'),
('History Overview', 3, 3, 'Mon-Wed 12:00-1:30'),
('Art Studio', 4, 4, 'Fri 2:00-4:00'),
('PE Advanced', 5, 5, 'Mon-Wed-Fri 1:30-3:00'),
('CS Essentials', 6, 6, 'Mon 10:00-12:00'),
('Biology Lab', 7, 7, 'Wed-Fri 1:00-2:30'),
('Chemistry 101', 8, 8, 'Tue 11:00-1:00'),
('Physics Intro', 10, 9, 'Thu 2:00-3:30'),
('Economics Basic', 11, 10, 'Mon 3:00-5:00'),
('Literature Review', 12, 11, 'Fri 10:30-12:00'),
('Geography Class', 2, 12, 'Tue-Thu 1:30-3:00'),
('Music Practice', 13, 13, 'Mon-Fri 3:00-4:00'),
('Statistics Seminar', 14, 14, 'Wed 10:00-12:30'),
('Philosophy Intro', 15, 15, 'Thu 9:00-10:30'),
('Political Theory', 16, 16, 'Mon 2:00-4:00'),
('Psych Basics', 17, 17, 'Tue 11:30-1:30'),
('Sociology Fundamentals', 18, 18, 'Mon-Wed 9:30-11:00'),
('French 101', 19, 19, 'Tue-Thu 12:30-2:00'),
('Spanish 101', 20, 20, 'Wed-Fri 1:00-2:30'),
('German 101', 21, 21, 'Mon-Wed 11:00-12:30'),
('Drama Workshop', 22, 22, 'Fri 3:00-5:00'),
('Photography Skills', 23, 23, 'Tue 10:00-12:00'),
('Robotics Intro', 24, 24, 'Mon 1:00-3:00'),
('Creative Writing Class', 25, 25, 'Thu 2:00-4:00');

-- Create the 'Attendance' table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    ClassID INT,
    Date DATE,
    Status CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
) ENGINE=InnoDB;

-- Insert data into 'Attendance'
INSERT INTO Attendance (StudentID, ClassID, Date, Status)
VALUES 
(1, 1, '2024-01-08', 'P'),
(2, 3, '2024-01-08', 'A'),
(3, 1, '2024-01-08', 'P'),
(4, 5, '2024-01-08', 'P'),
(5, 4, '2024-01-08', 'P'),
(6, 6, '2024-01-08', 'A'),
(7, 2, NULL, 'P'),
(8, 8, '2024-01-10', 'P'),
(9, 9, '2024-01-10', 'A'),
(10, 10, '2024-01-10', 'P'),
(11, 12, '2024-01-10', 'P'),
(12, 14, NULL, 'P'),
(13, 15, '2024-01-10', 'P'),
(14, 16, '2024-01-10', 'A'),
(15, 17, '2024-01-12', 'P'),
(16, 18, '2024-01-12', 'A'),
(17, 19, '2024-01-12', 'P'),
(18, 20, NULL, 'A'),
(19, 21, '2024-01-12', 'P'),
(20, 22, '2024-01-12', 'P'),
(21, 23, '2024-01-12', 'P'),
(22, 24, '2024-01-12', 'A'),
(23, 25, '2024-01-12', 'P'),
(24, 1, '2024-01-15', 'P'),
(25, 3, '2024-01-15', 'P');

Select * from classes;
Select * from courses;
Select * from enrollments;
Select * from students;
select * from teachers;
select * from attendance;

-- this statement shows student id and status where date is null
select studentid, status from attendance where date is null; 

-- this statement provides all teacher table where hire date is null
Select * from teachers where hiredate is null; 

-- this fetches students first name, last name, and gender whose enrollment date is null
SELECT students.FirstName, students.LastName, students.Gender 
FROM students
INNER JOIN enrollments ON students.StudentID = enrollments.StudentID
WHERE enrollments.EnrollmentDate IS NULL;  

-- this fetches students first name, last name and gender who have been enrolled in any course
SELECT students.FirstName, students.LastName, students.Gender 
FROM students
INNER JOIN enrollments ON students.StudentID = enrollments.StudentID; 

-- this fetches students first name last name and the course the student is enrolled for Mathematics
Select Students.FirstName, Students.LastName, Courses.CourseName
From Students
Inner Join Enrollments on students.StudentID = enrollments.StudentID
INNER JOIN courses ON enrollments.CourseID = courses.CourseID
Where Courses.CourseName = "Mathematics";  

-- this fetches students first name last name and the course the student is enrolled for Mathematics
Select Students.FirstName, Students.LastName, Courses.CourseName
From Students
Inner Join Enrollments on students.StudentID = enrollments.StudentID
INNER JOIN courses ON enrollments.CourseID = courses.CourseID
Where Courses.CourseName = "Computer Science"; 

-- this fetches students first name, last name and DOB who have not attended any classes
SELECT students.FirstName, students.LastName, students.DateOfBirth
FROM students
WHERE StudentID NOT IN (SELECT StudentID FROM attendance); 

-- this fetches all classes along with the teacher's FirstName and LastName and the corresponding course Course Name.
SELECT classes.ClassName, teachers.FirstName, teachers.LastName, courses.CourseName
FROM classes
INNER JOIN teachers ON classes.TeacherID = teachers.TeacherID
INNER JOIN courses ON classes.CourseID = courses.CourseID; 

-- Retrive all the course name and class time for all classes
SELECT courses.CourseName, classes.Schedule as "Class Time"
FROM classes
INNER JOIN courses ON classes.CourseID = courses.CourseID;

-- List all unique Gender values present in the Students table.
Select distinct Gender from Students;

-- Display the FirstName and LastName of students along with the TeacherName of the teacher for the class they are enrolled in.
SELECT students.FirstName, students.LastName, CONCAT(teachers.FirstName, ' ', teachers.LastName) AS TeacherName
FROM students
INNER JOIN enrollments ON students.StudentID = enrollments.StudentID
INNER JOIN classes ON enrollments.CourseID = classes.CourseID
INNER JOIN teachers ON classes.TeacherID = teachers.TeacherID;

-- Find the number of students enrolled in each course, showing the CourseName and the count of students.
Select courses.CourseName, Count(enrollments.StudentID) as "Student Count"
from Courses
INNER JOIN enrollments ON courses.CourseID = enrollments.CourseID
GROUP BY courses.CourseName;

-- List the FirstName and LastName of students who have attended all classes they are enrolled in.
Select students.firstname, students.lastname 
from students
inner join enrollments ON students.StudentID = enrollments.StudentID
inner join attendance ON students.StudentID = attendance.studentID
Where attendance.status = "P";

-- Retrieve FirstName, LastName, and the total number of classes attended by each student, including those with 0 attendance.
Select students.firstname, students.lastname, ifnull(count(attendance.attendanceID),0) as "Total Classes Attended"
from Students
Inner Join attendance ON students.StudentID = attendance.studentID AND attendance.Status = "P"
GROUP BY students.StudentID, students.FirstName, students.LastName;

-- A university wants to identify students who are at risk due to low class attendance. ## Find students who have attended less than 50% of their scheduled classes.
SELECT students.FirstName, students.LastName, 
       (COUNT(attendance.AttendanceID) / COUNT(enrollments.CourseID)) * 100 AS AttendancePercentage
FROM students
INNER JOIN enrollments ON students.StudentID = enrollments.StudentID
LEFT JOIN attendance ON students.StudentID = attendance.StudentID AND attendance.Status = 'P'
GROUP BY students.StudentID
HAVING AttendancePercentage < 50;

