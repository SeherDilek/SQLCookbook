SELECT deptno,
       REPEAT('*', COUNT(*)) cnt
FROM EMP
GROUP BY deptno
ORDER BY deptno;