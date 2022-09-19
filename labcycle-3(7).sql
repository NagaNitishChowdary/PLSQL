SET SERVEROUTPUT ON;

DECLARE
no int;
name varchar(20);
gross_sal int;
net_sal int;
basic_sal int;
hra int;
da int;
pf int;
pt int;
cursor c1 is select eno,ename,basic_pay from employ;

BEGIN
open c1;
loop
fetch c1 into no,name,basic_sal;
exit when c1%notfound;
hra:=0.15*basic_sal;
da:=0.62*basic_sal;
gross_sal:=basic_sal+hra+da;
if gross_sal>8000 then 
pf:=780;
else 
pf:=600;
end if;
pt:=0.2*basic_sal;
net_sal:=gross_sal-pf-pt;
dbms_output.put_line(no||' '||name||' '||basic_sal||' '||hra||' '||da||' '||pf||' '||pt);
dbms_output.put_line('GROSS SALARY='||gross_sal);
dbms_output.put_line('NET SALARY;'||net_sal);
end loop;
close c1;
 
END;