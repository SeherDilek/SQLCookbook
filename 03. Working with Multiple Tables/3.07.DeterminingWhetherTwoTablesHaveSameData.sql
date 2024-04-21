DROP VIEW IF EXISTS V;

CREATE VIEW V
AS
SELECT * FROM EMP WHERE deptno != 10
UNION ALL
SELECT * FROM EMP WHERE ename = 'WARD';

(
SELECT *, COUNT(*) AS cnt
FROM V
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
EXCEPT
SELECT *, COUNT(*) AS cnt
FROM EMP
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
)

UNION

(
SELECT *, COUNT(*) AS cnt
FROM EMP
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
EXCEPT
SELECT *, COUNT(*) AS cnt
FROM V
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
)