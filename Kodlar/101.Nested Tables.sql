declare 
    type isim_type is table of varchar2(30);
    v_isimler isim_type;
begin
    v_isimler := isim_type('Ali','Veli','Ayþe');
    v_isimler.extend;
    v_isimler(v_isimler.count) := 'Fatma';
    
    for i in v_isimler.first..v_isimler.last loop
        dbms_output.put_line(v_isimler(i));
    end loop;
end;