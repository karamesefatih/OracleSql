set serveroutput on
declare 
    e_departman exception;
    e_adet exception;
    
    cursor c_depart is
        select dept_id,count(*) adet
        from personel group by dept_id;
begin
    for row_d in c_depart loop
        begin
        if row_d.dept_id=104 then 
            raise e_departman;
        end if;
        dbms_output.put_line('Dep.No: '|| row_d.dept_id||',Adet : '||row_d.adet);
        
        if row_d.adet <5 then
           raise e_adet;
        end if;
        
        exception
            when e_adet then
                dbms_output.put_line('xxxxxxxDep No: '||row_d.dept_id||',Adet: '||row_d.adet);
        end;
    end loop;
    exception
    when e_departman then
        dbms_output.put_line('!GÜVENLÝK ÝHLALÝ!');
END;