set serveroutput on
create procedure faaliyet_ekle
    (
        p_f_id  number := -1,
        p_f_adi varchar2 default 'Doğum Günü',
        p_f_gunu date default sysdate
    )
is
begin
    insert into faaliyetler values(p_f_id,p_f_adi,p_f_gunu);
    commit;
end;
    