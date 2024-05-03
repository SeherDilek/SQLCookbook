WITH RECURSIVE X (ename, empno)
AS (
    SELECT ename, empno
    FROM EMP
    WHERE ename = 'JONES'
    UNION ALL
    SELECT e.ename, e.empno
    FROM EMP e, X
    WHERE X.empno = e.mgr
)
SELECT ename
FROM X;