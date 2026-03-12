CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    group_name VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DECIMAL(3,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (first_name, last_name, group_name) VALUES 
('Oleksandr', 'Kovalenko', 'CS-21'),
('Anna', 'Shevchenko', 'CS-21'),
('Maksym', 'Bondarenko', 'SE-22'),
('Yulia', 'Lysenko', 'SE-22'),
('Dmytro', 'Tkachenko', 'EC-10');

INSERT INTO Courses (course_name) VALUES 
('Physics'),
('Calculus'),
('Algorithms'),
('Databases'),
('English');

INSERT INTO Grades (student_id, course_id, grade) VALUES 
(1, 1, 5.00), (1, 2, 5.00), (1, 3, 5.00),
(2, 1, 4.00), (2, 2, 5.00), (2, 3, 5.00),
(3, 1, 4.00), (3, 2, 4.00), (3, 3, 4.00),
(4, 1, 5.00), (4, 2, 4.00), (4, 3, 5.00), (4, 4, 5.00),
(5, 1, 3.00), (5, 2, 4.00);

SELECT 
    s.first_name, 
    s.last_name, 
    s.group_name,
    ROUND(AVG(g.grade), 2) AS average_score
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
GROUP BY s.student_id, s.first_name, s.last_name, s.group_name
HAVING average_score > 4.5;

SELECT 
    s.group_name, 
    COUNT(DISTINCT s.student_id) AS total_students, 
    ROUND(AVG(g.grade), 2) AS group_performance
FROM Students s
LEFT JOIN Grades g ON s.student_id = g.student_id
GROUP BY s.group_name;

SELECT 
    c.course_name, 
    COUNT(g.grade_id) AS total_grades,
    MIN(g.grade) AS min_grade,
    MAX(g.grade) AS max_grade,
    ROUND(AVG(g.grade), 2) AS avg_course_score
FROM Courses c
LEFT JOIN Grades g ON c.course_id = g.course_id
GROUP BY c.course_id, c.course_name
ORDER BY avg_course_score DESC;