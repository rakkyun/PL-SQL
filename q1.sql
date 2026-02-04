set serveroutput on;
declare
num number;
begin
num := &num;
if num > 0 then
dbms_output.put_line('Hello');
end if;
end;
/