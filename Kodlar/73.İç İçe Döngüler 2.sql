set serveroutput on
declare
    i number := 2;
    j number;
begin 
    loop
        j:=2;
        loop
            exit when ((mod(i,j)=0) or (j=1));
            j:=j+1;
        end loop;
        
        if (j=i) then
            dbms_output.put_line(i || ' : asal sayýdýr');
        end if;
        
        i:=i+1;
        exit when i = 50;
    end loop;
end;