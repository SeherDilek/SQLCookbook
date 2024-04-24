SELECT DATEDIFF(
  (SELECT hiredate FROM EMP WHERE ename = 'WARD'),
  (SELECT hiredate FROM EMP WHERE ename = 'ALLEN')
) AS difference_in_days;