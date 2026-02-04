CREATE OR REPLACE FUNCTION calc_bonus (
    p_emp_no IN emp17.emp_no%TYPE
)
RETURN NUMBER
AS
    v_salary emp.salary%TYPE;
    v_bonus  NUMBER;
BEGIN
    SELECT salary
    INTO v_salary
    FROM emp17
    WHERE emp_no = p_emp_no;

    v_bonus := v_salary * 0.20;

    RETURN v_bonus;
END;
/



--SELECT calc_bonus(102) FROM dual;--



