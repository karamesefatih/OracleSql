DECLARE
    v_sayi NUMBER;
begin
    update konum set konum_adi = 'Ýstanbul ÇekmeKöy'
    where konum_id=5;
    v_sayi := sql%rowcount;
    if sql%found then 
        dbms_output.put_line('Güncellenen Kayýt Sayýsý: '|| v_sayi);
    else
        dbms_output.put_line('Kayýt Bulunamadý');
    end if;
end;