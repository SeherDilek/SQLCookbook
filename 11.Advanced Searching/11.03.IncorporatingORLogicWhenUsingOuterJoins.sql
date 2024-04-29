SELECT e.ename, d.deptno, d.dname, d.loc
FROM DEPT d LEFT JOIN EMP e
ON d.deptno = e.deptno
    AND (e.deptno = 10 OR e.deptno = 20)
ORDER BY d.deptno