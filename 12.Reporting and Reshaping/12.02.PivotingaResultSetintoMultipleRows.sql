SELECT job,
       MAX(CASE WHEN job='CLERK' THEN ename ELSE NULL END) AS clerks,
       MAX(CASE WHEN job='ANALYST' THEN ename ELSE NULL END) AS analysts,
       MAX(CASE WHEN job='MANAGER' THEN ename ELSE NULL END) AS managers,
       MAX(CASE WHEN job='PRESIDENT' THEN ename ELSE NULL END) AS presidents,
       MAX(CASE WHEN job='SALESMAN' THEN ename ELSE NULL END) AS sales
FROM (
    SELECT job,
           ename,
           ROW_NUMBER() OVER (PARTITION BY job ORDER BY ename) rn
    FROM EMP
) X
GROUP BY rn;