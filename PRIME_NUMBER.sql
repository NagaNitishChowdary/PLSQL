SET SERVEROUTPUT ON;

DECLARE 
n number(5):=&n;
flag number(1):=1;
t number(5);

BEGIN

t:=n-1;
FOR i IN 2..t LOOP
IF(mod(n,i)=0) THEN
flag:=flag+1;
END IF;
END LOOP;
IF(flag=1) THEN
dbms_output.put_line('prime number');
ELSE 
dbms_output.put_line('not prime number');
END IF;

END;

