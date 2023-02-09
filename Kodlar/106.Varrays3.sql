set serveroutput on
declare
    type ay_type is varray(12)
        of varchar2(20) not null;
    type gun_type is varray(7)
        of varchar2(20) not null;
    
    v_aylar ay_type := ay_type('Ocak','�ubat','Mart','Nisan',
    'May�s','Haziran','Temmuz','A�ustos','Eyl�l','Ekim','Kas�m','Aral�k');
    v_gunler gun_type := gun_type('Pazartesi','Sal�','�ar�amba','Per�embe',
    'Cuma','Cumartesi','Pazar');
    v_ay_no simple_integer :=1;
    v_gun_no simple_integer :=1;
begin
    dbms_output.put_line(v_aylar(v_ay_no));
    dbms_output.put_line(v_gunler(v_gun_no));
end;