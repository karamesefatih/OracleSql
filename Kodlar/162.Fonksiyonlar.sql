create or replace function f_ucret_duzeyi(p_id number)
return varchar2
is
    v_ucret_duzey varchar2(30);
begin
    select uc.aciklama into v_ucret_duzey
    from personel pr,ucret_duzey uc
    where personel_id = p_id
        and pr.maas between uc.maas_alt_limit
        and uc.maas_ust_limit;
    return v_ucret_duzey;
end;