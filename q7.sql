set serveroutput on;
declare
n number := &n;
s number := 0;
r number;
begin
while n > 0 loop
r := mod(n , 10);
s := s * 10 + r;
n := floor(n / 10);
end loop;
dbms_output.put_line('Reverse number: ' || s);
end;
/