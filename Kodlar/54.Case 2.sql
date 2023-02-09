declare
    v_mevsim varchar2(20) := 'Yaz';
    v_hava_durumu varchar2(60);
begin
    v_hava_durumu :=
        case v_mevsim
            when '�lkbahar' then 'S�cakl�k : 15 - 25 Derece'
            when 'Yaz' then 'S�cakl�k : 25 - 35 Derece'
            when 'Sonbahar' then 'S�cakl�k : 5 - 15 Derece'
            when 'K��' then 'S�cakl�k : -25 - 5 Derece'
            else 'Bu bir mevsim de�ildir'
        end;
    dbms_output.put_line(v_mevsim||' - '||v_hava_durumu);
end;