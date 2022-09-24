create or replace procedure tot_sal(eno in number) as
increased_sal number;
exe exception;
begin
increased_sal:=incr(eno);
if increased_sal is null or sql%notfound then
  raise exe;
else
 update emp set sal=increased_sal+sal where empno=eno;
 end if;
exception
 when no_data_found then
  dbms_output.put_line('No data found');
  when exe then
    dbms_output.put_line('salary of employee is null');
end;
