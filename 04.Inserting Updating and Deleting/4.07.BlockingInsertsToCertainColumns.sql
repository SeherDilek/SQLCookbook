/*
To prevent users from changing specific columns in the table

First create a view:
*/
CREATE VIEW NEW_EMPS AS
SELECT empno, ename, job
FROM EMP;


/*
Grant access to this view to those users and programs allowed to populate
only three fields in the view.

Do not grabt those users insert access to the EMP table
*/