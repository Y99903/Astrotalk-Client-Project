Insertion Into Astrotalk Client Project

Problem Type :-  mysql> INSERT INTO problem_types (problem_id, problem_type, description) VALUES 
    -> (1, 'Relationship', 'Issues in love, marriage, family, or friendships'), 
    -> (2, 'Career', 'Job stress, career growth, switching jobs, confusion'),
    -> (3, 'Finance', 'Money management, debt, financial decisions'),
    -> (4, 'Health', 'Mental health, stress, physical well-being'),
    -> (5, 'Self-esteem', 'Confidence, self-worth, inner healing');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

Users :- mysql> INSERT INTO users (user_id, name, age, gender, location, registered_date) VALUES
    -> (1, 'Aarav Mehta', 28, 'Male', 'Mumbai', '2024-12-05'),
    -> (2, 'Zoya Khan', 32, 'Female', 'Dubai', '2025-01-10'),
    -> (3, 'Omar Rahman', 24, 'Male', 'Sharjah', '2025-02-15'),
    -> (4, 'Neha Verma', 36, 'Female', 'Delhi', '2025-03-05'),
    -> (5, 'John Smith', 30, 'Male', 'London', '2025-04-20'),
    -> (6, 'Fatima Noor', 27, 'Female', 'Abu Dhabi', '2025-05-02'),
    -> (7, 'Ravi Kumar', 40, 'Male', 'Bangalore', '2025-06-15'),
    -> (8, 'Sara Ibrahim', 22, 'Female', 'Cairo', '2025-07-01'),
    -> (9, 'Ali Haider', 35, 'Male', 'Karachi', '2025-08-10'),
    -> (10, 'Meena Patel', 29, 'Female', 'Doha', '2025-09-01');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

Sessions :- mysql> INSERT INTO sessions (session_id, user_id, problem_id, session_date, session_duration, mode, price_per_minute, session_fee) VALUES
    -> (1, 1, 1, '2024-12-10 18:30:00', 20, 'Chat', 31.00, 620.00),
    -> (2, 2, 2, '2025-01-15 10:00:00', 15, 'Call', 31.00, 465.00),
    -> (3, 3, 3, '2025-02-20 12:00:00', 25, 'Video', 31.00, 775.00),
    -> (4, 4, 4, '2025-03-18 19:00:00', 30, 'Chat', 31.00, 930.00),
    -> (5, 5, 1, '2025-04-22 11:30:00', 10, 'Call', 31.00, 310.00),
    -> (6, 6, 5, '2025-05-10 14:15:00', 18, 'Video', 31.00, 558.00),
    -> (7, 7, 2, '2025-06-30 17:45:00', 40, 'Chat', 31.00, 1240.00),
    -> (8, 8, 3, '2025-07-14 16:00:00', 22, 'Call', 31.00, 682.00),
    -> (9, 9, 4, '2025-08-08 09:00:00', 35, 'Video', 31.00, 1085.00),
    -> (10, 10, 5, '2025-09-04 20:00:00', 12, 'Chat', 31.00, 372.00);
Query OK, 10 rows affected (0.00 sec)
Records: 10  Duplicates: 0  Warnings: 0

Feedback :- mysql> INSERT INTO feedback (feedback_id, session_id, rating, comments, improved) VALUES
    -> (1, 1, 4, 'Helpful advice for relationship issues', TRUE),
    -> (2, 2, 5, 'Great insights on career planning', TRUE),
    -> (3, 3, 3, 'Somewhat helpful, expected more', FALSE),
    -> (4, 4, 5, 'Very calming and motivating session', TRUE),
    -> (5, 5, 2, 'Too short to be useful', FALSE),
    -> (6, 6, 4, 'Good support for self-esteem', TRUE),
    -> (7, 7, 5, 'Excellent, detailed advice on job switch', TRUE),
    -> (8, 8, 3, 'Ok experience, can be improved', FALSE),
    -> (9, 9, 5, 'Really helped with stress management', TRUE),
    -> (10, 10, 4, 'Nice session, would recommend', TRUE);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0



Therefore, Like this we have can 100+ data of each Table.
