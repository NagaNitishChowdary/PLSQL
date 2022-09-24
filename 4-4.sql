create or replace procedure earn as
name varchar(30);
salary number;
tot_earn number;
com number;
cursor dbms is
 select ename,sal,comm from emp;
begin
 open dbms;
 loop
   fetch dbms into name,salary,com;
   exit when dbms%notfound;
   if com is null then
    tot_earn:=12*salary;
   else
    tot_earn:=12*(salary+com);
   end if;
   dbms_output.put_line(name||' '||tot_earn);
 end loop;
end;