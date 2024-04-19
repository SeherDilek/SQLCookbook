SELECT d.*
FROM DEPT d
LEFT OUTER JOIN EMP e ON (d.deptno = e.deptno)
WHERE e.deptno IS NULL