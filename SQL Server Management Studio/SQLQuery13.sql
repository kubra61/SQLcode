use kitaplik
select 20+4 as 'toplam'
select 20-4 as 'fark'

select 20+4 as 'toplam', 20-4 as 'fark',20*4 as '�arpma',20/8 as 'b�l�m'

select kitapAd,kitapFiyat,kitapFiyat+3 as'yeni fiyat' from kitap

select kitapAd + '-' + kitapYazar as 'kitaplik' from kitap

select SUBSTRING(kitapAd,1,5) from kitap

select LEFT(kitapAd,7) from kitap

select right(kitapAd,7) from kitap

select UPPER(kitapAd) as 'b�y�k harf',LOWER(kitapAd) as 'k���k harf' from kitap

select kitapAd,LEN(kitapAd) as 'karakter say�s�' from kitap where LEN(kitapAd) >15

select kitapAd,REPLACE(kitapYazar,'z�lf� livaneli','z.livaneli') from kitap

