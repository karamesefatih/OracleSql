begin
    update personel set maas = maas + maas *(21/100)
    where unvan = 'M�HEND�S';
    update personel set maas = maas + maas *(25/100)
    where unvan = 'UZMAN';
    update personel set maas = maas + maas *(18/100)
    where unvan = 'M�D�R';
end;