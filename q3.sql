set serveroutput on;
declare
sal number;
begin
sal := &salary;
if sal > 3000 then
sal := sal + 500;
end if;
dbms_output.put_line('Updated sal: ' || sal);
end;
/