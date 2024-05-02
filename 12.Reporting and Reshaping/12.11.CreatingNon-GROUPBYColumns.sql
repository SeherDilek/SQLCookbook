SELECT deptno, ename, job, sal,
       CASE
        WHEN sal = max_by_dept THEN 'TOP SAL IN DEPT'
        WHEN sal = min_by_dept THEN 'LOW SAL IN DEPT'
       END AS dept_status,
       CASE
        WHEN sal = max_by_job THEN 'TOP SAL IN JOB'
        WHEN sal = min_by_dept THEN 'LOW SAL IN JOB'
       END AS job_status
FROM (
    SELECT deptno, ename, job, sal,
           MAX(sal) OVER (PARTITION BY deptno) max_by_dept,
           MAX(sal) OVER (PARTITION BY job) max_by_job,
           MIN(sal) OVER (PARTITION BY deptno) min_by_dept,
           MIN(sal) OVER (PARTITION BY job) min_by_job
    FROM EMP
) emp_sals
WHERE sal IN (max_by_dept, max_by_job, min_by_dept, min_by_job);