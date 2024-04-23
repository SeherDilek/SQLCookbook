SELECT CASE WHEN trx = 'PY' THEN 'PAYMENT' ELSE 'PURCHASE' END trx_type,
       amt,
       SUM(CASE WHEN trx = 'PY' THEN -amt ELSE amt END)
        OVER (ORDER BY id, amt) AS balance
FROM transactions;