SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cur IS
        SELECT emp_id, emp_name, salary, deptno FROM emp21;

    v_id     emp21.emp_id%TYPE;
    v_name   emp21.emp_name%TYPE;
    v_salary emp21.salary%TYPE;
    v_dept   emp21.deptno%TYPE;
BEGIN
    OPEN emp_cur;

    LOOP
        FETCH emp_cur INTO v_id, v_name, v_salary, v_dept;
        EXIT WHEN emp_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' | Name: ' || v_name ||
            ' | Salary: ' || v_salary ||
            ' | Dept: ' || v_dept
        );
    END LOOP;

    CLOSE emp_cur;
END;
/



