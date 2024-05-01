SELECT d20_sal - d10_sal AS d20_10_diff,
       d20_sal - d30_sal AS d20_30_diff
FROM
(
    SELECT
        SUM(CASE WHEN deptno = 10 THEN sal ELSE 0 END) AS d10_sal,
        SUM(CASE WHEN deptno = 20 THEN sal ELSE 0 END) AS d20_sal,
        SUM(CASE WHEN deptno = 30 THEN sal ELSE 0 END) AS d30_sal
    FROM EMP
) X;