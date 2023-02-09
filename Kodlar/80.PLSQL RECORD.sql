declare
    type type_perso is record
    (
        v_adi varchar2(30),
        v_soyadi personel.soyad%type,
        v_maas number,
        v_izin_gunu pls_integer
    );
    v_personel type_perso;
begin
    v_personel.v_adi := 'Fatih';
    v_personel.v_soyadi :='Karameþe';
    v_personel.v_maas := 2000;
    v_personel.v_izin_gunu :=25;
    
    dbms_output.put_line('Adý: '||v_personel.v_adi);
    dbms_output.put_line('Soyadý: '||v_personel.v_soyadi);
    dbms_output.put_line('Maaþý: '||v_personel.v_maas);
    dbms_output.put_line('Ýzin Günü: '||v_personel.v_izin_gunu);
end;
                