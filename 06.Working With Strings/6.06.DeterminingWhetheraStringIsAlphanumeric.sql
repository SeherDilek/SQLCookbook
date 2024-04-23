SELECT data
FROM
(
    SELECT ename COLLATE utf8mb4_general_ci AS data
    FROM EMP
    WHERE deptno = 10
    UNION ALL
    SELECT CONCAT(ename, ', $', CAST(sal AS CHAR(4)), '.00') COLLATE utf8mb4_general_ci AS data
    FROM EMP
    WHERE deptno = 20
    UNION ALL
    SELECT CONCAT(ename, CAST(deptno AS CHAR(4))) COLLATE utf8mb4_general_ci AS data
    FROM EMP
    WHERE deptno = 30
) X
WHERE data REGEXP '[^0-9a-zA-Z]' = 0;


