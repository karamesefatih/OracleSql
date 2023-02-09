DECLARE
    v_dept_id departman.dept_id%type := 100;
begin
    delete from departman
    where dept_id = v_dept_id;
end;