DROP TABLE IF EXISTS emp_counts;
CREATE TABLE emp_counts AS (
SELECT SUM(CASE WHEN deptno = 10 THEN 1 ELSE 0 END) AS deptno_10,
       SUM(CASE WHEN deptno = 20 THEN 1 ELSE 0 END) AS deptno_20,
       SUM(CASE WHEN deptno = 30 THEN 1 ELSE 0 END) AS deptno_30
FROM EMP
);

SELECT dept.deptno,
       CASE dept.deptno
            WHEN 10 THEN emp_counts.deptno_10
            WHEN 20 THEN emp_counts.deptno_20
            WHEN 30 THEN emp_counts.deptno_30
        END AS counts_by_dept
FROM emp_counts CROSS JOIN
    (SELECT deptno FROM DEPT WHERE deptno <= 30) dept;