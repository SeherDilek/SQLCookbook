SELECT mnth, mnth / 12
FROM (
    SELECT (YEAR(max_hd) - YEAR(min_hd)) * 12 +
            (MONTH(max_hd) - MONTH(min_hd)) as mnth
    FROM (
        SELECT MIN(hiredate) AS min_hd, MAX(hiredate) AS max_hd
        FROM EMP
    ) x
) y;