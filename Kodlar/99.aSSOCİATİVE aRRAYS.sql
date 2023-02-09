set serveroutput ON
declare 
    type ulke is table of varchar2(30)
        index by varchar(2);
    t_ulkeler ulke;
    v_index varchar(2);
begin
    t_ulkeler('TR') :='Turkey';
    t_ulkeler('UK') :='United Kingdom';
    t_ulkeler('FR') :='France';
    t_ulkeler('DE') :='German';
    t_ulkeler('US') :='United States';
    t_ulkeler('AU') :='Australia';
    
    v_index := t_ulkeler.first;
    
    while v_index is not null loop
    dbms_output.put_line(v_index || ': ' || t_ulkeler(v_index));
    v_index := t_ulkeler.next(v_index);
    end loop;    
end;