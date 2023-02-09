declare 
    maas number := 1001;
begin
    if maas<2000 then
        dbms_output.put_line('Düþük Maaþ');
    elsif maas between 2001 and 4000 then
        dbms_output.put_line('Orta Maaþ');
    else
        dbms_output.put_line('Yüksek Maaþ');
    end if;
end;