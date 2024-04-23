SELECT ename AS old_name,
    GROUP_CONCAT(c ORDER BY c SEPARATOR '') AS new_name
FROM (
    SELECT ename, SUBSTR(a.ename, iter.pos, 1) c
    FROM EMP a,
    (SELECT id AS pos FROM T10) iter
    WHERE iter.pos <= LENGTH(a.ename)
) X
GROUP BY ename;