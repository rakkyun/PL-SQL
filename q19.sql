CREATE OR REPLACE PROCEDURE update_salary (
    p_emp_id IN emp19.emp_id%TYPE,
    p_percent IN NUMBER
)
AS
BEGIN
    UPDATE emp19
    SET salary = salary + (salary * p_percent / 100)
    WHERE emp_id = p_emp_id;

    COMMIT;
END;
/




--SELECT * FROM emp19 WHERE emp_id = 102;--


--BEGIN--
    --update_salary(102, 10);--
--END;--
--/--