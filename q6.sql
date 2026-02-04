set serveroutput on;

declare
	v_emp_id emp.emp_id%type := &emp_id;
	v_name emp.emp_name%type;
	v_salary emp.salary%type;
begin
	select emp_name, salary
	into v_name, v_salary
	from emp
	where emp_id=v_emp_id;

dbms_output.put_line('Employee name: ' || v_name);
dbms_output.put_line('salary: ' || v_salary);
end;
/