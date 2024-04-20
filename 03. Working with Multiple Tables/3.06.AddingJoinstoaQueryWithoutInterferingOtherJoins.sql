SELECT e.ename, d.loc, eb.received
FROM EMP e
JOIN DEPT d ON e.deptno = d.deptno
LEFT JOIN EMP_BONUS eb ON e.empno = eb.empno
ORDER BY d.loc;