SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT emp_id, emp_name, salary
        FROM emp23 e, dept23 d
        WHERE e.dept_id = d.dept_id
        AND d.dept_name = 'SALES'
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee: ' || rec.emp_name ||
            ' | Old Salary: ' || rec.salary
        );

        UPDATE emp23
        SET salary = salary + (salary * 10 / 100)
        WHERE emp_id = rec.emp_id;

        DBMS_OUTPUT.PUT_LINE(
            'Employee: ' || rec.emp_name ||
            ' | New Salary: ' || (rec.salary + rec.salary * 10 / 100)
        );

        DBMS_OUTPUT.PUT_LINE('-----------------------------');
    END LOOP;

    COMMIT;
END;
/



