set serveroutput on;
begin 
    update personel
    set maas = 3000
    where personel_id = 5010;
    if sql%notfound then
        dbms_output.put_line('Personel bulunamad�');
    elsif sql%found then
        dbms_output.put_line('G�ncellenen kay�t say�s�: '||sql%rowcount);
    end if;
end;