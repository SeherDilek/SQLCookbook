SELECT REGEXP_REPLACE(mixed, '[a-zA-Z]', '')
 FROM (
    SELECT REPLACE(mixed, ' ', '') AS mixed
    FROM (
        SELECT CONCAT(SUBSTR(ename, 1, 2),
            CAST(deptno AS CHAR(4)),
            SUBSTR(ename, 3, 2)) COLLATE utf8mb4_general_ci AS mixed
        FROM EMP
        WHERE deptno = 10
        UNION ALL
        SELECT CAST(empno AS CHAR(4)) COLLATE utf8mb4_general_ci AS mixed
        FROM EMP
        WHERE deptno = 20
        UNION ALL
        SELECT ename COLLATE utf8mb4_general_ci AS mixed
        FROM EMP
        WHERE deptno = 30
    ) X
) Y;


