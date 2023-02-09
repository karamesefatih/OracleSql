set serveroutput on
declare
    v_name varchar2(25);
begin
    select ad into v_name from personel
    where unvan ='UZMAN';
    
    dbms_output.put_line(v_name);
end;