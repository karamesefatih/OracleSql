create or replace procedure uzman_yazdir is
    cursor c_personel is
        select ad,soyad,maas from personel
        where unvan ='UZMAN';
begin
    for row_per in c_personel loop
        dbms_output.put_line(row_per.ad||' '||
                              row_per.soyad||' '||
                              row_per.maas);
        end loop;
end;