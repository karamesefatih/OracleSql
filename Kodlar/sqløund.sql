DECLARE
    v_sayi NUMBER;
begin
    update konum set konum_adi = '�stanbul �ekmeK�y'
    where konum_id=5;
    v_sayi := sql%rowcount;
    if sql%found then 
        dbms_output.put_line('G�ncellenen Kay�t Say�s�: '|| v_sayi);
    else
        dbms_output.put_line('Kay�t Bulunamad�');
    end if;
end;