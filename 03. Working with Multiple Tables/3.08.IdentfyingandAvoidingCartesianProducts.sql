SELECT e.ename, d.loc
FROM EMP e
JOIN DEPT d ON e.deptno = d.deptno
WHERE e.deptno = 10;


/* The following will return incorrect result,
we can't select only the employees in deptno 10
using the following query:

Because in the query there is no filter for the DEPT
table and the EMP table is filtered out with e.deptno = 10
We have 3 rows coming from EMP table and 4 rows from DEPT
table and the result of cartesian product will be 12 rows
of the two tables. (3 * 4 = 12)

SELECT e.ename, d.loc
FROM EMP e, DEPT d
WHERE e.deptno = 10;
*/