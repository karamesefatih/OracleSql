DECLARE
    v_sehir varchar2(50);
    v_ulke  varchar2(50)    := 'Türkiye';
begin
    dbms_output.put_line('Şehir İsmi: '|| v_sehir);
    v_sehir :='İstanbul';
    dbms_output.put_line('Şehir İsmi: '|| v_sehir);
    dbms_output.put_line('--------------------------------------');
    dbms_output.put_line('Ülke ismi: '|| v_ulke);
    v_ulke :='Almanya';
    dbms_output.put_line('Ülke İsmi: '|| v_ulke);
end;