SELECT CEIL(trx_id / 5.0) AS grp,
       MIN(trx_date) AS trx_start,
       MAX(trx_date) AS trx_end,
       SUM(trx_cnt) AS total
FROM TRX_LOG
GROUP BY CEIL(trx_id / 5.0);