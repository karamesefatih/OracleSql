set SERVEROUTPUT on
declare
    v_name varchar2(50);
begin
    select ad into v_name from personel
--  where unvan ='UZMAN';
    WHERE personel_id =5010;
    dbms_output.put_line(v_name);
    dbms_output.put_line('B�lme ��lemi: '|| 1/0);
    
    exception
        when too_many_rows then
            dbms_output.put_line('Birden fazla sat�r geldi');
        when others then
            dbms_output.put_line('BA�KA B�R HATA OLU�TU');
END;