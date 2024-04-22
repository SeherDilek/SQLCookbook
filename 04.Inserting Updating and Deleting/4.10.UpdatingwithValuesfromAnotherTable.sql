DROP TABLE IF EXISTS NEW_SAL;

CREATE TABLE NEW_SAL (deptno INT, sal INT);

INSERT INTO NEW_SAL VALUES (10, 4000);

UPDATE EMP e, NEW_SAL ns
SET e.sal = ns.sal,
e.comm = ns.sal / 2
WHERE e.deptno = ns.deptno;