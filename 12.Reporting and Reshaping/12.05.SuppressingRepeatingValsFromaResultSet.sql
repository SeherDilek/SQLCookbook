SELECT
    CASE
        WHEN LAG(deptno) OVER (ORDER BY deptno) = deptno THEN NULL
        ELSE deptno
    END deptno,
    ename
FROM EMP;
