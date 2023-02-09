select ad,soyad,unvan,
    f_kesinti(personel_id)kesinti
from personel
order by 4 desc

select dept_id
    max(f_kesinti(personel_id)) maks_kesinti
from personel
group by dept_id


