create or replace function incr(eno number) return number as
salary number;
begin
 select sal into salary from emp where empno=eno;
 if salary<=3000 then
   salary:=0.3*salary;
 elsif salary>3000 and salary<=6000 then
   salary:=0.2*salary;
 else
   salary:=0.1*salary;
 end if;
 return salary;
end;