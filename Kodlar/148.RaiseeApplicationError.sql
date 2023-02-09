SET SERVEROUTPUT ON
DECLARE
    v_deger number := &deger;
BEGIN
    if v_deger >= 100 then
        raise_application_error(-20001,'100 den küçük bir deðer giriniz');
    else
        dbms_output.put_line('Teþekkürler');
    end if;
END;
            
            
            
            
            
            