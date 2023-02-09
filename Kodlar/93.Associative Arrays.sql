set serveroutput on
DECLARE
    TYPE il_bilgi IS TABLE OF VARCHAR2(50)
    INDEX BY pls_integer;
    
    v_iller il_bilgi;
    c_ys varchar2(6) := chr(13)||chr(10);
BEGIN   
    v_iller(6)  :='ANKARA';
    v_iller(16) :='BURSA';
    v_iller(46) :='KAHRAMANMARAÞ';
    dbms_output.put_line(v_iller(6)  ||c_ys ||
                         v_iller(16) ||c_ys ||
                         v_iller(46));
END;