SELECT SUM(
        CASE 
            WHEN DAYNAME(DATE_ADD(jones_hd, INTERVAL T100.id - 1 DAY)) IN ('Saturday', 'Sunday') THEN 0 
            ELSE 1 
        END
    ) AS days
FROM
(
    SELECT MAX(CASE WHEN ename = 'BLAKE' THEN hiredate END) AS blake_hd,
           MAX(CASE WHEN ename = 'JONES' THEN hiredate END) AS jones_hd
    FROM EMP
    WHERE ename IN ('BLAKE', "JONES")
) y,
/*
Use T500 here, at the time that I solved this question I didn't want to
create T500 table, instead I used T100 table.
This is completely okay for this question since the date diff between
hire date of Blake and Jones is just 29 days.
*/
T100
WHERE T100.id <= DATEDIFF(blake_hd, jones_hd) + 1;