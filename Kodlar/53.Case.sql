DECLARE
    v_derece number := &derece;
    v_hava_durumu varchar2(50);
begin
    v_hava_durumu :=
        case
            when v_derece <0                then 'Çok Soðuk'
            when v_derece between 0 and 16  then 'Soðuk'
            when v_derece between 16 and 25 then 'Ilýk'
            else 'Sýcak'
        end;
    dbms_output.put_line('Sýcaklýk: '|| v_derece || ' derece , Hava Durumu: '|| v_hava_durumu);
end;

