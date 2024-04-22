DROP TABLE IF EXISTS D;

CREATE TABLE D (id INTEGER DEFAULT 0);

/*
Add a new row with default values when the
table has columns that all having default values
*/
INSERT INTO D VALUES ();

/*
When the table has a nondefault column:
CREATE TABLE D (id INTEGER DEFAULT 0, FOO VARCHAR(10))

Inserting a new row:

INSERT INTO D (name) VALUES ('BAR')
*/