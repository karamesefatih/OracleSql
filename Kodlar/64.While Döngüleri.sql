SET SERVEROUTPUT ON;
DECLARE
    v_sayac    pls_integer :=0;
begin 
    while v_sayac <10 loop
        v_sayac := v_sayac +1;
        dbms_output.put_line(v_sayac ||'.sayý');
    end loop;
end;