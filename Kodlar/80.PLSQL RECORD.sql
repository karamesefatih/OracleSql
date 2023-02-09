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
    v_personel.v_soyadi :='Karame�e';
    v_personel.v_maas := 2000;
    v_personel.v_izin_gunu :=25;
    
    dbms_output.put_line('Ad�: '||v_personel.v_adi);
    dbms_output.put_line('Soyad�: '||v_personel.v_soyadi);
    dbms_output.put_line('Maa��: '||v_personel.v_maas);
    dbms_output.put_line('�zin G�n�: '||v_personel.v_izin_gunu);
end;
                