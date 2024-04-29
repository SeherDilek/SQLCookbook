SELECT ename, sal
FROM (
    SELECT ename, sal, DENSE_RANK() OVER (ORDER BY sal DESC) dr
    FROM EMP
) X
WHERE dr <= 5;