SET SERVEROUTPUT ON;

DECLARE
d emp1.dno%type:=&department;
row_delete int;

BEGIN
delete from emp1 where dno=d;
row_delete:=sql%rowcount;
insert into del_history values(
d,row_delete,sysdate);

END;
