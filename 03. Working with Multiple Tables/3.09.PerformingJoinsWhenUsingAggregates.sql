SELECT deptno, SUM(DISTINCT sal) AS TOTAL_SAL, SUM(bonus) AS TOTAL_BONUS
FROM (
SELECT e.sal, e.deptno, e.sal * CASE
    WHEN eb.type = 1 THEN 0.1
    WHEN eb.type = 2 THEN 0.2
    ELSE 0.3
    END AS BONUS
FROM EMP e, EMP_BONUS2 eb
WHERE e.empno = eb.empno AND e.deptno = 10
) AS X
GROUP BY deptno;