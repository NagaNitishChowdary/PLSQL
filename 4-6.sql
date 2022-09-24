create or replace trigger audit_trail
after update or delete on emp
for each row
declare
 eno number;
 ename varchar(30);
 eage number;
 op varchar(30);
 odate date;
begin
 if updating then
   op:='update'
 elsif deleting then
   op:='delete'
 end if;
 eno:=:old.empno;
 ename:=:old.name;
 eage:=:old.age;
 insert into auditpersinfo values(eno,ename,eage,op,sysdate);
end;