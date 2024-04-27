SELECT ename
FROM EMP
WHERE MONTHNAME(hiredate) IN ('February', 'December')
      OR DAYNAME(hiredate) = 'Tuesday';