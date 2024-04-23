SELECT MIN(sal) AS min_sal, max(sal) AS max_sal
FROM EMP;

SELECT MIN(sal) AS min_sal, max(sal) AS max_sal
FROM EMP
GROUP BY deptno;

