CREATE OR REPLACE FUNCTION calculate_age (
    p_emp_id NUMBER
)
RETURN NUMBER
AS
    v_dob  DATE;
    v_age  NUMBER;
BEGIN
    SELECT dob
    INTO v_dob
    FROM emp20
    WHERE emp_id = p_emp_id;

    v_age := FLOOR(MONTHS_BETWEEN(SYSDATE, v_dob) / 12);

    RETURN v_age;
END;
/



