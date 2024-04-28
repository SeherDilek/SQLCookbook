WITH RECURSIVE X (id)
AS (
    SELECT 1
    UNION ALL
    SELECT id + 1
    FROM X
    WHERE id + 1 <= 10
)
SELECT * FROM X;