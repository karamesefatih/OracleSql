set serveroutput on
declare
    type isim_type is table of varchar2(10);
    type derece_type is table of integer;
    
    isimler isim_type;
    dereceler derece_type;
    toplam integer;
begin
    isimler := isim_type('Ahmet','Mesut','Adem','Ömer','Seyhan');
    dereceler := derece_type(98,97,78,87,92);
    toplam := isimler.count;
    dbms_output.put_line('Toplam öðrenci sayýsý : '||toplam);
    for i in 1 .. toplam loop
        dbms_output.put_line('Öðrenci: '||isimler(i)||',Derece: '|| dereceler(i));
    end loop;
end;