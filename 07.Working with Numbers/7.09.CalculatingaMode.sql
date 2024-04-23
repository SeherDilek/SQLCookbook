SELECT sal
FROM (
    SELECT sal, DENSE_RANK() OVER (ORDER BY cnt DESC) AS rnk
    FROM (
        SELECT sal, COUNT(*) AS cnt
        FROM EMP
        WHERE deptno = 20
        GROUP BY sal
    ) x
) y;