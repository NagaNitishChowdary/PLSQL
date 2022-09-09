SET SERVEROUTPUT ON;

DECLARE
n NUMBER:=&n;
rev NUMBER;
d NUMBER;
n1 NUMBER;

BEGIN
n1:=n;
d:=0;
while n>0 loop
rev:=MOD(n,10);
d:=(d*10)+rev;
n:=FLOOR(n/10);
END LOOP;
IF(d=n1) THEN
dbms_output.put_line('PALINDROME');
ELSE
dbms_output.put_line('NOT A PALINDROME NUMBER');
END IF;

END;
