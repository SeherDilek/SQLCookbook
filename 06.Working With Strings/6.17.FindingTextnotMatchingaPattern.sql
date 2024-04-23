SELECT emp_id, text
FROM (
    (SELECT 7369 AS emp_id, '126 Varnum, Edmore MI 48829, 989 313-5351' AS text)
    UNION ALL
    (SELECT 7844, '989-387-5359')
    UNION ALL
    (SELECT 9999, '906-387-1698, 313-535.8886')
) AS employee_comment
WHERE REGEXP_LIKE(text, '[0-9]{3}[-. ][0-9]{3}[-. ][0-9]{4}')
    AND REGEXP_LIKE(REGEXP_REPLACE(text,
    '[0-9]{3}([-. ])[0-9]{3}\1[0-9]{4}','***'),'[0-9]{3}[-. ][0-9]{3}[-. ][0-9]{4}');