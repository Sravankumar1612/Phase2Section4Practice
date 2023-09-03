create database Rain_School
use Rain_School
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
)



CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes (class_id)
)


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class_id INT,
    subject_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes (class_id),
    FOREIGN KEY (subject_id) REFERENCES Subject (subject_id)
)



select * from Student