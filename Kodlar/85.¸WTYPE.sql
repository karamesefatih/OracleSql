set SERVEROUTPUT on
declare
    v_perso personel%rowtype;
begin
    select * into v_perso from personel
    where personel_id = 5060;
    dbms_output.put_line(
    v_perso.ad  || '' ||
    v_perso.soyad || ',' ||
    v_perso.unvan);
end;