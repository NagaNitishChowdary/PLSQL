SET SERVEROUTPUT ON;

DECLARE
na varchar(20);
no int;
sa int;
cursor c1 is select empno,name,salary from emp2 order by salary desc;
cursor c2 is select empno,name,salary from emp2 order by salary;

BEGIN
open c1;
dbms_output.put_line('FIRST 5 HIGHEST PAID SALARIES');
for i in 1..5 loop
fetch c1 into no,na,sa;
exit when c1%notfound;
dbms_output.put_line(no||' '||na||' '||sa);
end loop;
close c1;
open c2;
dbms_output.put_line('FIRST 5 LOWEST PAID SALARIES');
for i in 1..5 loop
fetch c2 into no,na,sa;
exit when c2%notfound;
dbms_output.put_line(no||' '||na||' '||sa);
end loop;
close c2;

END; 