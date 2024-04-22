DELETE FROM EMP e
WHERE NOT EXISTS (
    SELECT * FROM DEPT d
    WHERE d.deptno = e.deptno
);