create or replace trigger sal
before update on emp
for each row 
begin
 if (:new.sal<:old.sal) then
  raise_application_error(-2006,'smaller salary is not allowed');
 end if;
end;