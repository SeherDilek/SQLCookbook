WITH RECURSIVE X(dy, dm, mth, dw, wk) AS (
    SELECT 
        dy,
        DAY(dy) dm,
        MONTH(dy) mth,
        DAYOFWEEK(dy) dw,
        CASE 
            WHEN DAYOFWEEK(dy) = 1
                THEN WEEK(dy) - 1
            ELSE WEEK(dy)
        END wk
FROM (
    SELECT DATE_ADD(CURRENT_DATE, INTERVAL 1 - DAY(CURRENT_DATE) DAY) dy
    FROM T1
) X
UNION ALL
SELECT 
        DATE_ADD(dy, INTERVAL 1 DAY),
        DAY(DATE_ADD(dy,INTERVAL 1 DAY)),
        MONTH(DATE_ADD(dy, INTERVAL 1 DAY)),
        DAYOFWEEK(DATE_ADD(dy, INTERVAL 1 DAY)),
        CASE 
            WHEN DAYOFWEEK(DATE_ADD(dy, INTERVAL 1 DAY)) = 1 THEN WEEK(DATE_ADD(dy, INTERVAL 1 DAY)) - 1
            ELSE WEEK(DATE_ADD(dy, INTERVAL 1 DAY))
        END
    FROM 
        X
    WHERE 
        MONTH(DATE_ADD(dy, INTERVAL 1 DAY)) = mth
)
SELECT 
    MAX(CASE dw WHEN 2 THEN dm END) AS Mo,
    MAX(CASE dw WHEN 3 THEN dm END) AS Tu,
    MAX(CASE dw WHEN 4 THEN dm END) AS We,
    MAX(CASE dw WHEN 5 THEN dm END) AS Th,
    MAX(CASE dw WHEN 6 THEN dm END) AS Fr,
    MAX(CASE dw WHEN 7 THEN dm END) AS Sa,
    MAX(CASE dw WHEN 1 THEN dm END) AS Su
FROM X
GROUP BY wk
ORDER BY wk;