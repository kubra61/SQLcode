use kitaplik

select *from kitap

insert into kitap values(25,'k�rk mantolu madonna','sabahattin ali',160,9,'2016-04-07','j�piter')

select * from kitap order by kitapNo

select * from kitap order by kitapAd

select * from kitap order by kitapAd asc

select * from kitap order by kitapAd desc

select * from kitap order by kitapNo desc

select * from kitap order by kitapSayfa desc

select * from kitap order by kitapYay�nEvi, kitapFiyat asc

select kitapFiyat as 'kitap �creti',kitapAd as 'kitap ismi' from kitap

select kitapAd,kitapYazar,kitapFiyat,kitapFiyat+2 as 'yeni fiyat' from kitap