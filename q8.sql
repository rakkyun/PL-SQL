set serveroutput on;
declare
	dept_id number:= &dept_id;
	dept_name varchar2(50);
begin
	dept_name:= case dept_id
	when 10 then 'Finance'
	when 20 then 'HR'
	when 30 then 'IT'
	when 40 then 'Sales'
	else 'Invalid Department'
	end;

dbms_output.put_line("Department Name: " || dept_name);
end;
/