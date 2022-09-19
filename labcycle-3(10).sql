SET SERVEROUTPUT ON;

DECLARE
negative_amt exception;
cursor c1 is select acc_no,tr_type,tr_amount,upd_flag from bank_trans;
acc_num       bank_trans.acc_no%type;
c_bal         bank_main.curr_balance%type;
trans_type    bank_trans.tr_type%type;
flag          bank_trans.upd_flag%type;
trans_amount  bank_trans.tr_amount%type;

BEGIN
open c1;
loop
exit when c1%notfound;
fetch c1 into acc_num,trans_type,trans_amount,flag;
select curr_balance into c_bal from bank_main where acc_no=acc_num;
if c_bal-trans_amount<0 then 
raise negative_amt;
else 
if flag='N' then
if trans_type='D' then
update bank_main set curr_balance=curr_balance+trans_amount where acc_no=acc_num;
else
update bank_main set curr_balance=curr_balance-trans_amount where acc_no=acc_num;
end if;
update bank_trans set upd_flag='Y' where acc_no=acc_num;
end if;
end if;
end loop;
close c1;

EXCEPTION
when negative_amt then
dbms_output.put_line('TRANSACTION DO NOT TAKES PLACE');
update bank_trans set upd_flag='Y' where acc_no=acc_num;

END;
