use kitaplik
select * from kitap

select * from kitap where kitapTarih<'2016-01-01'

select * from kitap where kitapTarih<'2015-05-24'

select * from kitap where kitapFiyat>9 or kitapYay�nEvi='merk�r' order by kitapAd desc

select * from kitap where kitapYay�nEvi in('merk�r','ay','j�piter')

select * from kitap where kitapFiyat>=10 and kitapFiyat<20

select * from kitap where kitapFiyat between 10 and 20

