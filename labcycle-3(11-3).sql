SET SERVEROUTPUT ON;

DECLARE
r_emp staff%rowtype;

BEGIN
select * into r_emp from staff where dno=3;

EXCEPTION
when no_data_found then 
dbms_output.put_line('DATA NOT FOUND');

END;