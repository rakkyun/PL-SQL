SET SERVEROUTPUT ON;

BEGIN
    -- Update salary of all employees (example: increase by 5%)
    UPDATE emp24
    SET salary = salary + (salary * 5 / 100);

    -- Check how many rows were affected
    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('None of the salaries were updated');
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Salaries for ' || SQL%ROWCOUNT || ' employees are updated'
        );
    END IF;

    COMMIT;
END;
/



