SELECT ename, sal,
       COALESCE(LEAD(sal) OVER (ORDER BY sal), MIN(sal) OVER()) forward,
       COALESCE(LAG(sal) OVER (ORDER BY sal), MAX(sal) OVER()) rewind
FROM EMP;