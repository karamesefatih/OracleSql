set serveroutput on
declare
    type type_perso is record
    (
        ad      personel.ad%type,
        soyad   personel.soyad%type,
        maas    personel.maas%type,
        giris   personel.giris_tarihi%type
    );
    v_personel type_perso;
begin 
    select ad,soyad,maas,giris_tarihi into v_personel
    from personel where personel_id = 5020;
    
    dbms_output.put_line('Adý: '|| v_personel.ad);
    dbms_output.put_line('Soyadý: '|| v_personel.soyad);
    dbms_output.put_line('Maaþ: '|| v_personel.maas);
    dbms_output.put_line('Giriþ: '|| v_personel.giris);
end;

    