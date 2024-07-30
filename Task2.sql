CREATE DATABASE school_managment;

USE school_management;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    credits INT
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),  -- Initially with old data type
    date_of_birth DATE
    );

ALTER TABLE students
ADD grade VARCHAR(2);

ALTER TABLE students
MODIFY phone_number VARCHAR(15);


INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES 
('ram', 'kumar', 'ram.kumar@123.com', '123-456-7890', '2000-05-15', 'A'),
('shyam', 'kumar', 'shyam.kumar@123.com', '234-567-8901', '1999-08-20', 'B'),
('kumar', 'kiran', 'kumar.kiran@123.com', '345-678-9012', '2001-12-01', 'A');

INSERT INTO courses (course_name, course_description, credits)
VALUES 
('Maths', 'Introduction to Algebra and Geometry', 3),
('Telugu', 'Basic poems', 4),
('History', 'World History from 1500 to Present', 3),
('English', 'speeches of the lesson', 3);

SELECT first_name,last_name,email FROM students;

DROP TABLE students;


DROP DATABASE school_management;
