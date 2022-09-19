SET SERVEROUTPUT ON;

DECLARE
n number:=&n;
i number;
t number;

BEGIN
i:=0;
for j in 2..n-1 loop
if(mod(n,j)=0) then 
i:=1;
end if;
end loop;
if(i=1) then 
dbms_output.put_line(n||' is not a prime number');
else 
dbms_output.put_line(n||' is a prime number');
end if;

END;
