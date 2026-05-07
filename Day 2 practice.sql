mysql> USE ecommerce
Database changed     ----------------- Here, I selected the ecommerce database
 

mysql> SHOW TABLES; -------- Here, I displayed all the tables present in the database
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.08 sec)

mysql> SELECT * FROM customer; ----- Here, I checked the records available in the customer table
Empty set (0.07 sec)

mysql> INSERT INTO customer(customer_id, name, city, email, address, phone_number, pin_code) VALUES ('C101', 'Harshal', 'Mumbai', 'harshal@gmail.com','Airoli' ,'9876543210', '409879');
Query OK, 1 row affected (0.04 sec)  ------ Here, I inserted a single record into the customer table

mysql> INSERT INTO customer VALUES  ('C102', 'Abin', 'Mumbai', 'abin@gmail.com','Vikroli' ,'7865432190', '400987'),  ('C103', 'Tara', 'Mumbai', 'tara@gmail.com','Bandra' ,'7865644320', '478987'), ('C104', 'Abinia', 'Mumbai', 'abinia@gmail.com','Vikroli' ,'9875432190', '400567');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0  ----- Here, I inserted multiple records into the customer table

mysql> SELECT * FROM customer;
+-------------+---------+--------+-------------------+---------+--------------+----------+
| customer_id | name    | city   | email             | address | phone_number | pin_code |
+-------------+---------+--------+-------------------+---------+--------------+----------+
| C101        | Harshal | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |
| C102        | Abin    | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |
| C103        | Tara    | Mumbai | tara@gmail.com    | Bandra  | 7865644320   | 478987   |
| C104        | Abinia  | Mumbai | abinia@gmail.com  | Vikroli | 9875432190   | 400567   |
+-------------+---------+--------+-------------------+---------+--------------+----------+
4 rows in set (0.00 sec)

mysql> DESC customer;   ---- Here, I checked the structure of the customer table
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(5)  | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(50) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pin_code     | varchar(6)  | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.05 sec)

mysql> ALTER TABLE customer MODIFY customer_id VARCHAR(10) NOT NULL; 
   ----------------Here, I modified the datatype size of the customer_id column from VARCHAR(5) to VARCHAR(10)
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC customer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(10) | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(50) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pin_code     | varchar(6)  | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> DESC orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | varchar(5)  | NO   |     | NULL    |       |
| product_id   | varchar(10) | NO   | MUL | NULL    |       |
| customer_id  | varchar(10) | NO   | MUL | NULL    |       |
| quantity     | int         | NO   |     | NULL    |       |
| total_price  | double      | NO   |     | NULL    |       |
| payment_mode | varchar(10) | NO   |     | NULL    |       |
| order_date   | date        | NO   |     | NULL    |       |
| order_status | varchar(10) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM customer;
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
| C102        | Abin          | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C103        | Tara          | Mumbai | tara@gmail.com    | Bandra  | 7865644320   | 478987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com  | Vikroli | 9875432190   | 400567   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> DELETE FROM customer WHERE customer_id = 'C103';
Query OK, 1 row affected (0.04 sec)
---------------- Here, I deleted the customer record whose customer_id is C103
mysql> SELECT * FROM customer;
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
| C102        | Abin          | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com  | Vikroli | 9875432190   | 400567   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

