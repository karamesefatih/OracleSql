
CREATE OR REPLACE PROCEDURE konum_ekle(
        p_konum_id konum.konum_id%type,
        p_konum_adi varchar2,
        p_il_kodu number)
is
begin
    insert into konum
    values(p_konum_id,p_konum_adi,p_il_kodu);
    commit;
end;