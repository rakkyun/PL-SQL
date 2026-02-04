CREATE OR REPLACE PROCEDURE emp_grade_count (
    p_deptno IN emp14.deptno%TYPE
)
AS
    v_grade_a NUMBER;
    v_grade_b NUMBER;
    v_grade_c NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_grade_a
    FROM emp14
    WHERE deptno = p_deptno AND salary >= 50000;

    SELECT COUNT(*) INTO v_grade_b
    FROM emp14
    WHERE deptno = p_deptno AND salary BETWEEN 30000 AND 49999;

    SELECT COUNT(*) INTO v_grade_c
    FROM emp14
    WHERE deptno = p_deptno AND salary < 30000;

    DBMS_OUTPUT.PUT_LINE('Department No : ' || p_deptno);
    DBMS_OUTPUT.PUT_LINE('Grade A Employees: ' || v_grade_a);
    DBMS_OUTPUT.PUT_LINE('Grade B Employees: ' || v_grade_b);
    DBMS_OUTPUT.PUT_LINE('Grade C Employees: ' || v_grade_c);
END;
/




--SET SERVEROUTPUT ON;--

--BEGIN--
    --emp_grade_count(10);--
--END;--
--/--
