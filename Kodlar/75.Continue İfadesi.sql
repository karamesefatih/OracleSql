set serveroutput on
declare
    a integer :=0;
begin
    while a<20 loop
        a:=a+1;
        if mod(a,5)=0 then
            continue;
        end if;
        dbms_output.put_line('a: '||a);
    end loop;
end;