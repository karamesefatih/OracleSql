set serveroutput on
declare
    type per_bilgi_type is record
    (
    id pls_integer,
    isim varchar2(30),
    maas number
    );
    type personeller_type is table of per_bilgi_type
        index by pls_integer;
        
    v_perss personeller_type;
begin

    v_perss(1).id :=10;
    v_perss(1).isim :='Ahmet';
    v_perss(1).maas :=5000;
    
    v_perss(2).id :=11;
    v_perss(2).isim :='Mehmet';
    v_perss(2).maas :=7000;
    
    dbms_output.put_line(v_perss(1).id||'-'||v_perss(1).isim||'-'||v_perss(1).maas);    
    dbms_output.put_line(v_perss(2).id||'-'||v_perss(2).isim||'-'||v_perss(2).maas);    

end;

