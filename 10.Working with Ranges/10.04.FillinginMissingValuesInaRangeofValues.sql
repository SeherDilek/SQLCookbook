SELECT y.yr, COALESCE(x.cnt, 0) AS cnt
FROM (
    SELECT min_year - MOD(min_year, 10) + rn AS yr
    FROM (
        SELECT (SELECT MIN(YEAR(hiredate)) FROM EMP) AS min_year,
        id - 1 AS rn
        FROM T10
    ) a
) y
LEFT JOIN (
    SELECT YEAR(hiredate) AS yr, COUNT(*) AS cnt
    FROM EMP
    GROUP BY YEAR(hiredate)
) x
ON y.yr = x.yr;