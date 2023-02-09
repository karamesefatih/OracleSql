SET SERVEROUTPUT ON
DECLARE
    TYPE dep_table is table of departman%rowtype
        index by varchar2(5);
    t_dept dep_table;
BEGIN
    for i in 1..10 loop
        select * into t_dept(i) from departman
        where dept_id = 100 + i;
    end loop;
    for i in 1..10 loop
        dbms_output.put_line('Dep ID : ' || t_dept(i).dept_id
        || ',Dep Ýsmi : ' || t_dept(i).dept_ismi);
    end loop;
END;