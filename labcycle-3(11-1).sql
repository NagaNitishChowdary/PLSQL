SET SERVEROUTPUT ON;

DECLARE
r_emp staff%rowtype;

BEGIN
select * into r_emp from staff where dno=1;

EXCEPTION
when too_many_rows then
dbms_output.put_line('MORE THAN 1 ROW SELECTED');

END;