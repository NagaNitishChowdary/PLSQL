SET SERVEROUTPUT ON;

DECLARE
m int:=10;
d int;

BEGIN
d:=m/0;

EXCEPTION
when zero_divide then
dbms_output.put_line('cannot divide by 0');

END;
