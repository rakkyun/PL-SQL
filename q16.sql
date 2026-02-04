CREATE OR REPLACE FUNCTION count_emp_dept (
    p_deptno IN emp16.deptno%TYPE
)
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM emp16
    WHERE deptno = p_deptno;

    RETURN v_count;
END;
/

--SELECT count_emp_dept(20) FROM dual;--
