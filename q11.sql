CREATE OR REPLACE PROCEDURE insert_employee (
    p_emp_no   IN emp11.emp_no%TYPE,
    p_emp_name IN emp11.emp_name%TYPE
)
AS
BEGIN
    INSERT INTO emp11 (emp_no, emp_name)
    VALUES (p_emp_no, p_emp_name);

    COMMIT;
END;
/


--BEGIN--
    --insert_employee(201, 'Rakesh');--
--END;--
--/--

