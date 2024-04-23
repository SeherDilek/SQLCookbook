SELECT AVG(sal)
FROM EMP;

/*
To compute for each department:
*/
SELECT AVG(sal)
FROM EMP
GROUP BY deptno;