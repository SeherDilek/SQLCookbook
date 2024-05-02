SELECT NTILE(4) OVER (ORDER BY empno) grp,
       empno,
       ename
FROM EMP;