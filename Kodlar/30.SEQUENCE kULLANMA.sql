create sequence sq_temp
start with 100 increment by 1;

DECLARE
    v_seq number;
begin
    v_seq := sq_temp.nextval;
    dbms_output.put_line('Sýra No: '|| v_seq);
    insert into konum values(sq_temp.nextval,'Yeni bir konum ekliyoruz',23);
end;