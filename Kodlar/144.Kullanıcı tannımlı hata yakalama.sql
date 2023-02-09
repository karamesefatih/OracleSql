set serveroutput on;
declare 
    v_dep pls_integer :=105;
    v_per_sayisi pls_integer;
    e_departman exception;
begin
    select count(*) into v_per_sayisi from personel
    where dept_id = v_dep;
    
    if v_per_sayisi < 5 then 
         raise e_departman;
    end if;
    
    exception
        when e_departman then
            dbms_output.put_line('Dep. No: '|| v_dep||',Personel Sayısı: '|| v_per_sayisi);
end;