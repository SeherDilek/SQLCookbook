SELECT deptno, ename, sal, hiredate,
       MAX(latest_sal) OVER (PARTITION BY deptno) latest_sal
FROM (
    SELECT deptno, ename, sal, hiredate,
           CASE
                WHEN hiredate = MAX(hiredate) OVER (PARTITION BY deptno) THEN sal
                ELSE 0
            END AS latest_sal
    FROM EMP
) X
ORDER BY 1, 4 DESC;