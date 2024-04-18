SELECT *
    FROM (
SELECT sal AS SALARY, comm AS COMMISSION
FROM EMP
    ) x
WHERE SALARY < 5000;*/


/* fails without paranthesis:
Unknown column 'SALARY' in 'where clause'
SELECT sal AS SALARY, comm AS COMMISSION
FROM EMP
WHERE SALARY < 5000;*/