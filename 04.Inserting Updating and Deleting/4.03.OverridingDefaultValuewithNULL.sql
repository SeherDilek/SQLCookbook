DROP TABLE IF EXISTS D;

CREATE TABLE D (id INTEGER DEFAULT 0, foo VARCHAR(10));

/*
Insert NULL for id:
*/
INSERT INTO D (id, foo) VALUES (NULL, 'Brighten');