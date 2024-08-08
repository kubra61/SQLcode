use kitaplik

select * from kisiler
select * from kitap

select kitapYayýnEvi,COUNT(kitapAd) as 'kitap sayýsý',
SUM(kitapFiyat) as 'alacak',
SUM(vergi) as 'verecek',
(SUM(kitapFiyat)-SUM(vergi)) as 'net bakiye'
from kitap group by kitapYayýnEvi having(SUM(kitapFiyat)-(SUM(vergi)))>15

select kitapYayýnEvi, COUNT(kitapAd) as 'kitap sayýsý',
SUM(kitapFiyat) as 'alacak',
SUM(vergi) as 'verecek',
(SUM(kitapFiyat)-SUM(vergi)) as 'net bakiye'
from kitap group by kitapYayýnEvi HAVING kitapTarih BETWEEN '2015-09-01' AND '2015-10-01'

SELECT kitapYayýnEvi, 
       COUNT(kitapAd) AS 'kitap sayýsý', 
       SUM(kitapFiyat) AS 'kitap fiyat'
FROM kitap
WHERE kitapTarih BETWEEN '2015-09-01' AND '2015-10-31'
GROUP BY kitapYayýnEvi;