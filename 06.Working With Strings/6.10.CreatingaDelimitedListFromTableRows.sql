SELECT deptno,
    GROUP_CONCAT(ename ORDER BY empno SEPARATOR ',') AS emps
FROM EMP
GROUP BY deptno;
