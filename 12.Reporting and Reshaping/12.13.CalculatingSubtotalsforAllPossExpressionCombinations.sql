SELECT deptno, job,
       'TOTAL BY DEPT AND JOB' AS category,
       SUM(sal) AS sal
FROM EMP
GROUP BY deptno, job
UNION ALL
SELECT NULL, job,
       'TOTAL BY JOB' AS category,
       SUM(sal) AS sal
FROM EMP
GROUP BY job
UNION ALL
SELECT deptno, NULL,
       'TOTAL BY DEPTNO' AS category,
       SUM(sal) AS sal
FROM EMP
GROUP BY deptno
UNION ALL
SELECT NULL, NULL,
       'GRAND TOTAL FOR TABLE' AS category,
       SUM(sal) AS sal
FROM EMP;