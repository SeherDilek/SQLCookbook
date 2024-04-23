DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions
(
    id INTEGER,
    amt INTEGER,
    trx CHAR(4)
);

INSERT INTO transactions (id, amt, trx) VALUES (1, 100, 'PR');
INSERT INTO transactions (id, amt, trx) VALUES (2, 100, 'PR');
INSERT INTO transactions (id, amt, trx) VALUES (3, 50, 'PY');
INSERT INTO transactions (id, amt, trx) VALUES (4, 100, 'PR');
INSERT INTO transactions (id, amt, trx) VALUES (5, 200, 'PY');
INSERT INTO transactions (id, amt, trx) VALUES (6, 50, 'PY');