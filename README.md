# Question 1
**SOFTWARE EXPERT APPLICATION** <br><br>
1. Create a user called nora04 with connect, resource, and CREATE VIEW privileges. <br>
2. Connect to the new user just created and run the script 7software. <br>
3. Create a view just to DISPLAY the name of the project and the name of the consultant who work for that
project.<br><br>
# Question 2 
**NORTHWOODS UNIVERSITY APPLICATION** <br><br>
1. Create a user called nora03 with connect, resource, and CREATE VIEW privileges.<br>
2. Connect to the new user just created and run the script 7northwoods<br>
3. Create a view called student_faculty_1 with column s_last, s_first, s_dob of all student advised by
faculty number 1 or faculty number 2. Make sure that the student will ALWAYS advised by either faculty
number 1 or faculty number 2. <br><br>
# Question 3
**CLEARWATER TRAIDER APPLICATION**<br><br>
1. Create a user called nora02 with connect, resource, and CREATE VIEW privileges. <br>
2. Connect to the new user just created and run the script 7clearwater<br>
3. Create the Entity Relationship Diagram for Clearwater traider application.<br><br>

We have not created the table Order_line_archive yet.<br><br>
The following is the logical design of table Order_line_archive:<br>
**ORDER_LINE_ARCHIVE(old-o-id, old-inv-id, old-ol-quantity)**<br><br>
Can you create a view base on table order_line_archive even if the table have not been created ?<br>
If yes, create a view called OLD_ORDER_DETAIL with columns old-o-id, old-inv-id, old-ol-quantity, order
date, method of payment, item description, customer last, and first name.
