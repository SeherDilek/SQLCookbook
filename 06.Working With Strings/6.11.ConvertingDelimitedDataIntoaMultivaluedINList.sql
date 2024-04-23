SELECT ename, sal, deptno
FROM EMP
WHERE empno IN (
    SELECT SUBSTRING_INDEX(
        SUBSTRING_INDEX(list.vals, ',', iter.pos), ',', -1) AS empno
        FROM (SELECT id pos FROM T10) AS iter,
        (SELECT '7654,7698,7782,7788' AS vals FROM T1) list
    WHERE iter.pos <= (LENGTH(list.vals) - LENGTH(REPLACE(list.vals, ',', ''))) + 1
);
