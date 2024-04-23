SELECT AVG(COALESCE(comm, 0)) AS avg_comm
FROM EMP
WHERE deptno = 30;

/*
The NULL values aren't included in the following result
So, the result is incorrect use the above query
*/
SELECT AVG(comm) AS avg_comm
FROM EMP
WHERE deptno = 30;