declare
    v_ps_ismi varchar2(70);
begin
    select ad || ' ' ||soyad
    into v_ps_ismi
    from personel
    where personel_id = 5007;
    dbms_output.put_line('Personel Ýsmi : '||v_ps_ismi);
end;