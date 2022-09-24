create or replace function dept_sal(dno in number) return number as
s number:=0;
begin
 select sum(sal) into s from emp group by deptno having deptno=dno;
return s;
end;
