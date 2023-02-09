set serveroutput on
declare
    cursor crs_personel(v_unvan varchar2) is
        select personel_id,ad,soyad,maas
        from personel
        where unvan = v_unvan
        for update;
begin   
    for row_prs in crs_personel('UZMAN') LOOP
        update personel set maas = maas*1.25
        where current of crs_personel;
    end loop;
end;


