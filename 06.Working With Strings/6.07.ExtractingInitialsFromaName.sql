SELECT 
    CASE
        WHEN cnt = 2 THEN
            TRIM(TRAILING '.' FROM 
            CONCAT_WS('.',
            SUBSTR(SUBSTRING_INDEX(name, ' ', 1), 1, 1),
            SUBSTR(name,
                LENGTH(SUBSTRING_INDEX(name, ' ', 1)) + 2, 1),
            SUBSTR(SUBSTRING_INDEX(name, ' ', -1), 1, 1),
            '.'))
        ELSE
            TRIM(TRAILING '.' FROM
            CONCAT_WS('.',
            SUBSTR(SUBSTRING_INDEX(name, ' ', 1), 1, 1),
            SUBSTR(SUBSTRING_INDEX(name, ' ', -1), 1, 1)
            ))
    END AS initials
FROM (
    SELECT name, LENGTH(name) - LENGTH(REPLACE(name, ' ', '')) AS cnt
    FROM (
        SELECT REPLACE('Stewie Griffin', '.', '') AS name FROM T1
    ) AS X
) AS Y;
