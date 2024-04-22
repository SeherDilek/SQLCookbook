DROP TABLE IF EXISTS DUPES;

CREATE TABLE DUPES (id INT, name VARCHAR(10));

INSERT INTO DUPES VALUES (1, 'NAPOLEON');
INSERT INTO DUPES VALUES (2, 'DYNAMITE');
INSERT INTO DUPES VALUES (3, 'DYNAMITE');
INSERT INTO DUPES VALUES (4, 'SHE SELLS');
INSERT INTO DUPES VALUES (5, 'SEA SHELLS');
INSERT INTO DUPES VALUES (6, 'SEA SHELLS');
INSERT INTO DUPES VALUES (7, 'SEA SHELLS');


/*
Here is what happens in the following solution:

The key is GROUP BY the duplicated values (name in this case)

Use an aggregate function to pick off just one key value to retaion (MIN will retain
the minimum id among the same names)

Then delete the records that aren't exist in the result of the query
*/
DELETE FROM DUPES
WHERE id NOT IN
(
    SELECT MIN(id)
    FROM (SELECT * FROM DUPES) TEMPORARY
    GROUP BY name
);