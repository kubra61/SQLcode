use kitaplik
select * from kitap

select kitapYazar,COUNT(kitapAd) as 'kitapSayisi' from kitap group by kitapYazar

select kitapAd,COUNT(kitapAd) as 'stok' from kitap group by kitapAd

select kitapYay�nEvi,COUNT(kitapAd) as 'kitapSayisi' from kitap group by kitapYay�nEvi order by kitapYay�nEvi asc

select kitapYay�nEvi, COUNT(kitapAd) as 'YayinlananKitapSayisi' from kitap group by kitapYay�nEvi order by YayinlananKitapSayisi asc

select kitapYay�nEvi, SUM(kitapFiyat) as 'toplamFiyat' from kitap group by kitapYay�nEvi

select kitapYay�nEvi, AVG(kitapFiyat) as 'fiyatOrtalama' from kitap group by kitapYay�nEvi

select kitapYay�nEvi, MAX(kitapFiyat) as 'enY�ksekFiyat', MIN(kitapFiyat) as 'enD�s�kFiyat' from kitap group by kitapYay�nEvi

select kitapYay�nEvi, COUNT(kitapAd) as'kitapSayisi' from kitap where kitapFiyat > 10 group by kitapYay�nEvi