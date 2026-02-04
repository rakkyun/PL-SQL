CREATE OR REPLACE FUNCTION total_salary_dept (
    p_deptno IN emp15.deptno%TYPE
)
RETURN NUMBER
AS
    v_total_salary NUMBER;
BEGIN
    SELECT SUM(salary)
    INTO v_total_salary
    FROM emp15
    WHERE deptno = p_deptno;

    RETURN v_total_salary;
END;
/


