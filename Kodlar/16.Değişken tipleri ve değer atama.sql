DECLARE
    v_sehir varchar2(50);
    v_ulke  varchar2(50)    := 'T�rkiye';
begin
    dbms_output.put_line('�ehir �smi: '|| v_sehir);
    v_sehir :='�stanbul';
    dbms_output.put_line('�ehir �smi: '|| v_sehir);
    dbms_output.put_line('--------------------------------------');
    dbms_output.put_line('�lke ismi: '|| v_ulke);
    v_ulke :='Almanya';
    dbms_output.put_line('�lke �smi: '|| v_ulke);
end;