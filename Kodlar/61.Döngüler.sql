set serveroutput on;
declare 
    v_sayac pls_integer :=0;
begin
    loop
        v_sayac := v_sayac+1;
        dbms_output.put_line(v_sayac || '.sayı');
        exit when v_sayac =10;
    end loop;
end;