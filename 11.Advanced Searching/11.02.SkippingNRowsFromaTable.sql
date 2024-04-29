SELECT ename
FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY ename) rn,
           ename
    FROM EMP
) X
WHERE rn % 2 = 1;