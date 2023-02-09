create or replace function f_kesinti
(p_id personel.personel_id%type)
return number
is
    v_kesinti number;
begin
    select decode(unvan,
        'UZMAN', 0.05,
        'UZMAN', 0.08,
        'UZMAN', 0.20,
        0) * maas into v_kesinti
    from personel
    where personel_id = p_id;
    return v_kesinti;
end;
        