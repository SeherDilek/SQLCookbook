DROP VIEW IF EXISTS V;

CREATE VIEW V
AS
SELECT ename, job, sal
FROM EMP
WHERE job = 'CLERK';

SELECT e.empno, e.ename, e.job, e.sal, e.deptno
FROM EMP e
JOIN V v ON (
    e.ename = v.ename
    AND e.job = v.job
    AND e.sal = v.sal
);