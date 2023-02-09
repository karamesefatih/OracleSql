
select yn.yonetici_id, ps.ad,ps.soyad,
    ps.unvan, pk.konum_adi,
    (ps.maas + nvl(ps.prim,0)) gelir
from yonetici yn,personel ps,konum pk
where ps.personel_id = yn.personel_id
    and ps.konum_id = pk.konum_id;
