select ad,soyad,maas,
    f_ucret_duzeyi(personel_id) ucret_duzeyi
from personel


select ucret_duzeyi,count(*) adet from
(
    select f_ucret_duzeyi(personel_id) ucret_duzeyi
    from personel
)
group by ucret_duzeyi
    