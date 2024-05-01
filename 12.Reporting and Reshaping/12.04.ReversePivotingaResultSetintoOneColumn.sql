WITH RECURSIVE four_rows(id)
AS (
    SELECT 1
    UNION ALL
    SELECT id + 1
    FROM four_rows
    WHERE id < 4
),
x_tab (ename, job, sal, rn)
AS (
    SELECT e.ename, e.job, e.sal,
        ROW_NUMBER() OVER (PARTITION BY e.empno ORDER BY e.empno)
    FROM EMP e
    JOIN four_rows ON 1 = 1
)

SELECT
    CASE 
        WHEN rn = 1 THEN ename
        WHEN rn = 2 THEN job
        WHEN rn = 3 THEN CAST(sal AS CHAR(4))
    END AS emps
FROM x_tab;
