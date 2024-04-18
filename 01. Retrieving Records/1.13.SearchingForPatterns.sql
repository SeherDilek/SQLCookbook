SELECT ename, job
FROM EMP
WHERE deptno IN (10, 20) AND (ename LIKE '%I%' or job like '%ER');