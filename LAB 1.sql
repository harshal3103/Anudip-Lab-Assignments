LAB ASSIGNMENT 1

Database Name- studentmanagementsystem

Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Student Table-StudentID primary key ,name,age,phoneno





mysql> CREATE DATABASE studentmanagementsystem;
Query OK, 1 row affected (0.04 sec)

mysql> USE studentmanagementsystem;
Database changed

mysql> CREATE TABLE Student(student_id VARCHAR(10) NOT NULL PRIMARY KEY, Name VARCHAR(15) NOT NULL, Age INT NOT NULL, Phone_number INT NOT NULL);
Query OK, 0 rows affected (0.07 sec)

mysql> DESC Student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | varchar(10) | NO   | PRI | NULL    |       |
| Name         | varchar(15) | NO   |     | NULL    |       |
| Age          | int         | NO   |     | NULL    |       |
| Phone_number | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE Feedback(student_id VARCHAR(10) NOT NULL, Date DATE NOT NULL,Instructor_name VARCHAR(20) NOT NULL,Feedback VARCHAR(50) NOT NULL, FOREIGN KEY (student_id) REFERENCES Student(student_id));
Query OK, 0 rows affected (0.10 sec)

mysql> DESC Feedback;;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| student_id      | varchar(10) | NO   | MUL | NULL    |       |
| Date            | date        | NO   |     | NULL    |       |
| Instructor_name | varchar(20) | NO   |     | NULL    |       |
| Feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)