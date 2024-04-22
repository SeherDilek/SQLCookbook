UPDATE EMP
    SET sal = sal * 1.10
WHERE deptno = 20;

SELECT deptno, ename, sal
FROM EMP
WHERE deptno = 20
ORDER BY deptno, sal;