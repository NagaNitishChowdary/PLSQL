SET SERVEROUTPUT ON;

DECLARE
i int;

BEGIN
for i in 1..10 loop
insert into sample values(i);
end loop;

END;