-- -----------------------------------------------------
-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Table: Teacher
-- -----------------------------------------------------

-- Schema
CREATE TABLE Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT
);

-- Solution
SELECT 
    teacher_id, 
    COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
