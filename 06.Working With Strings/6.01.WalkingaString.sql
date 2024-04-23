SELECT SUBSTR(e.ename, iter.pos, 1) AS C
FROM (SELECT ename FROM EMP WHERE ename = 'KING') AS e,
    (SELECT id AS pos from T10) AS iter
WHERE iter.pos <= LENGTH(e.ename);
