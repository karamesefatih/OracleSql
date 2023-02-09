set serveroutput on
declare
    e1 exception;
    e2 exception;
    e3 exception;
begin
    begin
        exception
            when e1 then 
                statements;
    end;
    for i in 1..100 loop
        begin
            statements;
            exception
                when e2 then statements;
        end;
    end loop;
    exception
        when e3
            then statements;
end;