set serveroutput on
begin 
    for i in 1..10 loop
        dbms_output.put_line(i|| '.say�');
    end loop;
end;