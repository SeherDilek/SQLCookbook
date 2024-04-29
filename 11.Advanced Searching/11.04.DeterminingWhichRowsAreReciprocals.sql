SELECT DISTINCT t1.*
FROM TEST t1, TEST t2
WHERE t1.test1 = t2.test2
    AND t1.test2 = t2.test1
    AND t1.test1 <= t1.test2;