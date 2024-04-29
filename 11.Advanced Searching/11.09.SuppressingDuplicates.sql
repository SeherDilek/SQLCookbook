SELECT job
FROM (
    SELECT job,
           ROW_NUMBER() OVER (PARTITION BY job ORDER BY job) rn
    FROM EMP
) X
WHERE rn = 1;

/* ANOTHER WAY
SELECT DISTINCT job
FROM EMP;
*/