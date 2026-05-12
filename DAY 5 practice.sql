mysql> CREATE DATABASE joins;
Query OK, 1 row affected (0.02 sec)

mysql> USE joins;
Database changed

mysql> CREATE TABLE department(dept_id INT PRIMARY KEY NOT NULL,dept_name VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.09 sec)

mysql> DESC department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> INSERT INTO department VALUES(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.03 sec)

mysql> CREATE TABLE employee(emp_id INT PRIMARY KEY NOT NULL,emp_name VARCHAR (15) NOT NULL,dept_id INT,FOREIGN KEY (dept_id) REFERENCES department (dept_id));
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO employee VALUES(1,'Aniket', 1),(2,'Vishal',2),(3,'Fiona',Null),(4,'Vijaya',3),(5,'Rhea',4);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | Aniket   |       1 |
|      2 | Vishal   |       2 |
|      3 | Fiona    |    NULL |
|      4 | Vijaya   |       3 |
|      5 | Rhea     |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee INNER JOIN department ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Aniket   | HR        |
| Vishal   | IT        |
| Vijaya   | Finance   |
| Rhea     | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee LEFT JOIN department ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Aniket   | HR        |
| Vishal   | IT        |
| Fiona    | NULL      |
| Vijaya   | Finance   |
| Rhea     | Marketing |
+----------+-----------+
5 rows in set (0.03 sec)

mysql> SELECT emp_name, dept_name FROM employee RIGHT JOIN department ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Aniket   | HR        |
| Vishal   | IT        |
| Vijaya   | Finance   |
| Rhea     | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee FULL JOIN department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Aniket   | Marketing |
| Aniket   | Finance   |
| Aniket   | IT        |
| Aniket   | HR        |
| Vishal   | Marketing |
| Vishal   | Finance   |
| Vishal   | IT        |
| Vishal   | HR        |
| Fiona    | Marketing |
| Fiona    | Finance   |
| Fiona    | IT        |
| Fiona    | HR        |
| Vijaya   | Marketing |
| Vijaya   | Finance   |
| Vijaya   | IT        |
| Vijaya   | HR        |
| Rhea     | Marketing |
| Rhea     | Finance   |
| Rhea     | IT        |
| Rhea     | HR        |
+----------+-----------+
20 rows in set, 1 warning (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee CROSS JOIN department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Aniket   | Marketing |
| Aniket   | Finance   |
| Aniket   | IT        |
| Aniket   | HR        |
| Vishal   | Marketing |
| Vishal   | Finance   |
| Vishal   | IT        |
| Vishal   | HR        |
| Fiona    | Marketing |
| Fiona    | Finance   |
| Fiona    | IT        |
| Fiona    | HR        |
| Vijaya   | Marketing |
| Vijaya   | Finance   |
| Vijaya   | IT        |
| Vijaya   | HR        |
| Rhea     | Marketing |
| Rhea     | Finance   |
| Rhea     | IT        |
| Rhea     | HR        |
+----------+-----------+
20 rows in set (0.04 sec)

mysql> CREATE DATABASE store_procedure_example;
Query OK, 1 row affected (0.04 sec)

mysql> USE store_procedure_example;
Database changed

mysql> CREATE TABLE employee(id INT PRIMARY KEY NOT NULL,name VARCHAR (15), dept VARCHAR(10) NOT NULL,salary INT );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO employee VALUES(1,'Aniket','HR',10000),(2,'Vishal','Finance',20000),(3,'Fiona','Marketing',50000),(4,'Vijaya','HR',30000),(5,'Rhea','Marketing',40000);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(15) | YES  |     | NULL    |       |
| dept   | varchar(10) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> SELECT * FROM employee;
+----+--------+-----------+--------+
| id | name   | dept      | salary |
+----+--------+-----------+--------+
|  1 | Aniket | HR        |  10000 |
|  2 | Vishal | Finance   |  20000 |
|  3 | Fiona  | Marketing |  50000 |
|  4 | Vijaya | HR        |  30000 |
|  5 | Rhea   | Marketing |  40000 |
+----+--------+-----------+--------+
5 rows in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE Getemployeee()
    -> BEGIN
    -> SELECT * FROM employee;
    -> END//
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> CALL Getemployeee();
+----+--------+-----------+--------+
| id | name   | dept      | salary |
+----+--------+-----------+--------+
|  1 | Aniket | HR        |  10000 |
|  2 | Vishal | Finance   |  20000 |
|  3 | Fiona  | Marketing |  50000 |
|  4 | Vijaya | HR        |  30000 |
|  5 | Rhea   | Marketing |  40000 |
+----+--------+-----------+--------+
5 rows in set (0.03 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeDept(IN dept_name VARCHAR(30))
    -> BEGIN
    -> SELECT * FROM employee
    -> WHERE dept = name;
    -> END//
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeDept('HR');
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CALL GetEmployeeDept('Finance');
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeDeptt(IN dept_name VARCHAR(30))
    -> BEGIN
    -> SELECT * FROM employee
    -> WHERE dept = dept_name;
    -> END//
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeDeptt('HR');
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Aniket | HR   |  10000 |
|  4 | Vijaya | HR   |  30000 |
+----+--------+------+--------+
2 rows in set (0.03 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    -> SELECT COUNT(*) INTO total
    -> FROM Employee;
    -> END //
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.04 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE IncreaseSalary(INOUT sal INT)
    -> BEGIN
    -> SET sal = sal + 5000;
    -> END //
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> SET salary = 1000;
ERROR 1193 (HY000): Unknown system variable 'salary'
mysql> SET @salary = 1000;
Query OK, 0 rows affected (0.00 sec)