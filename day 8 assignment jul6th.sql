create database school;
use school;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30),
    mark INT
);
INSERT INTO Students VALUES
(101, 'Arun', 'Maths', 90),
(102, 'Bala', 'Science', 85),
(103, 'Charan', 'English', 78),
(104, 'Divya', 'Maths', 95),
(105, 'Esha', 'Science', 88),
(106, 'Farhan', 'English', 82);
 
 #sum
 SELECT
    student_id,
    name,
    subject,
    mark,
    SUM(mark) OVER() AS Total_Marks
FROM Students;

#rank
SELECT
    student_id,
    name,
    subject,
    mark,
    RANK() OVER(ORDER BY mark DESC) AS Rank_No
FROM Students;

#lead
SELECT
    student_id,
    name,
    subject,
    mark,
    LEAD(mark) OVER(ORDER BY student_id) AS Next_Student_Mark
FROM Students;
