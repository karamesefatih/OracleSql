SET SERVEROUTPUT ON;
DECLARE
    v_sayi number;
begin
    update personel_temp set maas = maas * 1.16
    where unvan ='M�D�R';
    v_sayi := SQL%ROWCOUNT;
    dbms_output.put_line('G�ncellenen veri say�s� : '|| v_sayi);
end;


--create table personel_temp as select * from personel;