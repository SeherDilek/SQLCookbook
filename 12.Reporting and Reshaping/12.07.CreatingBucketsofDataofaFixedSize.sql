SELECT CEIL(ROW_NUMBER() OVER (ORDER BY empno / 5.0)) grp,
       empno,
       ename
FROM EMP;