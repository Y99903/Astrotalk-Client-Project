Astrotalk Client Project (SQL + Analytics + Tableau)

Project Overview
This project is a *SQL-based case study* simulating an *Astrology Mentorship Platform (Astrotalk)* where clients connect with mentors for guidance on different life problems such as relationships, career, finance, health, and self-esteem.  
The database models users, their sessions with mentors, problem categories, and feedback. Queries are designed to analyze *business insights*, such as revenue, top clients, ratings, and country-wise performance.  

---

Tech Stack
•⁠  ⁠*Database*: MySQL  
•⁠  ⁠*Data Analysis*: SQL Queries  
•⁠  ⁠*Documentation*: Markdown  

---

Project Structure
•⁠  ⁠⁠ 01_create_tables.sql ⁠ → Contains SQL scripts to create database tables (⁠ users ⁠, ⁠ problem_types ⁠, ⁠ sessions ⁠, ⁠ feedback ⁠).  
•⁠  ⁠⁠ 02_insert_data.sql ⁠ → Contains insertion scripts for each table (100+ sample records).  
•⁠  ⁠⁠ 03_queries.sql ⁠ → Collection of analytical SQL queries for insights.  
•⁠  ⁠⁠ README.md ⁠ → Project description and documentation.  

---

 Database Schema
1. users  
Stores client details  
•⁠  ⁠user_id (PK)  
•⁠  ⁠name  
•⁠  ⁠age  
•⁠  ⁠gender  
•⁠  ⁠location  
•⁠  ⁠registered_date  

 2. problem_types  
Defines problem categories  
•⁠  ⁠problem_id (PK)  
•⁠  ⁠problem_type  
•⁠  ⁠description  

3. sessions  
Logs client sessions  
•⁠  ⁠session_id (PK)  
•⁠  ⁠user_id (FK)  
•⁠  ⁠problem_id (FK)  
•⁠  ⁠session_date  
•⁠  ⁠session_duration  
•⁠  ⁠mode (Chat/Call/Video)  
•⁠  ⁠price_per_minute  
•⁠  ⁠session_fee  

4. feedback  
Collects client feedback  
•⁠  ⁠feedback_id (PK)  
•⁠  ⁠session_id (FK)  
•⁠  ⁠rating (1–5)  
•⁠  ⁠comments  
•⁠  ⁠improved (boolean)  

---

Key Features / Queries
1.⁠ ⁠*Counts*: Total users, sessions, problems, and feedback.  
2.⁠ ⁠*Revenue Analysis*:  
   - Total earnings  
   - Revenue by month  
   - Revenue by problem type  
   - Revenue by country  
3.⁠ ⁠*Client Insights*:  
   - Top 10 highest-paying clients  
   - Most chosen session mode  
   - Average session duration  
4.⁠ ⁠*Feedback Analysis*:  
   - Average rating  
   - Ratings by problem type  
   - Percentage of improved clients  

---

Sample Business Insights
•⁠  *Total Revenue:* ₹71,362 from sessions  
•⁠ *Top Problem Category Revenue:* Self-esteem issues generated the highest revenue  
•⁠ *Average Rating:* 3.96 out of 5  
•⁠ *Most Preferred Mode:* Chat sessions had the highest duration overall  
• *Top Spending Client:* John Smith invested ₹1,302  
•⁠ *Top Country:* India generated the maximum revenue of ₹48,205  

Tableau For Visualisation

Link:-
https://public.tableau.com/views/ASTROTALKCLIENTDASHBOARDUSINGSQLTABLEAU/ASTROTALK?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
