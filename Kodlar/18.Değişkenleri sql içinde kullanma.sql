Declare
    v_ad varchar2(50);
    v_maas number;
begin
    select maas,ad into v_maas,v_ad
    from personel
    where personel_id =5006;
    dbms_output.put_line('Ad�: '||v_Ad||',Maaa�� : '||v_maas );
end;