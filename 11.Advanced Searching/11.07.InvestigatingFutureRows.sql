SELECT ename, sal, hiredate
FROM
(
    SELECT ename, sal, hiredate,
        LEAD(sal) OVER (ORDER BY hiredate) next_sal
    FROM EMP
) X
WHERE sal < next_sal;