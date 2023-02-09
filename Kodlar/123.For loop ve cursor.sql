begin
    for v_row in (select * from konum) loop
        dbms_output.put_line(v_row.konum_id||': '||
                             v_row.konum_adi);
    end loop;
end;