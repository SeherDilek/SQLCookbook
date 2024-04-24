SELECT ename, hiredate, nextHireDate,
    DATEDIFF(nextHireDate, hiredate) AS diff
FROM
(
    SELECT ename, hiredate,
           LEAD(hiredate) OVER (ORDER BY hiredate) AS nextHireDate
    FROM EMP
    WHERE deptno = 10
) X;