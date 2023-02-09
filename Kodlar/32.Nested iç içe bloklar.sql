declare
    v_disari varchar2(50):='Dýþtaki deðiþken';
begin
    declare
        v_iceri varchar2(50):='Ýçteki Deðiþken';
    begin
        dbms_output.put_line(v_disari);
        dbms_output.put_line(v_iceri);
    end;
    dbms_output.put_line(v_disari);
end;



    