create database  school_management;
create table classes(
class_id INT AUTO_INCREMENT PRIMARY KEY,
class_name VARCHAR(50) NOT NULL,
teacher_name VARCHAR(50) NOT NULL
);
create table students(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    gender ENUM('Male', 'Female'),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);
alter table students
add phone_number VARCHAR(15);
alter table students
modify column email VARCHAR(150);
alter table students
drop column gender;
drop table students;
drop table classes;
drop database school_management;