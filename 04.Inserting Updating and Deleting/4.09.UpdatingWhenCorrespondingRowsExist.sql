UPDATE EMP
    SET sal = sal * 1.20
WHERE empno IN (SELECT empno FROM EMP_BONUS)