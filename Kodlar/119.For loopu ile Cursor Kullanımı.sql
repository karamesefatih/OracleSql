declare 
    cursor c_personel is
        select ad,soyad,maas from personel
        where unvan = 'UZMAN';
begin
    for v_per_record in c_personel loop 
    dbms_output.put_line(v_per_record.ad||' '||
                         v_per_record.soyad ||': '||
                         v_per_record.maas);
    end loop;
end;