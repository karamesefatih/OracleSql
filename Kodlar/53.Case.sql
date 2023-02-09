DECLARE
    v_derece number := &derece;
    v_hava_durumu varchar2(50);
begin
    v_hava_durumu :=
        case
            when v_derece <0                then '�ok So�uk'
            when v_derece between 0 and 16  then 'So�uk'
            when v_derece between 16 and 25 then 'Il�k'
            else 'S�cak'
        end;
    dbms_output.put_line('S�cakl�k: '|| v_derece || ' derece , Hava Durumu: '|| v_hava_durumu);
end;

