SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(y.ip, '.', 1), '.', -1) a,
       SUBSTRING_INDEX(SUBSTRING_INDEX(y.ip, '.', 2), '.', -1) b,
       SUBSTRING_INDEX(SUBSTRING_INDEX(y.ip, '.', 3), '.', -1) c,
       SUBSTRING_INDEX(SUBSTRING_INDEX(y.ip, '.', 4), '.', -1) d
FROM (SELECT '92.111.0.2' AS ip FROM T1) AS y;
