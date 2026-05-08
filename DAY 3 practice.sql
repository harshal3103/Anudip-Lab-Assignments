mysql> USE ecommerce;
Database changed
mysql> SHOW TABLES;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.08 sec)

mysql> SELECT * FROM customer;
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
| C102        | Abin          | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com  | Vikroli | 9875432190   | 400567   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
3 rows in set (0.04 sec)

mysql> UPDATE customer SET phone_number = '9980765432' WHERE customer_id = 'C104';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM customer;
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
| C102        | Abin          | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM customer WHERE customer_name LIKE '%ia';
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email            | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| C104        | Abinia        | Mumbai | abinia@gmail.com | Vikroli | 9980765432   | 400567   |       0 |       |         |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
1 row in set (0.03 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE '%in%';
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email            | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| C102        | Abin          | Mumbai | abin@gmail.com   | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com | Vikroli | 9980765432   | 400567   |       0 |       |         |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE 'Ab%';
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email            | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
| C102        | Abin          | Mumbai | abin@gmail.com   | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com | Vikroli | 9980765432   | 400567   |       0 |       |         |
+-------------+---------------+--------+------------------+---------+--------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE 'f_____';
Empty set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE 'H_____l';
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE 'H__s';
Empty set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE 'H__s%';
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE '%_s__l';
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name LIKE '%s__l';
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO customer VALUES ('C103','Miya','Banglore','miya@gmail','Thane','9871234567','456778','32897','Maharashtra','India');
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO customer VALUES ('C105','Miyalo','Banglore','miyalo@gmail','Thane','9871230007','451078','30087','Maharashtra','');
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM customer;
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C104        | Abinia        | Mumbai   | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail      | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
5 rows in set (0.03 sec)

mysql> DESC customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| customer_name | varchar(20) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email         | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(50) | NO   |     | NULL    |       |
| phone_number  | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(6)  | NO   |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(20) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.02 sec)

mysql> SELECT * FROM customer LIMIT 3;
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> SELECT DISTINCT city FROM customer;
+----------+
| city     |
+----------+
| Mumbai   |
| Banglore |
+----------+
2 rows in set (0.03 sec)

mysql> SELECT city FROM customer;
+----------+
| city     |
+----------+
| Mumbai   |
| Mumbai   |
| Banglore |
| Mumbai   |
| Banglore |
+----------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE bill_no < 4;
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email             | address | phone_number | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
| C101        | Harshal       | Mumbai | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |       |         |
| C102        | Abin          | Mumbai | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |       |         |
| C104        | Abinia        | Mumbai | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |       |         |
+-------------+---------------+--------+-------------------+---------+--------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE bill_no > 4;
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email        | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
| C103        | Miya          | Banglore | miya@gmail   | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C105        | Miyalo        | Banglore | miyalo@gmail | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_name = 'miya' AND bill_no = '32897';
+-------------+---------------+----------+------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email      | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+------------+---------+--------------+----------+---------+-------------+---------+
| C103        | Miya          | Banglore | miya@gmail | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
+-------------+---------------+----------+------------+---------+--------------+----------+---------+-------------+---------+
1 row in set (0.03 sec)

mysql> SELECT * FROM customer WHERE customer_name = 'miya' OR bill_no = '30087';
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email        | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
| C103        | Miya          | Banglore | miya@gmail   | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C105        | Miyalo        | Banglore | miyalo@gmail | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
+-------------+---------------+----------+--------------+---------+--------------+----------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_id BETWEEN 'C101' AND 'C103';
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
3 rows in set (0.03 sec)

mysql> SELECT * FROM customer WHERE customer_id BETWEEN 'C101' AND 'C107';
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C104        | Abinia        | Mumbai   | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail      | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_id BETWEEN 'C103' AND 'C107';
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email            | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
| C103        | Miya          | Banglore | miya@gmail       | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C104        | Abinia        | Mumbai   | abinia@gmail.com | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail     | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> INSERT INTO customer VALUES ('C107','Mayra','Banglore','miya@gmail','Thane','9876664567','450678','32787','Maharashtra','India');
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO customer VALUES ('C106','Nayera','Banglore','nayera@gmail','Thane','9876660007','407378','32007','Maharashtra','India');
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM customer;
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C104        | Abinia        | Mumbai   | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail      | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
| C106        | Nayera        | Banglore | nayera@gmail      | Thane   | 9876660007   | 407378   |   32007 | Maharashtra | India   |
| C107        | Mayra         | Banglore | miya@gmail        | Thane   | 9876664567   | 450678   |   32787 | Maharashtra | India   |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_id NOT BETWEEN 'C101' AND 'C103';
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email            | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
| C104        | Abinia        | Mumbai   | abinia@gmail.com | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail     | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
| C106        | Nayera        | Banglore | nayera@gmail     | Thane   | 9876660007   | 407378   |   32007 | Maharashtra | India   |
| C107        | Mayra         | Banglore | miya@gmail       | Thane   | 9876664567   | 450678   |   32787 | Maharashtra | India   |
+-------------+---------------+----------+------------------+---------+--------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)
mysql> SELECT * FROM customer WHERE customer_id IN ('C101','C104','C107');
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C104        | Abinia        | Mumbai   | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C107        | Mayra         | Banglore | miya@gmail        | Thane   | 9876664567   | 450678   |   32787 | Maharashtra | India   |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customer WHERE customer_id NOT IN ('C101','C104','C107');
+-------------+---------------+----------+----------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email          | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+----------------+---------+--------------+----------+---------+-------------+---------+
| C102        | Abin          | Mumbai   | abin@gmail.com | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail     | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C105        | Miyalo        | Banglore | miyalo@gmail   | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
| C106        | Nayera        | Banglore | nayera@gmail   | Thane   | 9876660007   | 407378   |   32007 | Maharashtra | India   |
+-------------+---------------+----------+----------------+---------+--------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)


mysql> SELECT * FROM customer WHERE email IS NULL;
Empty set (0.00 sec)

mysql> SELECT * FROM customer WHERE email IS NOT NULL;
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| customer_id | customer_name | city     | email             | address | phone_number | pin_code | bill_no | state       | country |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
| C101        | Harshal       | Mumbai   | harshal@gmail.com | Airoli  | 9876543210   | 409879   |       0 |             |         |
| C102        | Abin          | Mumbai   | abin@gmail.com    | Vikroli | 7865432190   | 400987   |       0 |             |         |
| C103        | Miya          | Banglore | miya@gmail        | Thane   | 9871234567   | 456778   |   32897 | Maharashtra | India   |
| C104        | Abinia        | Mumbai   | abinia@gmail.com  | Vikroli | 9980765432   | 400567   |       0 |             |         |
| C105        | Miyalo        | Banglore | miyalo@gmail      | Thane   | 9871230007   | 451078   |   30087 | Maharashtra |         |
| C106        | Nayera        | Banglore | nayera@gmail      | Thane   | 9876660007   | 407378   |   32007 | Maharashtra | India   |
| C107        | Mayra         | Banglore | miya@gmail        | Thane   | 9876664567   | 450678   |   32787 | Maharashtra | India   |
+-------------+---------------+----------+-------------------+---------+--------------+----------+---------+-------------+---------+
7 rows in set (0.00 sec)