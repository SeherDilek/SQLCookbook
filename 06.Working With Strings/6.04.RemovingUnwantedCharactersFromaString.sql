SELECT ename,
    REGEXP_REPLACE(ename, 'AEIOU', '') AS stripped1,
    sal,
    REGEXP_REPLACE(sal, '0', '') AS stripped2
FROM EMP;