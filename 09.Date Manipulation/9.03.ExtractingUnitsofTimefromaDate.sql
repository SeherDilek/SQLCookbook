SELECT YEAR(CURRENT_DATE) AS yr,
        MONTH(CURRENT_DATE) AS mnth,
        DAY(CURRENT_DATE) AS dy,
        HOUR(CURRENT_TIME) AS hr,
        MINUTE(CURRENT_TIME) AS minut,
        SECOND(CURRENT_TIME) AS sec;


SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%k') AS hr,
       DATE_FORMAT(CURRENT_TIMESTAMP, '%i') AS min,
       DATE_FORMAT(CURRENT_TIMESTAMP, '%s') AS sec,
       DATE_FORMAT(CURRENT_TIMESTAMP, '%d') AS dy,
       DATE_FORMAT(CURRENT_TIMESTAMP, '%m') AS mon,
       DATE_FORMAT(CURRENT_TIMESTAMP, '%Y') AS yr;