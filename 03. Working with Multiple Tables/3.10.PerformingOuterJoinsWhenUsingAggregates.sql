SELECT deptno, SUM(DISTINCT sal) AS TOTAL_SAL, SUM(bonus) AS TOTAL_BONUS
FROM (
SELECT e.sal, e.deptno, e.sal * CASE
    WHEN eb.type IS NULL THEN 0
    WHEN eb.type = 1 THEN 0.1
    WHEN eb.type = 2 THEN 0.2
    ELSE 0.3
    END AS BONUS
FROM EMP e
LEFT OUTER JOIN EMP_BONUS3 eb
ON (e.empno = eb.empno)
WHERE e.deptno = 10
) AS X
GROUP BY deptno;