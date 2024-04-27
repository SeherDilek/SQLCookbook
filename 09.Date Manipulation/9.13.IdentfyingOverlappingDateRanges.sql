SELECT a.empno, a.ename,
    CONCAT('project ', b.proj_id, ' overlaps project ', a.proj_id) AS msg
FROM EMP_PROJECT a, EMP_PROJECT b
WHERE a.empno = b.empno
    AND b.proj_start >= a.proj_start
    AND b.proj_start <= a.proj_end
    AND a.proj_id != b.proj_id;