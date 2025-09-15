{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 Helvetica-Bold;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs36 \cf0  
\f1\b \ul Astrotalk Client Project (SQL + Analytics + Tableau)
\f0\b0 \ulnone \

\fs24 \

\f1\b \ul Project Overview
\f0\b0 \ulnone \
This project is a *SQL-based case study* simulating an *Astrology Mentorship Platform (Astrotalk)* where clients connect with mentors for guidance on different life problems such as relationships, career, finance, health, and self-esteem.  \
The database models users, their sessions with mentors, problem categories, and feedback. Queries are designed to analyze *business insights*, such as revenue, top clients, ratings, and country-wise performance.  \
\
---\
\

\f1\b \ul Tech Stack
\f0\b0 \ulnone \
\'95\uc0\u8288   \u8288 *Database*: MySQL  \
\'95\uc0\u8288   \u8288 *Data Analysis*: SQL Queries  \
\'95\uc0\u8288   \u8288 *Documentation*: Markdown  \
\
---\
\

\f1\b \ul Project Structure
\f0\b0 \ulnone \
\'95\uc0\u8288   \u8288 \u8288 \u8239 01_create_tables.sql\u8239 \u8288  \u8594  Contains SQL scripts to create database tables (\u8288 \u8239 users\u8239 \u8288 , \u8288 \u8239 problem_types\u8239 \u8288 , \u8288 \u8239 sessions\u8239 \u8288 , \u8288 \u8239 feedback\u8239 \u8288 ).  \
\'95\uc0\u8288   \u8288 \u8288 \u8239 02_insert_data.sql\u8239 \u8288  \u8594  Contains insertion scripts for each table (100+ sample records).  \
\'95\uc0\u8288   \u8288 \u8288 \u8239 03_queries.sql\u8239 \u8288  \u8594  Collection of analytical SQL queries for insights.  \
\'95\uc0\u8288   \u8288 \u8288 \u8239 README.md\u8239 \u8288  \u8594  Project description and documentation.  \
\
---\
\

\f1\b \ul  Database Schema
\f0\b0 \ulnone \
1. users  \
Stores client details  \
\'95\uc0\u8288   \u8288 user_id (PK)  \
\'95\uc0\u8288   \u8288 name  \
\'95\uc0\u8288   \u8288 age  \
\'95\uc0\u8288   \u8288 gender  \
\'95\uc0\u8288   \u8288 location  \
\'95\uc0\u8288   \u8288 registered_date  \
\

\f1\b \ul  2. problem_types  
\f0\b0 \ulnone \
Defines problem categories  \
\'95\uc0\u8288   \u8288 problem_id (PK)  \
\'95\uc0\u8288   \u8288 problem_type  \
\'95\uc0\u8288   \u8288 description  \
\

\f1\b \ul 3. sessions  
\f0\b0 \ulnone \
Logs client sessions  \
\'95\uc0\u8288   \u8288 session_id (PK)  \
\'95\uc0\u8288   \u8288 user_id (FK)  \
\'95\uc0\u8288   \u8288 problem_id (FK)  \
\'95\uc0\u8288   \u8288 session_date  \
\'95\uc0\u8288   \u8288 session_duration  \
\'95\uc0\u8288   \u8288 mode (Chat/Call/Video)  \
\'95\uc0\u8288   \u8288 price_per_minute  \
\'95\uc0\u8288   \u8288 session_fee  \
\

\f1\b \ul 4. feedback  
\f0\b0 \ulnone \
Collects client feedback  \
\'95\uc0\u8288   \u8288 feedback_id (PK)  \
\'95\uc0\u8288   \u8288 session_id (FK)  \
\'95\uc0\u8288   \u8288 rating (1\'965)  \
\'95\uc0\u8288   \u8288 comments  \
\'95\uc0\u8288   \u8288 improved (boolean)  \
\
---\
\

\f1\b \ul Key Features / Queries
\f0\b0 \ulnone \
1.\uc0\u8288  \u8288 *Counts*: Total users, sessions, problems, and feedback.  \
2.\uc0\u8288  \u8288 *Revenue Analysis*:  \
   - Total earnings  \
   - Revenue by month  \
   - Revenue by problem type  \
   - Revenue by country  \
3.\uc0\u8288  \u8288 *Client Insights*:  \
   - Top 10 highest-paying clients  \
   - Most chosen session mode  \
   - Average session duration  \
4.\uc0\u8288  \u8288 *Feedback Analysis*:  \
   - Average rating  \
   - Ratings by problem type  \
   - Percentage of improved clients  \
\
---\
\

\f1\b \ul Sample Business Insights
\f0\b0 \ulnone \
\'95\uc0\u8288   *Total Revenue:* \u8377 71,362 from sessions  \
\'95\uc0\u8288  *Top Problem Category Revenue:* Self-esteem issues generated the highest revenue  \
\'95\uc0\u8288  *Average Rating:* 3.96 out of 5  \
\'95\uc0\u8288  *Most Preferred Mode:* Chat sessions had the highest duration overall  \
\'95 *Top Spending Client:* John Smith invested \uc0\u8377 1,302  \
\'95\uc0\u8288  *Top Country:* India generated the maximum revenue of \u8377 48,205  \
\

\f1\b \ul Tableau For Visualisation\
\
Link:-\
https://public.tableau.com/views/ASTROTALKCLIENTDASHBOARDUSINGSQLTABLEAU/ASTROTALK?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link}