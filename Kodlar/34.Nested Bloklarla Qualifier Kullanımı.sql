begin <<outer>>
declare
    v_ulke varchar2(50):='D��-T�rkiye';
    v_sehir varchar2(50):='D��-Ankara';
begin
    declare
        v_sehir varchar2(50) := '��-�stanbul';
        v_ilce varchar2(50) := '��-�ekmek�y';
        --v_ulke varchar2(50):='D��-Almanya';
    begin
        dbms_output.put_line(v_ulke);
        dbms_output.put_line(v_sehir);
        dbms_output.put_line(outer.v_sehir);
        dbms_output.put_line(v_ilce);
    end;
end;
end outer;

