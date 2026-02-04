set serveroutput on;
begin
for i in 1..10 loop
insert into emp(emp_id, emp_name, salary, dept_id) 
values(
200 + i,
'Employee_' || i,
30000 + (i * 1000),
10 + (i * 10)
);
end loop;
commit;
dbms_output.put_line('10 rows inserted successfully.');
end;
/
 