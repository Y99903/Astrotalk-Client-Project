{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs36 \cf0 \ul \ulc0 Create Table of Astrotalk Client Project.\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1\b0\fs22 \cf2 \ulnone \CocoaLigature0 mysql> CREATE TABLE users (\
    ->     user_id INT PRIMARY KEY,\
    ->     name VARCHAR(100),\
    ->     age INT,\
    ->     gender VARCHAR(20),\
    ->     location VARCHAR(100),\
    ->     registered_date DATE\
    -> );\
Query OK, 0 rows affected (0.01 sec)\
\
mysql> CREATE TABLE problem_types (\
    ->     problem_id INT PRIMARY KEY,\
    ->     problem_type VARCHAR(50),\
    ->     description TEXT\
    -> );\
Query OK, 0 rows affected (0.01 sec)\
\
mysql> CREATE TABLE sessions (\
    ->     session_id INT PRIMARY KEY,\
    ->     user_id INT,\
    ->     problem_id INT,\
    ->     session_date DATETIME,\
    ->     session_duration INT,\
    ->     mode VARCHAR(50),\
    ->     price_per_minute DECIMAL(10,2) DEFAULT 31.00,\
    ->     session_fee DECIMAL(10,2),\
    ->     FOREIGN KEY (user_id) REFERENCES users(user_id),\
    ->     FOREIGN KEY (problem_id) REFERENCES problem_types(problem_id)\
    -> );\
Query OK, 0 rows affected (0.02 sec)\
\
mysql> CREATE TABLE feedback (\
    ->     feedback_id INT PRIMARY KEY,\
    ->     session_id INT,\
    ->     rating INT CHECK (rating BETWEEN 1 AND 5),\
    ->     comments TEXT,\
    ->     improved BOOLEAN,\
    ->     FOREIGN KEY (session_id) REFERENCES sessions(session_id)\
    -> );\
Query OK, 0 rows affected (0.01 sec)\
\
}