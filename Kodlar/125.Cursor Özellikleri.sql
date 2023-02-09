set serveroutput on
declare
    cursor c_personel is
        select ad,soyad,maas from personel
        where unvan ='UZMAN';
    v_per_record c_personel%rowtype;
begin
    if not c_personel%isopen then
        open c_personel;
    end if;
    loop
        fetch c_personel into v_per_record;
        exit when c_personel%notfound or c_personel%rowcount >12;
        dbms_output.put_line(c_personel%rowcount||', '||
        v_per_record.ad ||' '||v_per_record.soyad);
    end loop;
end;