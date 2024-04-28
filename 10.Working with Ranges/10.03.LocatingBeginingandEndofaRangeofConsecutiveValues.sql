SELECT proj_grp, MIN(proj_start), MAX(proj_end)
FROM (
    SELECT proj_id, proj_start, proj_end,
        SUM(flag) OVER (ORDER BY proj_id) proj_grp
    FROM (
        SELECT proj_id, proj_start, proj_end,
            CASE
                WHEN LAG(proj_end) OVER (ORDER BY proj_id) = proj_start THEN 0
                ELSE 1
            END FLAG
            FROM EMP_PROJECT
    ) X
) Y
GROUP BY proj_grp;