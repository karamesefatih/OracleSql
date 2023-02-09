set SERVEROUTPUT on
DECLARE
    v_str varchar2(40) := 'PL/SQL-Eðitimi-Döngüler';
begin
    for i in reverse 1..length(v_str) loop
        dbms_output.put_line(substr(v_str,i,1));
    end loop;
end;
