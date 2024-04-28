SELECT  proj_id, proj_start, proj_end
FROM (
    SELECT proj_id, proj_start, proj_end,
    LEAD(proj_start) OVER (ORDER BY proj_id) next_proj_start
    FROM EMP_PROJECT
) X
WHERE proj_end = next_proj_start
ORDER BY proj_id;