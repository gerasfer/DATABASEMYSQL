# University Management System (SQL)
This is my Final Capstone Project for the SQL Database Development course. It serves as a practical demonstration of my skills in database design, data manipulation, and advanced analytical querying.

A relational database project designed to manage university data, including students, courses, and academic performance tracking.

## 📌 Project Overview
This project demonstrates the design of a database schema for a university and the use of complex SQL queries to extract meaningful analytics. It handles the relationships between students, their respective groups, and the grades they receive in various courses.

## 🛠️ Database Schema
The database consists of three main tables:
* **Students**: Stores student names and group affiliations.
* **Courses**: Lists all available academic subjects.
* **Grades**: A junction table that links students to courses with specific grades (Many-to-Many relationship).

## 🚀 Key Features & Queries
The project includes advanced SQL scripts to perform the following:
1.  **Top Performers**: Filtering students with an average score higher than 4.5.
2.  **Group Analytics**: Calculating total students and average performance per group.
3.  **Course Metrics**: Analyzing the difficulty of courses using MIN, MAX, and AVG functions.

## 💻 How to Use
1.  Ensure you have **MySQL Server** installed.
2.  Clone this repository or copy the SQL script.
3.  Run the script in your MySQL environment (e.g., MySQL Workbench or Command Line).
