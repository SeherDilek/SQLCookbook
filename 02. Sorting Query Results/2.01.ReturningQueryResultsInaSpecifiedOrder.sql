SELECT ename, job, sal
FROM EMP
WHERE deptno = 10
ORDER BY sal;

/*
For descending order:
SELECT ename, job, sal
FROM EMP
WHERE deptno = 10
ORDER BY sal DESC;

the following is also possible:
SELECT ename, job, sal
FROM EMP
WHERE deptno = 10
ORDER BY 3;
*/