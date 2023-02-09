declare
    cursor c_personel(cv_unvan varchar2) is
    select ad,soyad,maas from personel
    where unvan = cv_unvan;
begin
    dbms_output.put_line('........UZMANLAR..........');
    for v_per_record in c_personel('UZMAN') loop
    dbms_output.put_line(v_per_record.ad ||' '||
        v_per_record.soyad);
        if c_personel%rowcount > 5 then exit; end if;
    end loop;
    dbms_output.put_line('........MÜDÜRLER..........');
    for v_per_record in c_personel('MÜDÜR') loop
        dbms_output.put_line(v_per_record.ad ||' '||
                             v_per_record.soyad);
        if c_personel%rowcount > 5 then exit;end if;
    end loop;
end;