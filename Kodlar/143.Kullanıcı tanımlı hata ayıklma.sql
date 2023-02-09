set serveroutput on
declare 
    v_dep pls_integer :=105;
    v_per_sayisi pls_integer;
begin
    if v_maas > 20000 then
        raise e_maas;
    end if;
    
    insert into personel (personel_id,ad,soyad,maas)
    values(1000,'Zenel','Tay',v_maas);
    
    exception
        when e_maas then
            dbms_output.put_line('Maaþ deðeri 20000 den daha fazla olamaz');
end;