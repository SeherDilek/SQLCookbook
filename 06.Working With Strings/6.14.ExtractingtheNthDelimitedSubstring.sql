SELECT name
FROM (
    SELECT iter.pos,
        SUBSTRING_INDEX(
            SUBSTRING_INDEX(src.name, ',', iter.pos), ',', -1) name
            FROM
            (
                SELECT 'mo,larry,curly' AS name FROM T1
                UNION ALL
                SELECT 'tina,gina,jaunita,regine,leena' AS name FROM T1
            ) AS src,
            (SELECT id AS pos FROM T10) iter
            WHERE iter.pos <= LENGTH(src.name) - LENGTH(REPLACE(src.name, ',', ''))
        ) X
WHERE pos = 2;