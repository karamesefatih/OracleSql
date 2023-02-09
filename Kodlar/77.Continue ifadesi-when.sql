set serveroutput on
begin
    for SAYAC IN 1..20 LOOP
    continue when mod(sayac,2)=1;
    dbms_output.put_line(sayac);
    END LOOP;
end;