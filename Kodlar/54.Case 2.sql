declare
    v_mevsim varchar2(20) := 'Yaz';
    v_hava_durumu varchar2(60);
begin
    v_hava_durumu :=
        case v_mevsim
            when 'Ýlkbahar' then 'Sýcaklýk : 15 - 25 Derece'
            when 'Yaz' then 'Sýcaklýk : 25 - 35 Derece'
            when 'Sonbahar' then 'Sýcaklýk : 5 - 15 Derece'
            when 'Kýþ' then 'Sýcaklýk : -25 - 5 Derece'
            else 'Bu bir mevsim deðildir'
        end;
    dbms_output.put_line(v_mevsim||' - '||v_hava_durumu);
end;