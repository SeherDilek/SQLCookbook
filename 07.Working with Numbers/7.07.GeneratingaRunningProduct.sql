SELECT empno, ename, sal,
    EXP(SUM(LN(sal)) OVER (ORDER BY sal, empno)) AS running_product
FROM EMP
WHERE deptno = 10;