declare
    v_name varchar2(25);
    v_ecode number;
    v_emesg varchar2(1000);
begin
    select ad into v_name from personel
    where unvan ='UZMAN';
----WHERE PERSONEL_ID = 5010
    dbms_output.put_line('Bölme Ýþlemi: '|| 1/0);
    exception
        when others then
            --rollback
            v_ecode := SQLCODE;
            v_emesg := SQLERRM;
            insert into hata_bilgileri
            values (sysdate,v_ecode,v_emesg);
end;
