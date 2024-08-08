-- aggregate functions
--sql icinde kullanıcıların genel olarak kullanma gereksinimi duydugu metotları sql devaloper
--sistematik olarak kullanıcılara kolaylık sağlanması adına sunulmuştur

--min(),max(),count(),sum(),avg()

--count()-->verilen field içindeki data sayısını bulur
--sum()-->verilen field içindeki dataların toplama sonucunun değerini bulur
--avg()-->verilen field içeresinde ortalama değeri bulur

CREATE TABLE calisanlar2 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO markalar VALUES(100,'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);
INSERT INTO markalar VALUES(104, 'Nike', 19000);

select * from calisanlar2
select * from markalar

select min(maas) from calisanlar2;
select max(maas) as maximum_maas from calisanlar2;

--çalışanlar tab. maasların ort

select avg(maas) as averege_maas from calisanlar2;

--çalışanlar tab. maasların toplam işçi sayısı

select count(isim) as toplam_isci_sayisi from calisanlar2;

--çalışanlar tab. toplam maaşları

select sum(maas) as toplam_maas_miktarı from calisanlar2;

select round(avg(maas),2) as average_maas from calisanlar2;--virgülden sonra istediğimiz kadar rakam gösterme

select marka_id,marka_isim from markalar

select marka_isim,calisan_sayisi,
(select max(maas) from calisanlar2 where isyeri=marka_isim)
from markalar;