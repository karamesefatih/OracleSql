set serveroutput on
declare
    type kitap_type is record
        (
         baslik varchar(50),
         yazar varchar(50),
         kitap_id number
         );
    kitap1 kitap_type;
    kitap2 kitap_type;
begin 
    kitap1.baslik := 'Nutuk';
    kitap1.yazar := 'Mustafa Kemal Atat�rk';
    kitap1.kitap_id := 123456;
    
    kitap2.baslik := 'Ate�ten G�mlek';
    kitap2.yazar := 'Halide Edip Ad�var';
    kitap2.kitap_id := 659847;
    
    dbms_output.put_line('Kitap 1 ba�l�k: ' || kitap1.baslik);
    dbms_output.put_line('Kitap 1 yazar: ' || kitap1.yazar);
    dbms_output.put_line('Kitap 1 id: ' || kitap1.kitap_id);
    
    dbms_output.put_line('Kitap 2 ba�l�k: ' || kitap2.baslik);
    dbms_output.put_line('Kitap 2 yazar: ' || kitap2.yazar);
    dbms_output.put_line('Kitap 2 id: ' || kitap2.kitap_id);
end;