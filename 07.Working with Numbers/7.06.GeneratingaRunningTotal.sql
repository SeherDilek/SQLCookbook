SELECT ename, sal,
    SUM(sal) OVER (ORDER BY sal, empno) AS running_total
FROM EMP
ORDER BY sal;