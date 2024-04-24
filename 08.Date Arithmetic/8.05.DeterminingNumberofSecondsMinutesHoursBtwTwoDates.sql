SELECT dy * 24 AS hr, dy * 24 * 60 AS min, dy * 24* 60 * 60 AS sec
FROM (
    SELECT DATEDIFF(MAX(CASE WHEN ename = 'WARD' THEN hiredate END),
            MAX(CASE WHEN ename = 'ALLEN' THEN hiredate END)) AS dy
    FROM EMP
) X;