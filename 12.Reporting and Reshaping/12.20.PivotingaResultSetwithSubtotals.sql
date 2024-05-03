SELECT mgr,
       SUM(CASE deptno WHEN 10 THEN sal ELSE 0 END) dept10,
       SUM(CASE deptno WHEN 20 THEN sal ELSE 0 END) dept20,
       SUM(CASE deptno WHEN 20 THEN sal ELSE 0 END) dept20,
       SUM(CASE flag WHEN '11' THEN sal ELSE NULL END) total
FROM (
    SELECT deptno, mgr, SUM(sal), sal,
        CONCAT(CAST(GROUPING(deptno) AS CHAR(1)),
                CAST(GROUPING(mgr) AS CHAR(1))) flag
    FROM EMP
    WHERE mgr IS NOT NULL
    GROUP BY deptno, mgr WITH ROLLUP
) X
GROUP BY mgr;