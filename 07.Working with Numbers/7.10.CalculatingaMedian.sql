WITH RANK_TAB(sal, rank_sal) AS
(
    SELECT sal, CUME_DIST() OVER (ORDER BY sal)
    FROM EMP
    WHERE deptno = 20
),

inter AS
(
    SELECT sal, rank_sal FROM RANK_TAB
    WHERE rank_sal >= 0.5
    UNION
    SELECT sal, rank_sal FROM RANK_TAB
    WHERE rank_sal <= 0.5
)

SELECT AVG(sal) AS MedianSal
FROM inter;