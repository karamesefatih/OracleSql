create view vw_uzman as
select * from personel where unvan ='UZMAN';
SELECT * FROM vw_uzman;
update vw_uzman set konum_id = 5 where prim > 0;

