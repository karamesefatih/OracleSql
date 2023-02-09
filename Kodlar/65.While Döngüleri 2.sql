SET SERVEROUTPUT ON;
DECLARE
    v_grupsayisi  number := 0;
    v_deger  number:= 10000;
    v_limit  integer := 23;
    islemtamam  boolean := false;
begin 
    dbms_output.put_line('Deðer: '|| v_deger);
    while islemtamam = false loop
        v_grupsayisi := v_grupsayisi + 1;
        if v_deger <= v_limit then
            islemtamam :=true;
        else
            v_deger := v_deger - v_limit;
        end if;
    end loop;
    dbms_output.put_line('Limit: '|| v_limit);
    dbms_output.put_line('Grup Sayýsý: '|| v_grupsayisi);
end;