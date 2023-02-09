declare 
    v_prim number;
begin
    select prim into v_prim from personel
    where personel_id=5010;
    
    if v_prim is null then
        raise_application_error(-20009,'Personel primi hak ediyor');
    else
        dbms_output.put_line('Prim deðeri: '||v_prim);
    end if;
end;


