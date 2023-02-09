set serveroutput on
declare
    v_name varchar2(25);
begin 
    select ad into v_name from personel
    where unvan ='UZMAN';
    dbms_output.put_line(v_name);
    exception
        when too_many_rows then
            dbms_output.put_line('BÝRDEN FAZLA SATIR GELDÝ');
END;