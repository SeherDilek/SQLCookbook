SELECT ename, comm
FROM EMP
WHERE COALESCE(comm, 0) < (SELECT comm
                            FROM EMP WHERE ename = 'WARD');