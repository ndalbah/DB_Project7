-- connect to SQL PLUS
connect sys/sys as sysdba

-- Drop user
DROP USER c##nora03 CASCADE;

-- Create user
CREATE USER c##nora03 IDENTIFIED BY 123;

-- Grant access to resources
GRANT connect, resource, create view TO c##nora03;

-- Provide space for user
ALTER USER c##nora03 QUOTA 100M ON users;

-- Connect to user
connect c##nora03/123;

-- Create spool file
SPOOL C:\L7Q2\L7Q2.txt

-- run script 7software
@ C:\L7Q2\7Northwoods.sql

-- create view "student_faculty_1"
CREATE OR REPLACE VIEW student_faculty_1 AS SELECT f_id, s_last, s_first, s_dob FROM student WHERE f_id IN (1,2) WITH CHECK OPTION;

SELECT*FROM student_faculty_1;

UPDATE student_faculty_1 SET f_id = 3 WHERE s_last = 'Umato' AND s_first = 'Brian';

-- save spool
SPOOL OFF;