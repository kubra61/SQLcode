use kitaplik

select * from kisiler
select * from kitap

select kitapYay�nEvi,COUNT(kitapAd) as 'kitap say�s�',
SUM(kitapFiyat) as 'alacak',
SUM(vergi) as 'verecek',
(SUM(kitapFiyat)-SUM(vergi)) as 'net bakiye'
from kitap group by kitapYay�nEvi having(SUM(kitapFiyat)-(SUM(vergi)))>15

select kitapYay�nEvi, COUNT(kitapAd) as 'kitap say�s�',
SUM(kitapFiyat) as 'alacak',
SUM(vergi) as 'verecek',
(SUM(kitapFiyat)-SUM(vergi)) as 'net bakiye'
from kitap group by kitapYay�nEvi HAVING kitapTarih BETWEEN '2015-09-01' AND '2015-10-01'

SELECT kitapYay�nEvi, 
       COUNT(kitapAd) AS 'kitap say�s�', 
       SUM(kitapFiyat) AS 'kitap fiyat'
FROM kitap
WHERE kitapTarih BETWEEN '2015-09-01' AND '2015-10-31'
GROUP BY kitapYay�nEvi;