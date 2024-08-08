use kitaplik
insert into kisiler values 
(1,'baran','y�ld�z','veteriner','bursa' ,2500) ,
(2,'ahmet','g�ne�','doktor','ankara' ,5000) ,
 (3,'hakan','ay','��retmen','trabzon' ,2200) ,
(4,'ay�e','kaya','��retmen','manisa' ,2300) , 
(5,'tekin','aslan','diyetisyen','izmir' ,2500) ,
(6,'nam�k','kaplan','avukat','izmir' ,3600) ,
 (7,'emel','y�lmaz','oyuncu','ayd�n' ,3300) , 
(8,'tuna','y�lmaz','oyuncu','denizli' ,3200) ,
 (9,'mehmet','�zt�rk','m�hendis','bursa' ,2600) , 
(10,'salih','ay','veteriner','ankara' ,2400) , 
(11,'cenk','kilit','��retmen','istanbul' ,2200) , 
(12,'atakan','�en','��retmen','ankara' ,2000) ,
 (13,'yunus','kal�n','oyuncu','bursa' ,3500) , 
(14,'eyl�l','y�ce','avukat','adana' ,4000) ,
 (15,'bahar','�z','eczac�','�anl�urfa' ,3700) , 
(16,'nisan','y�ce','m�hendis','antalya' ,2500) , 
(17,'dilek','tuna','m�hendis','konya' ,2600) ,
 (18,'davut','aslan','eczac�','bal�kesir' ,3200) ,
 (19,'y�ld�r�m','ya�mur','��retmen','bal�kesir',2100), 
(20,'hakan','ya�mur','doktor','bal�kesir' ,4800) , 
(21,'ali','teke','tekniker','adana' ,2000) , 
(22,'mehmet','kale','m�hendis','bursa' ,2600) , 
(23,'kaan','tuna','��retmen','edirne' ,2300) ,
 (24,'ahmet','toprak','��retmen','kahramanmara�' ,2400) ,
 (25,'veysel','��nar','doktor','ankara' ,4500) , 
(26,'�zg�r','me�e','eczac�','istanbul' ,3500) ,
 (27,'cihan','�i�ek','m�hendis','adana' ,2700) ,
 (28,'mesut','y�ce','m�hendis','mersin' ,2600) , 
(29,'mehmet','papatya','��retmen','elaz��' ,2300) , 
(30,'semih','demir','oyuncu','malatya' ,3200)

select * from kisiler

select meslek,COUNT(ad) as 'personel say�s�' from kisiler group by meslek order by COUNT(ad)

select sehir, COUNT(ad) as'sehirde yasayanlar' from kisiler group by sehir order by COUNT(ad) desc

select meslek,COUNT(ad) as 'kisi say�s�',SUM(maas) as 'toplam maas' from kisiler group by meslek order by COUNT(maas) desc

select meslek,AVG(maas) as 'ortalama maas' from kisiler group by meslek