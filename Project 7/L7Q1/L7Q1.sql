-- connect to SQL PLUS
connect sys/sys as sysdba

-- Drop user
DROP USER c##nora04 CASCADE;

-- Create user
CREATE USER c##nora04 IDENTIFIED BY 123;

-- Grant access to resources
GRANT connect, resource, create view TO c##nora04;

-- Provide space for user
ALTER USER c##nora04 QUOTA 100M ON users;

-- Connect to user
connect c##nora04/123;

-- Create spool file
SPOOL C:\L7Q1\L7Q1.txt

-- run script 7software
@ C:\L7Q1\7software.sql

-- create view to display info
CREATE OR REPLACE VIEW project_info AS SELECT project_name, c_first, c_last FROM project, consultant, project_consultant WHERE consultant.c_id = project_consultant.c_id AND project.p_id = project_consultant.p_id WITH READ ONLY;

SELECT*FROM project_info;

-- save spool
SPOOL OFF;