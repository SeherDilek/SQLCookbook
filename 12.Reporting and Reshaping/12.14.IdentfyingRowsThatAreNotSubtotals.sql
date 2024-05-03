SELECT *
FROM (
    SELECT deptno, job,
        SUM(sal) AS sal
    FROM EMP
    GROUP BY deptno, job
    UNION ALL
    SELECT NULL, job,
        SUM(sal) AS sal
    FROM EMP
    GROUP BY job
    UNION ALL
    SELECT deptno, NULL,
        SUM(sal) AS sal
    FROM EMP
    GROUP BY deptno
    UNION ALL
    SELECT NULL, NULL,
        SUM(sal) AS sal
    FROM EMP
) X
ORDER BY deptno, job;