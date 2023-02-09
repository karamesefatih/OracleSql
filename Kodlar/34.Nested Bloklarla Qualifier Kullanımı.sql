begin <<outer>>
declare
    v_ulke varchar2(50):='Dış-Türkiye';
    v_sehir varchar2(50):='Dış-Ankara';
begin
    declare
        v_sehir varchar2(50) := 'İç-İstanbul';
        v_ilce varchar2(50) := 'İç-Çekmeköy';
        --v_ulke varchar2(50):='Dış-Almanya';
    begin
        dbms_output.put_line(v_ulke);
        dbms_output.put_line(v_sehir);
        dbms_output.put_line(outer.v_sehir);
        dbms_output.put_line(v_ilce);
    end;
end;
end outer;

