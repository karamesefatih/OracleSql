declare
    type dep_table is table of departman%rowtype
        index by varchar2(5);
    t_dept dep_table;
begin
    select * into t_dept(1) from departman
    where dept_id=101;
    
    dbms_output.put_line('Dep Id: '||t_dept(1).dept_id
        || ', Dep İsmi : '||
        t_dept(1).dept_ismi);
end;

