SELECT CONCAT(a.ename, ' works for ', b.ename) AS emps_and_mgrs
FROM EMP a, EMP b
WHERE a.mgr = b.empno;