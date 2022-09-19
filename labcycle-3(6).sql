SET SERVEROUTPUT ON;

DECLARE
cursor inven is select product_id,quantity from inventory;
q int;
id int;

BEGIN
open inven;
loop
fetch inven into id,q;
exit when inven%notfound;
if q>0 then
update purchase_record set dat=sysdate,status='PURCHASED'
where product_id=id;
update inventory set quantity=quantity-1 where product_id=id;
else
update purchase_record set status='OUT OF STOCK' 
where product_id=id;
end if;
end loop;
close inven;

END;
