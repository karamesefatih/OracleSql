create view vw_konum_bilgi as
select ad, soyad, semt, konum_adi
from personel pr,konum kn
where kn.konum_id = pr.konum_id
