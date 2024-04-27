SELECT DATE_ADD(
    DATE_ADD(q_end, INTERVAL 1 - DAY(q_end) DAY), INTERVAL - 2 MONTH) q_start,
    q_end
FROM (
    SELECT LAST_DAY(STR_TO_DATE(CONCAT(SUBSTR(yrq, 1, 4), ',', MOD(yrq, 10) * 3), '%Y,%m')) q_end
    FROM
    (
        SELECT 20051 AS yrq
        UNION ALL
        SELECT 20052 AS yrq
        UNION ALL
        SELECT 20053 AS yrq
        UNION ALL
        SELECT 20054 AS yrq
    ) X
) Y;
