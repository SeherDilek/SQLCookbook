SELECT ename
FROM EMP
ORDER BY RIGHT(ename, 2);



/*
OR DO THE FOLLOWING:
SELECT ename
FROM EMP
ORDER BY SUBSTR(ename, LENGTH(ename) - 1, 2);
*/
