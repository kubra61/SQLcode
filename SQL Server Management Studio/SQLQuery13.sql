use kitaplik
select 20+4 as 'toplam'
select 20-4 as 'fark'

select 20+4 as 'toplam', 20-4 as 'fark',20*4 as 'çarpma',20/8 as 'bölüm'

select kitapAd,kitapFiyat,kitapFiyat+3 as'yeni fiyat' from kitap

select kitapAd + '-' + kitapYazar as 'kitaplik' from kitap

select SUBSTRING(kitapAd,1,5) from kitap

select LEFT(kitapAd,7) from kitap

select right(kitapAd,7) from kitap

select UPPER(kitapAd) as 'büyük harf',LOWER(kitapAd) as 'küçük harf' from kitap

select kitapAd,LEN(kitapAd) as 'karakter sayýsý' from kitap where LEN(kitapAd) >15

select kitapAd,REPLACE(kitapYazar,'zülfü livaneli','z.livaneli') from kitap

