SELECT hiredate - INTERVAL 5 day AS hd_minus5D,
       hiredate + INTERVAL 5 day AS hd_plus5D,
       hiredate - INTERVAL 5 month AS hd_minus5M,
       hiredate + INTERVAL 5 month AS hd_plus5M,
       hiredate - INTERVAL 5 year AS hd_minus5Y,
       hiredate + INTERVAL 5 year AS hd_plus5Y
FROM EMP;

/*
Alternatively you can use DATEADD function:
SELECTDATEADD(day, -5, hiredate) day AS hd_minus5D,
      DATEADD(day, 5, hiredate) day AS hd_plus5D,
      DATEADD(month, -5, hiredate) month AS hd_minus5M,
      DATEADD(month, 5, hiredate) month AS hd_plus5M,
      DATEADD(year, -5, hiredate) year AS hd_minus5Y,
      DATEADD(year, 5, hiredate) year AS hd_plus5Y
FROM EMP;
*/