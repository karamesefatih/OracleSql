declare
    v_sonuc varchar2(20);
    v_not varchar2(1);
begin
    v_not := 'B';
    CASE v_not
        when 'A' then v_sonuc :='�ok �yi';
        when 'B' then v_sonuc :='�yi';
        when 'C' then v_sonuc :='Orta';
        when 'D' then v_sonuc :='K�t�';
        when 'F' then v_sonuc :='�ok K�t�';
    else
        v_sonuc := 'B�yle bir not yok';
    end case;
    dbms_output.put_line(v_sonuc);
end;