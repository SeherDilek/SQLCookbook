-- generate sql to count all the rows in all the tables
SELECT CONCAT('SELECT COUNT(*) FROM ', table_name, ';') AS cnts
FROM information_schema.tables
WHERE table_schema = 'sqlCookbook' AND table_type = 'BASE TABLE';