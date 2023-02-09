Declare 
    v_deger number := 1234.567;
    v_str varchar2(50) := 'Oracle eðitiminde baþarýlar';
begin
    dbms_output.put_line(INSTR(v_str,'Oracle'));
   -- dbms_output.put_line(CONCAT('Fatih','Karameþe'));
   -- dbms_output.put_line(TO_CHAR(v_deger));
   -- dbms_output.put_line(LOWER(v_str));
   -- dbms_output.put_line(SUBSTR(v_str,8,7));
   -- dbms_output.put_line(REPLACE(v_str,'baþarýlar','kolay gelsin'));
   -- dbms_output.put_line(ROUND(v_deger,2));
   -- dbms_output.put_line(LAST_DAY(SYSDATE));
end;