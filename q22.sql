SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cur IS
        SELECT emp_id, emp_name, job, salary
        FROM emp22
        WHERE job IN ('Manager', 'Analyst');

    v_id     emp22.emp_id%TYPE;
    v_name   emp22.emp_name%TYPE;
    v_job    emp22.job%TYPE;
    v_salary emp22.salary%TYPE;
BEGIN
    OPEN emp_cur;

    LOOP
        FETCH emp_cur INTO v_id, v_name, v_job, v_salary;
        EXIT WHEN emp_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' | Name: ' || v_name ||
            ' | Job: ' || v_job ||
            ' | Salary: ' || v_salary
        );
    END LOOP;

    CLOSE emp_cur;
END;
/



