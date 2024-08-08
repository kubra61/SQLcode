insert into kitap values(20,'insan ne ile yaþar','tolstoy',110,5,'2016-08-12','maviBulut') 

select * from kitap

insert into kitap (kitapNo,kitapAd,kitapSayfa,kitapTarih,kitapYayýnEvi) 
values (21,'suç ve ceza',1250,'2016-07-19','merkür')

delete from kitap where kitapNo=21

update kitap set kitapYazar='dostoyevski', kitapFiyat=22 where kitapAd='suç ve ceza'

update kitap set kitapFiyat=5 where kitapFiyat<5

update kitap set kitapFiyat=10*1.20 where kitapFiyat=10