SELECT REGEXP_REPLACE(data, '[0-9]', '') AS ename,
    REGEXP_REPLACE(data, '[A-Z]', '') AS sal
FROM
(
    SELECT concat(ename, sal) AS DATA
    FROM EMP
) X