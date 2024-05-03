SELECT ename,
       (SELECT SIGN(COUNT(*))
        FROM EMP d
        WHERE 0 = (SELECT COUNT(*) FROM EMP f
        WHERE f.mgr = e.empno)) AS is_leaf,
        (SELECT SIGN(COUNT(*)) FROM EMP d
        WHERE d.mgr = e.empno
            AND e.mgr IS NOT NULL) AS is_branch,
        (SELECT SIGN(COUNT(*)) FROM EMP d
        WHERE d.empno = e.empno
            AND d.mgr IS NULL) AS is_root
FROM EMP e
ORDER BY 4 DESC, 3 DESC;