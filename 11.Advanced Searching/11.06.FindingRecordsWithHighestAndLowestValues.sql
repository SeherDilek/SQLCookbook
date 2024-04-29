SELECT ename
FROM (
    SELECT ename, sal,
           MIN(sal) OVER() min_sal,
           MAX(sal) OVER() max_sal
    FROM EMP
) X
WHERE sal IN (min_sal, max_sal);
