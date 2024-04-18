/*
All possible combiations of rows in emp and dept tables
*/
SELECT e.ename, d.loc,
    e.deptno AS emp_deptno,
    d.deptno AS dept_deptno
FROM EMP e, DEPT d
WHERE e.deptno = 10;

/*
Restrict the result set such that the only rows returned are the ones
where emp.deptno = dept.deptno
*/
SELECT e.ename, d.loc,
    e.deptno AS emp_deptno,
    d.deptno AS dept_deptno
FROM EMP e, DEPT d
WHERE e.deptno = d.deptno
    AND e.deptno = 10;

/*
It is also possible to use JOIN
*/
SELECT e.ename, d.loc
FROM EMP e
INNER JOIN DEPT d ON (e.deptno = d.deptno)
    AND e.deptno = 10;