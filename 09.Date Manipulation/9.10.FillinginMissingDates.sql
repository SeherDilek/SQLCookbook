WITH recursive X(start_date, end_date)
AS (
    SELECT DATE_ADD(MIN(hiredate), INTERVAL DAYOFYEAR(MIN(hiredate)) + 1 DAY) start_date,
           DATE_ADD(MAX(hiredate), INTERVAL DAYOFYEAR(MAX(hiredate)) + 1 DAY) end_date
    FROM EMP
    UNION ALL
    SELECT DATE_ADD(start_date, INTERVAL 1 MONTH),
           end_date
    FROM X
    WHERE DATE_ADD(start_date, INTERVAL 1 MONTH) < end_date
)

SELECT X.start_date mth, COUNT(e.hiredate) num_hired
FROM X LEFT JOIN EMP e
ON (EXTRACT(year_month FROM start_date) =
    EXTRACT(year_month FROM e.hiredate))
GROUP BY X.start_date
ORDER BY 1;