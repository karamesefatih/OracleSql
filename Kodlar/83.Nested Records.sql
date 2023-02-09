set serveroutput on
declare 
    type adres_type is record
    (
    ilce varchar2(255),
    sehir varchar2(100),
    ulke varchar2(100)
    );
    type musteri_type is record
    (
        musteri_ismi varchar2(100),
        teslim_adresi adres_type,
        fat_adresi adres_type
    );
    v_musteri musteri_type;
begin
    v_musteri.musteri_ismi := 'Barış Gökçe';
    v_musteri.teslim_Adresi.ilce := 'Karatay';
    v_musteri.teslim_Adresi.sehir := 'Konya';
    v_musteri.teslim_Adresi.ulke := 'Türkiye';
    v_musteri.fat_adresi := v_musteri.teslim_adresi;
    dbms_output.put_line(v_musteri.fat_adresi.ilce);
end;