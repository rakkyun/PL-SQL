SET SERVEROUTPUT ON;

DECLARE
    CURSOR high_paid_cur IS
        SELECT emp_no, name, salary, designation, dept_id
        FROM employee25
        ORDER BY salary DESC
        FETCH FIRST 5 ROWS ONLY;

    v_no   employee25.emp_no%TYPE;
    v_name employee25.name%TYPE;
    v_sal  employee25.salary%TYPE;
    v_desg employee25.designation%TYPE;
    v_dept employee25.dept_id%TYPE;
BEGIN
    OPEN high_paid_cur;

    LOOP
        FETCH high_paid_cur
        INTO v_no, v_name, v_sal, v_desg, v_dept;

        EXIT WHEN high_paid_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Emp No: ' || v_no ||
            ' | Name: ' || v_name ||
            ' | Salary: ' || v_sal ||
            ' | Designation: ' || v_desg ||
            ' | Dept: ' || v_dept
        );
    END LOOP;

    CLOSE high_paid_cur;
END;
/


