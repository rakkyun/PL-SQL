set serveroutput on;
create or replace procedure display_emp(p_emp_no in emp12.emp_no%type)
as
	v_name emp12.emp_name%type;
	v_desig emp12.desig%type;
	v_sal emp12.sal%type;
begin
	select emp_name, desig, sal
	into v_name, v_desig, v_sal
	from emp12
	where emp_no = p_emp_no;

dbms_output.put_line('employee name: '||v_name);
dbms_output.put_line('designation: '||v_desig);
dbms_output.put_line('salary: '||v_sal);

end;
/

--begin--
--display_emp(101);--
--end;--
--/--
