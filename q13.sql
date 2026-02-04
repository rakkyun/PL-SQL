CREATE OR REPLACE PROCEDURE get_emp_details (
    p_emp_no   IN  empp13.emp_no%TYPE,
    p_name     OUT empp13.emp_name%TYPE,
    p_dept     OUT deptt13.dept_name%TYPE
)
AS
BEGIN
    SELECT e.emp_name, d.dept_name
    INTO p_name, p_dept
    FROM empp13 e, deptt13 d
    WHERE e.dept_id = d.dept_id
    AND e.emp_no = p_emp_no;
END;
/

