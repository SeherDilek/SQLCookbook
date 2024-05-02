SELECT MAX(d10), MAX(d20), MAX(d30)
FROM (
    SELECT ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY empno) rn,
           CASE WHEN deptno = 10 THEN '*' ELSE NULL END d10,
           CASE WHEN deptno = 20 THEN '*' ELSE NULL END d20,
           CASE WHEN deptno = 30 THEN '*' ELSE NULL END d30
    FROM EMP
) X
GROUP BY rn
ORDER BY 1, 2, 3;