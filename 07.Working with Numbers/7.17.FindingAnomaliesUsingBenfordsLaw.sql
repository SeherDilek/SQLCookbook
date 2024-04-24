WITH FirstDigits (FirstDigit) AS (
    SELECT LEFT(CAST(sal AS CHAR), 1) AS FirstDigit
    FROM EMP
),
TotalCount (Total) AS
(
    SELECT COUNT(*)
    FROM EMP
),
ExpectedBenford (Digit, Expected) AS (
    SELECT ID, (LOG10(ID + 1) - LOG10(ID)) AS expected
    FROM T10
    WHERE ID < 10
)

SELECT COUNT(FirstDigit), Digit,
    COALESCE(COUNT(*) / Total, 0) AS ActualProportion, Expected
FROM FirstDigits
JOIN TotalCount RIGHT JOIN ExpectedBenford
ON FirstDigits.FirstDigit = ExpectedBenford.Digit
GROUP BY Digit
ORDER BY Digit;