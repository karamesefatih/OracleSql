declare 
    cursor c_personel is
        select ad,maas from personel
        where personel_id = 5020;
    v_ad personel.ad%type;
    v_maas personel.maas%type;
begin
    open c_personel;
    fetch c_personel into v_ad,v_maas;
    dbms_output.put_line(v_ad||': '||v_maas);
end;


