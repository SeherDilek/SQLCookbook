SELECT deptno
FROM DEPT d
WHERE NOT EXISTS (
    SELECT 1
     FROM EMP e
    WHERE d.deptno = e.deptno);

/*SELECT deptno
FROM DEPT
EXCEPT
SELECT deptno
FROM EMP;*/