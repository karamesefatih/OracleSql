declare 
    v_per_ayr personel_ayrilan%rowtype;
begin
    select personel_id,ad,soyad,dept_id,cikis_tarihi into v_per_ayr
    from personel where personel_id =5020;
    
    insert into personel_ayrilan values v_per_ayr;
    commit;
end;