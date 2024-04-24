WITH RANK_TAB (sal, rank_sal) AS (
    SELECT sal, CUME_DIST() OVER (ORDER BY sal)
    FROM EMP
),
inter AS (
    SELECT sal, rank_sal FROM RANK_TAB
    WHERE rank_sal >= 0.5
    UNION
    SELECT sal, rank_sal FROM RANK_TAB
    WHERE sal <= 0.5
),
medianSal (medianSal) AS
(
SELECT (MAX(sal) + MIN(sal)) / 2 FROM inter
),
deviationSal (sal, deviationSal) AS
(SELECT sal, ABS(sal - medianSal)
FROM EMP JOIN medianSal ON 1 = 1
),
distDevSal (sal, deviationSal, distDeviationSal) AS
(
    SELECT sal, deviationSal, CUME_DIST() OVER (ORDER BY deviationSal) FROM deviationSal
),
DevInter (DevInter, sal) AS
(
    SELECT MIN(deviationSal), sal
    FROM distDevSal
    WHERE distDeviationSal >= 0.5
    UNION
    SELECT MAX(deviationSal), sal
    FROM distDevSal
    WHERE distDeviationSal <= 0.5
),

MAD (MedianAbsoluteDeviance) AS
(
    SELECT ABS(emp.sal - (MIN(devInter) + MAX(devInter)) / 2)
    FROM EMP emp JOIN DevInter ON 1 = 1
)

SELECT emp.sal, MedianAbsoluteDeviance,
(emp.sal - deviationSal) / MedianAbsoluteDeviance
FROM (EMP emp JOIN MAD ON 1 = 1) JOIN deviationSal ON emp.sal = deviationSal.sal