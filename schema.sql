CREATE DATABASE studentManagementDB;
USE studentManagementDB;

CREATE TABLE students(
    student_id INT PRIMARY KEY NOT NULL,
    student_name VARCHAR(50),
    gender ENUM("M","F"),
    conatct VARCHAR(30),
    email VARCHAR(50)
);

CREATE TABLE subjects(
    subject_id INT PRIMARY KEY NOT NULL,
    suject_name VARCHAR(50)
);

CREATE TABLE marks(
    marks_id INT PRIMARY KEY NOT NULL,
    student_id INT,
    subject_id INT,
    marks INT,
    FOREIGN KEY(student_id) references students(student_id),
    FOREIGN KEY(subject_id) references subjects(subject_id)
);
