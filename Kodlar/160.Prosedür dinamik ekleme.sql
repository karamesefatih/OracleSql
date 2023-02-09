
exec faaliyet_ekle;
exec faaliyet_ekle(7);
exec faaliyet_ekle(10,'Haftalýk Raporlar');
exec faaliyet_ekle(1,'Yýlbaþý Partisi',to_date('31.12.2020','dd.mm.yy'));
select * from faaliyetler;
