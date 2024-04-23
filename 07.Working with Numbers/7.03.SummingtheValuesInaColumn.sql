SELECT SUM(sal)
FROM EMP;

SELECT deptno, SUM(sal) as total_for_dept
FROM EMP
GROUP BY deptno;