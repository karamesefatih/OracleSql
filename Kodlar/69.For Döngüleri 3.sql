set serveroutput on
declare
    v_min_id departman.dept_id%type;
    v_dep_ismi departman.dept_ismi%type;
begin
    select min(dept_id) into v_min_id
    from departman;
    
    for i in 1..10 loop
        select dept_ismi into
        v_dep_ismi from departman
        where dept_id = v_min_id + i;
        
        dbms_output.put_line(v_min_id + i || ':' || v_dep_ismi);
    end loop;
end;