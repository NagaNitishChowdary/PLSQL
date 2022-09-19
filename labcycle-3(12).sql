SET SERVEROUTPUT ON;

DECLARE
id inventory1.product_id%type;
qt inventory1.quantity%type;
cursor c1 is select product_id,quantity from inventory1;
neg exception;

BEGIN
open c1;
loop
fetch c1 into id,qt;
if(qt<0) then 
raise neg;
end if;
exit when c1%notfound;
end loop;

EXCEPTION
when neg then 
update inventory1 set quantity=0 where product_id=id;
dbms_output.put_line('Quantity is set to 0');

END;