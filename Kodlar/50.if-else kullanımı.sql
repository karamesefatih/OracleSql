declare 
    maas number := 1001;
begin
    if maas<2000 then
        dbms_output.put_line('D���k Maa�');
    elsif maas between 2001 and 4000 then
        dbms_output.put_line('Orta Maa�');
    else
        dbms_output.put_line('Y�ksek Maa�');
    end if;
end;