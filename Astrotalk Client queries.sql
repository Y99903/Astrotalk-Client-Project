Astrotalk Client Queries


1) Counting Total users, problem types, session and feedbacks

mysql> SELECT COUNT(*) FROM USERS;
+----------+
| COUNT(*) |
+----------+
|      100 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM problem_types;
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM sessions;
+----------+
| COUNT(*) |
+----------+
|      100 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM feedback;
+----------+
| COUNT(*) |
+----------+
|      100 |
+----------+


2) Total Earning From Sessions :-

 SELECT SUM(session_fee) FROM sessions;

+------------------+
| SUM(session_fee) |
+------------------+
|         71362.00 |




3) Average Rating From Client :-

SELECT AVG(rating) FROM feedback;
+-------------+
| AVG(rating) |
+-------------+
|      3.9600 |
+-------------+



4) AS Per Each Problem Type Revenue :-

SELECT p.problem_type AS PROBLEMS,SUM(s.session_fee)AS REVENUE FROM problem_types p JOIN sessions s ON p.problem_id=s.problem_id GROUP BY PROBLEMS ORDER BY REVENUE DESC;
+--------------+----------+
| PROBLEMS     | REVENUE  |
+--------------+----------+
| Self-esteem  | 16368.00 |
| Career       | 15469.00 |
| Health       | 14694.00 |
| Finance      | 12803.00 |
| Relationship | 12028.00 |
+--------------+----------+


5)AS Per Each Problem Type Ratings :-

SELECT p.problem_type AS PROBLEM,AVG(f.rating)AS RATING FROM feedback f JOIN sessions s ON f.session_id=s.session_id JOIN problem_types p ON s.problem_id=p.problem_id GROUP BY PROBLEM ORDER BY RATING DESC;

+--------------+--------+
| PROBLEM      | RATING |
+--------------+--------+
| Career       | 4.5500 |
| Health       | 4.1500 |
| Self-esteem  | 3.9500 |
| Relationship | 3.7500 |
| Finance      | 3.4000 |
+--------------+--------+


6)By Feedback Improved Mentors

  SELECT improved,COUNT(*)AS TOTAL_FEEDBACK FROM feedback GROUP BY improved;
+----------+----------------+
| improved | TOTAL_FEEDBACK |
+----------+----------------+
|        1 |             70 |
|        0 |             30 |
+----------+----------------+


7) As Per Month Revenue :-

mysql> SELECT DATE_FORMAT(session_date,'%y-%m') AS MONTH,SUM(session_fee)AS REVENUE FROM sessions GROUP BY MONTH ORDER BY REVENUE DESC;
+-------+----------+
| MONTH | REVENUE  |
+-------+----------+
| 25-09 | 13981.00 |
| 25-04 |  8246.00 |
| 25-07 |  8153.00 |
| 25-02 |  7378.00 |
| 25-06 |  7037.00 |
| 25-05 |  6882.00 |
| 25-08 |  6789.00 |
| 25-01 |  6169.00 |
| 25-03 |  6107.00 |
| 24-12 |   620.00 |
+-------+----------+
10 rows in set (0.00 sec)


8) Top 10 Client Who Had invested For Mentoring :-

 SELECT u.name AS NAME,SUM(s.session_fee)AS TOP_SPEND FROM users u JOIN sessions s ON u.user_id=s.user_id GROUP BY NAME ORDER BY TOP_SPEND DESC LIMIT 10;
+---------------+-----------+
| NAME          | TOP_SPEND |
+---------------+-----------+
| John Smith    |   1302.00 |
| Raj Malhotra  |   1240.00 |
| Ravi Kumar    |   1240.00 |
| Ananya Gupta  |   1240.00 |
| Nikhil Jain   |   1240.00 |
| Fatima Noor   |   1209.00 |
| Tara Banerjee |   1085.00 |
| Arun Prasad   |   1085.00 |
| David Johnson |   1085.00 |
| Ali Haider    |   1085.00 |
+---------------+-----------+


9) Top Mode Selected By Client For Conversation With Mentor :-

 SELECT mode,SUM(session_duration)AS DURATION FROM sessions GROUP BY mode ORDER BY DURATION DESC;
+-------+----------+
| mode  | DURATION |
+-------+----------+
| Chat  |      817 |
| Call  |      769 |
| Video |      716 |
+-------+----------+



10) As Per Mode,Duration And Revenue :-

SELECT mode,AVG(session_duration) AS DURATION,SUM(session_fee) AS REVENUE FROM sessions GROUP BY mode ORDER BY DURATION DESC;
+-------+----------+----------+
| mode  | DURATION | REVENUE  |
+-------+----------+----------+
| Chat  |  24.0294 | 25327.00 |
| Call  |  23.3030 | 23839.00 |
| Video |  21.6970 | 22196.00 |
+-------+----------+----------+


11) As Per Country, Problem And Revenue Earned :-

SELECT u.country,p.problem_type,SUM(s.session_fee) FROM users u JOIN sessions s ON u.user_id=s.user_id JOIN problem_types p ON s.problem_id=p.problem_id GROUP BY u.country, p.problem_type ORDER BY SUM(s.session_fee) DESC;
+----------+--------------+--------------------+
| country  | problem_type | SUM(s.session_fee) |
+----------+--------------+--------------------+
| India    | Self-esteem  |           13733.00 |
| India    | Career       |           11098.00 |
| India    | Health       |           10354.00 |
| India    | Relationship |            8122.00 |
| India    | Finance      |            4898.00 |
| US       | Finance      |            2852.00 |
| Other    | Relationship |            1798.00 |
| UK       | Career       |            1488.00 |
| UAE      | Finance      |            1457.00 |
| Other    | Finance      |            1178.00 |
| UAE      | Career       |            1116.00 |
| Pakistan | Health       |            1085.00 |
| UK       | Finance      |            1054.00 |
| Other    | Career       |             992.00 |
| UK       | Relationship |             930.00 |
| Qatar    | Health       |             930.00 |
| Qatar    | Career       |             775.00 |
| Canada   | Finance      |             682.00 |
| Egypt    | Finance      |             682.00 |
| russia   | Relationship |             682.00 |
| Canada   | Health       |             682.00 |
| Canada   | Self-esteem  |             682.00 |
| US       | Health       |             620.00 |
| Other    | Health       |             558.00 |
| UAE      | Self-esteem  |             558.00 |
| UK       | Self-esteem  |             558.00 |
| UAE      | Relationship |             496.00 |
| UK       | Health       |             465.00 |
| US       | Self-esteem  |             465.00 |
| Qatar    | Self-esteem  |             372.00 |
+----------+--------------+--------------------+
30 rows in set (0.00 sec)


12) Top Country Earnings :-

SELECT u.country,SUM(s.session_fee) FROM users u JOIN sessions s ON u.user_id=s.user_id JOIN problem_types p ON s.problem_id=p.problem_id GROUP BY u.country ORDER BY SUM(s.session_fee) DESC;
+----------+--------------------+
| country  | SUM(s.session_fee) |
+----------+--------------------+
| India    |           48205.00 |
| Other    |            4526.00 |
| UK       |            4495.00 |
| US       |            3937.00 |
| UAE      |            3627.00 |
| Qatar    |            2077.00 |
| Canada   |            2046.00 |
| Pakistan |            1085.00 |
| russia   |             682.00 |
| Egypt    |             682.00 |
+----------+--------------------+
10 rows in set (0.01 sec)


