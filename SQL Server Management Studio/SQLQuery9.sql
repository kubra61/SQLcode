use kitaplik

select * from kitap

delete from kitap where kitapNo=8

delete from kitap where kitapSayfa>880 or kitapFiyat=11

insert into kitap values(23,'beyaz geceler','dostoyevski',80,5,'2015-09-11','maviBulut')

insert into kitap values(24,'beyaz geceler','dostoyevski',80,5,'2015-09-11','maviBulut')

delete from kitap where kitapNo=24

select distinct kitapAd from kitap

select distinct kitapYayýnEvi from kitap

select distinct kitapYazar from kitap