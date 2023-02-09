set serveroutput on
declare
    i   pls_integer :=0;
    j   pls_integer :=0;
begin
    loop
        j := 1;
        i := i+1;
        loop
            dbms_output.put_line(i || ' * '|| j || ' = ' || i*j);
            j:= j+1;
            exit when j=4;
        end loop;
        exit when i = 4;
    end loop;
end;