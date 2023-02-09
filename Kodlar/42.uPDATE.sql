begin
    update personel set maas = maas + maas *(21/100)
    where unvan = 'MÜHENDÝS';
    update personel set maas = maas + maas *(25/100)
    where unvan = 'UZMAN';
    update personel set maas = maas + maas *(18/100)
    where unvan = 'MÜDÜR';
end;