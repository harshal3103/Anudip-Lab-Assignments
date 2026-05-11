Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 
BankAccount Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment1.sql" Provide comments above each query to indicate the task number and the query's purpose



Solution -


mysql> CREATE DATABASE BankSystem;  -------(Here I have created the database BankSystem)
Query OK, 1 row affected (0.02 sec)

mysql> USE BankSystem;  -------(Here I am using the database BankSystem)
Database changed

mysql> CREATE TABLE BankAccount (account_id VARCHAR(10) NOT NULL PRIMARY KEY,account_holder_name VARCHAR(25) NOT NULL, account_balance DOUBLE(12,2) NOT NULL);  -------(Here i wrote the query to create the BankAccount Table in the BankSystem database)
Query OK, 0 rows affected, 1 warning (0.05 sec)

-----------------------------------------------------------------------------------------------------------------------------------------------------------

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

mysql> INSERT INTO BankAccount VALUES('101','Harshal Mane','45000'),('102','Abin Jose','50000'),('103','Pranjal Mathur','60000'),('104','Mitta Ror','25000'),('105','Sunny Thakur','28000'),('106','Sanjana Patil','30000'),('107','Akanksha Jadhav','25000');  -------(Here I have Inserted data in BankAccount Table)
Query OK, 7 rows affected (0.05 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM BankAccount; -------(Here i wrote the query to select all the data from the table to see if all the data is inserted properly)
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Harshal Mane        |        45000.00 |
| 102        | Abin Jose           |        50000.00 |
| 103        | Pranjal Mathur      |        60000.00 |
| 104        | Mitta Ror           |        25000.00 |
| 105        | Sunny Thakur        |        28000.00 |
| 106        | Sanjana Patil       |        30000.00 |
| 107        | Akanksha Jadhav     |        25000.00 |
+------------+---------------------+-----------------+
7 rows in set (0.03 sec)

-----------------------------------------------------------------------------------------------------------------------------------------------------------

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

mysql> SELECT account_holder_name,account_balance FROM BankAccount; -------(Here i wrote the query to select account holder name and account balance data from the table)

+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Harshal Mane        |        45000.00 |
| Abin Jose           |        50000.00 |
| Pranjal Mathur      |        60000.00 |
| Mitta Ror           |        25000.00 |
| Sunny Thakur        |        28000.00 |
| Sanjana Patil       |        30000.00 |
| Akanksha Jadhav     |        25000.00 |
+---------------------+-----------------+
7 rows in set (0.00 sec)

-----------------------------------------------------------------------------------------------------------------------------------------------------------

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

mysql> SELECT account_holder_name,account_balance FROM BankAccount WHERE account_balance > 30000;  -------(Here I have wrote the query to select account holder name and account balance data where account balance is more than 30000 from the table)

+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Harshal Mane        |        45000.00 |
| Abin Jose           |        50000.00 |
| Pranjal Mathur      |        60000.00 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

------------------------------------------------------------------------------------------------------------------------------------------------------------

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

mysql> UPDATE BankAccount SET account_balance = '70000' WHERE account_id = '101';  -------(Here I have wrote the query to update account balance of account id 101 from 45000 to 70000)

Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-----------------------------------------------------------------------------------------------------------------------------------------------------------
