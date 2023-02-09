set serveroutput on
declare
    type t_name_type is varray(2)
        of varchar2(20) not null;
    t_names t_name_type  := t_name_type('Mehmet','Mustafa');
    t_snames t_name_type := t_name_type();
begin
    dbms_output.put_line('�simlerin Say�s� : '||t_names.count);
    dbms_output.put_line('Soyisimlerin Say�s� : '||t_snames.count);
    
    dbms_output.put_line(t_names(1));
    dbms_output.put_line(t_names(2));
    
    --t_snames(1) := 'Kaya';Hata Verecektir
    t_snames.extend;
    t_snames(1) :='Kaya';
    t_snames.extend;
    t_snames(2) :='Karame�e';
    
    dbms_output.put_line(t_snames(1));
    dbms_output.put_line(t_snames(2));
    end;