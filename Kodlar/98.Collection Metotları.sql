set serveroutput ON
declare 
    type ulke is table of varchar2(30)
        index by varchar(2);
    t_ulkeler ulke;
begin
    t_ulkeler('TR') :='Turkey';
    t_ulkeler('UK') :='United Kingdom';
    t_ulkeler('FR') :='France';
    t_ulkeler('DE') :='German';
    t_ulkeler('US') :='United States';
    t_ulkeler('AU') :='Australia';
    
    dbms_output.put_line(t_ulkeler.first);
    dbms_output.put_line(t_ulkeler.last);
    dbms_output.put_line(t_ulkeler.count);
    dbms_output.put_line(t_ulkeler.prior('TR'));
    dbms_output.put_line(t_ulkeler.next('UK'));
    
    t_ulkeler.delete('FR');
    dbms_output.put_line(t_ulkeler.count);
    
    if not t_ulkeler.exists('FR') then
    dbms_output.put_line('FR silinmiþtir');
    end if;    
end;