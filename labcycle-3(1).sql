SET SERVEROUTPUT ON;

DECLARE
n number:=&n;
i number;
d number;
r number;

BEGIN
d:=n;
i:=0;
while n>0 loop
r:=mod(n,10);
i:=(i*10)+(r);
n:=FLOOR(n/10);
end loop;
if i=d then
dbms_output.put_line(d||' IS A PALINDROME NUMBER');
else 
dbms_output.put_line(d||' IS NOT A PALINDROME NUMBER');
end if;

END;

