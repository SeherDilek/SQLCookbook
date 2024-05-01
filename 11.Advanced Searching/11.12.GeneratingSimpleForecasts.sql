WITH RECURSIVE nrows(n) AS (
    SELECT 1 FROM T1
    UNION ALL
    SELECT n + 1 FROM nrows WHERE n + 1 <= 3
)
SELECT id,
       order_date,
       process_date,
       CASE 
        WHEN nrows.n >=2 THEN process_date + 1
        ELSE NULL
       END AS verified,
       CASE 
        WHEN nrows.n = 3 THEN process_date + 2
        ELSE NULL
       END AS shipped
FROM (
    SELECT nrows.n id,
        CURRENT_DATE + nrows.n AS order_date,
        CURRENT_DATE + nrows.n AS process_date
    FROM nrows
) orders, nrows
ORDER BY 1;