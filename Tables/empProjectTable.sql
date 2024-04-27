DROP TABLE IF EXISTS EMP_PROJECT;

CREATE TABLE EMP_PROJECT (
    EMPNO integer NOT NULL,
    ENAME VARCHAR(10),
    PROJ_ID integer,
    PROJ_START DATE,
    PROJ_END DATE
);

INSERT INTO EMP_PROJECT
VALUES (
        7782,
        'CLARK',
        1,
        '2005-06-16',
        '2005-06-18'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7782,
        'CLARK',
        4,
        '2005-06-19',
        '2005-06-24'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7782,
        'CLARK',
        7,
        '2005-06-22',
        '2005-06-25'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7782,
        'CLARK',
        10,
        '2005-06-25',
        '2005-06-28'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7782,
        'CLARK',
        13,
        '2005-06-28',
        '2005-07-02'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7839,
        'KING',
        2,
        '2005-06-17',
        '2005-06-21'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7839,
        'KING',
        8,
        '2005-06-23',
        '2005-06-21'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7839,
        'KING',
        14,
        '2005-06-29',
        '2005-06-30'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7839,
        'KING',
        11,
        '2005-06-26',
        '2005-06-27'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7839,
        'KING',
        5,
        '2005-06-20',
        '2005-06-24'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7934,
        'MILLER',
        3,
        '2005-06-18',
        '2005-06-22'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7934,
        'MILLER',
        12,
        '2005-06-27',
        '2005-06-28'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7934,
        'MILLER',
        15,
        '2005-06-30',
        '2005-07-03'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7934,
        'MILLER',
        9,
        '2005-06-24',
        '2005-06-27'
    );

INSERT INTO EMP_PROJECT
VALUES (
        7934,
        'MILLER',
        6,
        '2005-06-21',
        '2005-06-23'
    );
