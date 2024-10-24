use school;
CREATE TABLE courses (
    CourseID int PRIMARY KEY AUTO_INCREMENT,
    CourseName varchar(250),
    CourseDescription varchar(250)
);

CREATE TABLE enrollments (
    EnrollmentID int PRIMARY KEY AUTO_INCREMENT, 
    EnrollmentDate DATE
);

CREATE TABLE students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10)
);

CREATE TABLE subjects (
    SubjectID int PRIMARY KEY AUTO_INCREMENT,
    SubjectName varchar(20)
);
INSERT INTO students (StudentID, FirstName, LastName, BirthDate, Gender) VALUES
(1, 'Ayla', 'Amir', '2003-07-15', 'Female'), 
(2, 'Neha', 'Noor', '2004-07-15', 'Female'), 
(3, 'Emaan', 'Ehsan', '2002-07-15', 'Female'), 
(4, 'Hafsa', 'Shafiq', '2002-07-15', 'Female');
INSERT INTO courses (CourseID, CourseName, CourseDescription) VALUES
(1, 'DB', 'We study Databases'), 
(2, 'QS', 'Quranic Studies'), 
(3, 'HCI', 'Human Computer Interaction'), 
(4, 'OS', 'Operating System'), 
(5, 'Stats', 'Statistics and Probability');
INSERT INTO enrollments (EnrollmentID, EnrollmentDate) VALUES
(1, '2024-08-16'), 
(2, '2024-08-16'), 
(3, '2024-08-16'), 
(4, '2024-08-16'), 
(5, '2024-08-16');
INSERT INTO subjects (SubjectID, SubjectName) VALUES
(1, 'English');
UPDATE students 
SET FirstName = 'Naila' 
WHERE StudentID = 3;
DELETE FROM courses 
WHERE CourseID = 3;
