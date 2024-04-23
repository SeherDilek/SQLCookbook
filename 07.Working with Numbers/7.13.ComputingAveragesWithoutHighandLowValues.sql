/*
If there is more than one person having max sal or min salary
then, they will all be excluded from the average if the aim is exclude
only single instance of the high and low values, use the second query.
*/

SELECT AVG(sal)
FROM EMP
WHERE sal NOT IN (
    (SELECT MAX(sal) FROM EMP),
    (SELECT MIN(sal) FROM EMP)
);

SELECT (SUM(sal, 0) - MIN(sal) - MAX(sal)) / (COUNT(*) - 2)
FROM EMP;