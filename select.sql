-- Active: 1747539573897@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT, -- CHECK (age >= 0 AND age <= 120)
    grade VARCHAR(2),
    course VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    dob DATE NOT NULL,
    blood_group VARCHAR(3) , --CHECK (blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
    country VARCHAR(100) NOT NULL
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2005-03-15', 'A+', 'USA'),
('Emily', 'Smith', 25, 'B', 'Mechanical Engineering', 'emily.smith@example.com', '2003-07-22', 'O-', 'Canada'),
('Michael', 'Brown', 19, 'A-', 'Business Administration', 'michael.brown@example.com', '2006-01-10', 'B+', 'UK'),
('Sophia', 'Johnson', 21, 'B+', 'Psychology', 'sophia.johnson@example.com', '2004-10-30', 'AB-', 'Australia'),
('James', 'Williams', 23, 'A', 'Civil Engineering', 'james.williams@example.com', '2002-12-25', 'O+', 'India'),
('Olivia', 'Jones', 18, 'B', 'Physics', 'olivia.jones@example.com', '2007-05-18', 'A-', 'Germany'),
('Liam', 'Garcia', 24, 'C', 'Architecture', 'liam.garcia@example.com', '2001-09-05', 'B-', 'Spain'),
('Ava', 'Martinez', 28, 'A-', 'Mathematics', 'ava.martinez@example.com', '2005-02-14', 'AB+', 'Mexico'),
('Noah', 'Rodriguez', 22, 'B', 'Biology', 'noah.rodriguez@example.com', '2003-11-02', 'O-', 'Argentina'),
('Isabella', 'Lee', 29, 'A', 'Chemistry', 'isabella.lee@example.com', '2006-08-08', 'A+', 'South Korea');

SELECT * FROM students;
SELECT email, blood_group, country FROM students;
SELECT * FROM students ORDER BY first_name ASC; --sot korer jonno used hoi
SELECT * FROM students ORDER BY first_name DESC;
SELECT * FROM students ORDER BY age ASC;

SELECT country FROM students ORDER BY country ASC; 

SELECT DISTINCT country FROM students ;
SELECT * FROM students
WHERE country='USA' ;

SELECT * FROM students
WHERE grade='C' AND course ='Architecture';
SELECT * FROM STUDENTS
WHERE age !=20;

SELECT upper(first_name) as first_name_upper_case, * from students;
SELECT concat(first_name,'  ',last_name)FROM students;

SELECT length(first_name) from students; -- scaler
SELECT avg(age) FROM students; --aggregate function sob data niya avg korese
SELECT max(age) FROM students; --aggregate function sob data niya max korese
SELECT min(age) FROM students; --aggregate function sob data niya min korese
SELECT count(age) FROM students; --aggregate function sob data niya age koita count korese
SELECT max(length(first_name))FROM students; 

