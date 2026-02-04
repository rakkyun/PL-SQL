CREATE OR REPLACE PROCEDURE show_emp (
    p_emp_id IN emp18.emp_id%TYPE
)
AS
    v_name  emp18.emp_name%TYPE;
    v_sal   emp18.salary%TYPE;
    v_dept  dept18.dept_name%TYPE;
BEGIN
    SELECT e.emp_name, e.salary, d.dept_name
    INTO v_name, v_sal, v_dept
    FROM emp18 e, dept18 d
    WHERE e.dept_id = d.dept_id
    AND e.emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary        : ' || v_sal);
    DBMS_OUTPUT.PUT_LINE('Department    : ' || v_dept);
END;
/




