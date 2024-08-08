use kitaplik
select * from kitap

select kitapYazar,COUNT(kitapAd) as 'kitapSayisi' from kitap group by kitapYazar

select kitapAd,COUNT(kitapAd) as 'stok' from kitap group by kitapAd

select kitapYayýnEvi,COUNT(kitapAd) as 'kitapSayisi' from kitap group by kitapYayýnEvi order by kitapYayýnEvi asc

select kitapYayýnEvi, COUNT(kitapAd) as 'YayinlananKitapSayisi' from kitap group by kitapYayýnEvi order by YayinlananKitapSayisi asc

select kitapYayýnEvi, SUM(kitapFiyat) as 'toplamFiyat' from kitap group by kitapYayýnEvi

select kitapYayýnEvi, AVG(kitapFiyat) as 'fiyatOrtalama' from kitap group by kitapYayýnEvi

select kitapYayýnEvi, MAX(kitapFiyat) as 'enYüksekFiyat', MIN(kitapFiyat) as 'enDüsükFiyat' from kitap group by kitapYayýnEvi

select kitapYayýnEvi, COUNT(kitapAd) as'kitapSayisi' from kitap where kitapFiyat > 10 group by kitapYayýnEvi