SET SERVEROUTPUT ON;

DECLARE
number1 int:=&number1;
number2 int:=&number2;
knnc1 int;
knnc2 int;
knnc3 int;
h int;
L int;

BEGIN
knnc1:=number1;
knnc2:=number2;
while mod(number2,number1)!=0 loop
knnc3:=mod(number2,number1);
number2:=number1;
number1:=knnc3;
end loop;
h:=number1;
L:=(knnc1*knnc2)/number1;
dbms_output.put_line('LCM AND HCF OF '||knnc1||' and '||knnc2||' is '||L||' '||h);
insert into demo_tab values(knnc1,knnc2,L,h);

END;
