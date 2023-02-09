set serveroutput on;
declare
    v_maas number;
begin
    select maas into v_maas from personel where personel_id =5000;
    dbms_output.put_line('Personelin Maaþý: '|| v_maas);
end;