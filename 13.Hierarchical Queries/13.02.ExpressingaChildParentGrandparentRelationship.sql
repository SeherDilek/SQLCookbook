WITH RECURSIVE X (tree, mgr, depth)
AS (
    SELECT CAST(ename AS CHAR(100)),
           mgr, 0
    FROM EMP
    WHERE ename = 'MILLER'
    UNION ALL
    SELECT CAST(CONCAT(X.tree, '--->', e.ename) AS CHAR(100)),
           e.mgr, X.depth + 1
    FROM EMP e, X
    WHERE X.mgr = e.empno
)

SELECT tree leaf___branch___root
FROM X
WHERE depth = 2;