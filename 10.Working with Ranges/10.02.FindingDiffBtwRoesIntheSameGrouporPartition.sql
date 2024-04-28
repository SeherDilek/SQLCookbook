WITH next_sal_tab (deptno, ename, sal, hiredate, next_sal)
AS (
    SELECT deptno, ename, sal, hiredate,
        LEAD(sal) OVER (PARTITION BY deptno ORDER BY hiredate) AS next_sal
    FROM EMP
)
SELECT deptno, ename, sal, hiredate, COALESCE(CAST(sal - next_sal AS char), 'N/A') AS diff
FROM next_sal_tab;