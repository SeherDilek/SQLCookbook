SELECT data
FROM
(
    SELECT CONCAT(e.ename, ' ', CAST(e.empno AS CHAR(4)), ' ', d.dname) AS data
    FROM EMP e, DEPT d
    WHERE e.deptno = d.deptno
) X
ORDER BY CAST(REGEXP_SUBSTR(data COLLATE utf8mb4_unicode_ci, '[0-9]+') AS UNSIGNED);
