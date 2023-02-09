set serveroutput on;
begin 
    update personel
    set maas = 3000
    where personel_id = 5010;
    if sql%notfound then
        dbms_output.put_line('Personel bulunamadý');
    elsif sql%found then
        dbms_output.put_line('Güncellenen kayýt sayýsý: '||sql%rowcount);
    end if;
end;