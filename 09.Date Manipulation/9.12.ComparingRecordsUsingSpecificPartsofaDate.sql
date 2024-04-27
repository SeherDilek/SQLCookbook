SELECT CONCAT(a.ename, ' was hired on the same month and weekday as ',
            b.ename) msg
FROM EMP a, EMP b
WHERE DATE_FORMAT(a.hiredate, '%w%M') =
      DATE_FORMAT(b.hiredate, '%w%M')
      AND a.empno < b.empno
ORDER BY a.ename;