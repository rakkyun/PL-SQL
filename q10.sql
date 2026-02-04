set serveroutput on;
declare
sumOdd number := 0;
begin
for I in 1..100 loop
sumOdd := sumOdd + (2 * I - 1);
end loop;
dbms_output.put_line('Output: ' || sumOdd);
end;
/