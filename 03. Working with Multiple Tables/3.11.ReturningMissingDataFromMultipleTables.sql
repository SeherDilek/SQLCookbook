/*
FULL OUTER JOIN isn't available in MySQL,
Instead the LEFT and RIGHT OUTER JOIN s will
be UNION.
*/
SELECT d.deptno, d.dname, e.ename
FROM DEPT d
LEFT OUTER JOIN EMP e
ON (d.deptno = e.deptno)
UNION
SELECT d.deptno, d.dname, e.ename
FROM DEPT d
RIGHT OUTER JOIN EMP e
ON (d.deptno = e.deptno)
