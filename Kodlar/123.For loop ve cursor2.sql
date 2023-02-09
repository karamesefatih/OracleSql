begin
    for v_row in (select personel_id,ad,soyad,maas
    from personel where unvan ='UZMAN') loop
        dbms_output.put_line(v_row.personel_id||': '||
                             v_row.ad||' '||v_row.soyad||' '||
                             v_row.maas);
    end loop;
end;