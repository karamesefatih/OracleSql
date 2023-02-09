Declare
    v_ad varchar2(50);
    v_maas number;
begin
    select maas,ad into v_maas,v_ad
    from personel
    where personel_id =5006;
    dbms_output.put_line('Adý: '||v_Ad||',Maaaþý : '||v_maas );
end;