(SELECT ename AS ENAME_AND_DNAME, deptno
FROM EMP
WHERE deptno = 10)

UNION ALL

(SELECT '------------------', '---'
FROM T1)

UNION ALL

(SELECT dname AS ENAME_AND_DNAME, deptno
FROM DEPT);