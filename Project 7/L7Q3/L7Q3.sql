-- connect to SQL PLUS
connect sys/sys as sysdba

-- Drop user
DROP USER c##nora02 CASCADE;

-- Create user
CREATE USER c##nora02 IDENTIFIED BY 123;

-- Grant access to resources
GRANT connect, resource, create view TO c##nora02;

-- Provide space for user
ALTER USER c##nora02 QUOTA 100M ON users;

-- Connect to user
connect c##nora02/123;

-- Create spool file
SPOOL C:\L7Q3\L7Q3.txt

-- run script 7software
@ C:\L7Q3\7clearwater.sql

-- create view
CREATE OR REPLACE FORCE VIEW OLD_ORDER_DETAIL AS SELECT old_o_id, old_inv_id, old_ol_quantity, o_date, o_methpmt, item_desc, c_last, c_first FROM customer, orders, item, inventory, order_line, ORDER_LINE_ARCHIVE WHERE orders.c_id = customer.c_id AND ORDER_LINE_ARCHIVE.old_o_id = orders.o_id AND inventory.item_id = item.item_id AND ORDER_LINE_ARCHIVE.old_inv_id = inventory.inv_id AND ORDER_LINE_ARCHIVE.old_ol_quantity = order_line.ol_quantity;

DROP TABLE ORDER_LINE_ARCHIVE;

CREATE TABLE ORDER_LINE_ARCHIVE(old_o_id NUMBER, old_inv_id NUMBER, old_ol_quantity NUMBER, CONSTRAINT o_line_arch_oldoid_oldinvid_PK PRIMARY KEY(old_o_id,old_inv_id), CONSTRAINT o_line_arch_inv_id_FK1 FOREIGN KEY (old_inv_id) REFERENCES inventory(inv_id), CONSTRAINT o_line_arch_o_id_FK2 FOREIGN KEY(old_o_id) REFERENCES orders(o_id));

INSERT INTO ORDER_LINE_ARCHIVE VALUES (5, 8, 1);

SELECT * FROM ORDER_LINE_ARCHIVE;

-- save spool
SPOOL OFF;