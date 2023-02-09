set serveroutput on;
DECLARE
    v_sayac   pls_integer := 0;
    v_ps_id   pls_integer;
    v_ad      varchar2(50);
    v_soyad   varchar2(40);
BEGIN
    LOOP
        v_sayac := v_sayac +1;
        
        v_ps_id := dbms_random.value(5000,5020);
        
        select ad,soyad into v_ad,v_soyad
        from personel where personel_id = v_ps_id;
        
        dbms_output.put_line(v_ps_id || ':' || v_ad || ''|| v_soyad);
        
        EXIT WHEN v_sayac =10;
    END LOOP;
END;