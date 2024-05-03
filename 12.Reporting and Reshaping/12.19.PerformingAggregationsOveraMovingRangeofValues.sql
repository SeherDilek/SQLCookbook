SELECT hiredate,
       sal,
       SUM(sal) OVER (ORDER BY hiredate
                        ROWS BETWEEN 90 PRECEDING
                            AND CURRENT ROW) spending_pattern
FROM EMP e;