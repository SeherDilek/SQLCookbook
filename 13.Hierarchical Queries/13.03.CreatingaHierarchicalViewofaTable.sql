WITH RECURSIVE X (ename, empno)
AS (
    SELECT CAST(ename AS CHAR(100)), empno
    FROM EMP
    WHERE mgr IS NULL
    UNION ALL
    SELECT CAST(CONCAT(X.ename, '-', e.ename) AS CHAR(100)),
           e.empno
    FROM EMP e, X
    WHERE e.mgr = X.empno
)

SELECT ename AS emp_tree
FROM X
ORDER BY 1;