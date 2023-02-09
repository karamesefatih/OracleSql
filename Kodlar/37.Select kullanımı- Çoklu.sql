declare
    v_ps_ismi varchar2(70);
    v_ps_unvan varchar2(30);
    v_ps_maas number;
begin
    select ad||' '||soyad,unvan,maas
    into v_ps_ismi,v_ps_unvan,v_ps_maas
    from personel
    where personel_id = 5006;
    dbms_output.put_line('Personel Ýsmi: '||v_ps_ismi);
    dbms_output.put_line('Personel Unvaný: '||v_ps_unvan);
    dbms_output.put_line('Personel Maaþý: '||v_ps_maas);
    
end;