declare
    v_sonuc varchar2(20);
    v_not varchar2(1);
begin
    v_not := 'B';
    CASE v_not
        when 'A' then v_sonuc :='Çok Ýyi';
        when 'B' then v_sonuc :='Ýyi';
        when 'C' then v_sonuc :='Orta';
        when 'D' then v_sonuc :='Kötü';
        when 'F' then v_sonuc :='Çok Kötü';
    else
        v_sonuc := 'Böyle bir not yok';
    end case;
    dbms_output.put_line(v_sonuc);
end;