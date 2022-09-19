SET SERVEROUTPUT ON;

DECLARE
a number:=0;
b number:=1;
c number;
n number:=&n;

BEGIN
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 1..n-1 loop
c:=a+b;
a:=b;
b:=c;
dbms_output.put_line(c);
end loop;

END;