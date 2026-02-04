SET SERVEROUTPUT ON;

DECLARE
    v_emp_id NUMBER := &emp_id;
    v_name   VARCHAR2(50);
    v_salary NUMBER;
BEGIN
    SELECT emp_name, salary
    INTO v_name, v_salary
    FROM emp9
    WHERE emp_id = v_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/


