SELECT DATEDIFF(DATE_ADD(CONCAT(YEAR(CURRENT_DATE), '-01-01'),
 INTERVAL 1 YEAR),CONCAT(YEAR(CURRENT_DATE), '-01-01'))
FROM T1;