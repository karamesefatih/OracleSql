declare 
    v_max_id number;
begin
    select max(dept_id) into v_max_id
    from departman;
    
    insert into departman
    values(v_max_id + 1,'Yeni Departman');
    commit;
end;