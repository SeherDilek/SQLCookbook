DROP TABLE IF EXISTS EMP_BONUS2;

CREATE TABLE EMP_BONUS2 (
    EMPNO integer NOT NULL,
    RECEIVED DATE,
    TYPE integer
);

INSERT INTO EMP_BONUS2
VALUES (
        7934,
       '2005-03-17',
        1
    );

INSERT INTO EMP_BONUS2
VALUES (
        7934,
       '2005-02-15',
        2
    );

INSERT INTO EMP_BONUS2
VALUES (
        7839,
       '2005-02-15',
        3
    );

INSERT INTO EMP_BONUS2
VALUES (
        7782,
       '2005-02-15',
        1
    );