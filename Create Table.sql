Create Table of Astrotalk Client Project.

mysql> CREATE TABLE users (
    ->     user_id INT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     age INT,
    ->     gender VARCHAR(20),
    ->     location VARCHAR(100),
    ->     registered_date DATE
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE problem_types (
    ->     problem_id INT PRIMARY KEY,
    ->     problem_type VARCHAR(50),
    ->     description TEXT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE sessions (
    ->     session_id INT PRIMARY KEY,
    ->     user_id INT,
    ->     problem_id INT,
    ->     session_date DATETIME,
    ->     session_duration INT,
    ->     mode VARCHAR(50),
    ->     price_per_minute DECIMAL(10,2) DEFAULT 31.00,
    ->     session_fee DECIMAL(10,2),
    ->     FOREIGN KEY (user_id) REFERENCES users(user_id),
    ->     FOREIGN KEY (problem_id) REFERENCES problem_types(problem_id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE feedback (
    ->     feedback_id INT PRIMARY KEY,
    ->     session_id INT,
    ->     rating INT CHECK (rating BETWEEN 1 AND 5),
    ->     comments TEXT,
    ->     improved BOOLEAN,
    ->     FOREIGN KEY (session_id) REFERENCES sessions(session_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

