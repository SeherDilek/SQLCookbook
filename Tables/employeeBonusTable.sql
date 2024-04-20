DROP TABLE IF EXISTS EMP_BONUS;

CREATE TABLE EMP_BONUS (
    EMPNO integer NOT NULL,
    RECEIVED DATE,
    TYPE integer
);

INSERT INTO EMP_BONUS
VALUES (
        7369,
       '2005-03-14',
        1
    );

INSERT INTO EMP_BONUS
VALUES (
        7900,
       '2005-03-14',
        2
    );

INSERT INTO EMP_BONUS
VALUES (
        7788,
       '2005-03-14',
        3
    );