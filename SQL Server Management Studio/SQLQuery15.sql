use kitaplik
insert into kisiler values 
(1,'baran','yýldýz','veteriner','bursa' ,2500) ,
(2,'ahmet','güneþ','doktor','ankara' ,5000) ,
 (3,'hakan','ay','öðretmen','trabzon' ,2200) ,
(4,'ayþe','kaya','öðretmen','manisa' ,2300) , 
(5,'tekin','aslan','diyetisyen','izmir' ,2500) ,
(6,'namýk','kaplan','avukat','izmir' ,3600) ,
 (7,'emel','yýlmaz','oyuncu','aydýn' ,3300) , 
(8,'tuna','yýlmaz','oyuncu','denizli' ,3200) ,
 (9,'mehmet','öztürk','mühendis','bursa' ,2600) , 
(10,'salih','ay','veteriner','ankara' ,2400) , 
(11,'cenk','kilit','öðretmen','istanbul' ,2200) , 
(12,'atakan','þen','öðretmen','ankara' ,2000) ,
 (13,'yunus','kalýn','oyuncu','bursa' ,3500) , 
(14,'eylül','yüce','avukat','adana' ,4000) ,
 (15,'bahar','öz','eczacý','þanlýurfa' ,3700) , 
(16,'nisan','yüce','mühendis','antalya' ,2500) , 
(17,'dilek','tuna','mühendis','konya' ,2600) ,
 (18,'davut','aslan','eczacý','balýkesir' ,3200) ,
 (19,'yýldýrým','yaðmur','öðretmen','balýkesir',2100), 
(20,'hakan','yaðmur','doktor','balýkesir' ,4800) , 
(21,'ali','teke','tekniker','adana' ,2000) , 
(22,'mehmet','kale','mühendis','bursa' ,2600) , 
(23,'kaan','tuna','öðretmen','edirne' ,2300) ,
 (24,'ahmet','toprak','öðretmen','kahramanmaraþ' ,2400) ,
 (25,'veysel','çýnar','doktor','ankara' ,4500) , 
(26,'özgür','meþe','eczacý','istanbul' ,3500) ,
 (27,'cihan','çiçek','mühendis','adana' ,2700) ,
 (28,'mesut','yüce','mühendis','mersin' ,2600) , 
(29,'mehmet','papatya','öðretmen','elazýð' ,2300) , 
(30,'semih','demir','oyuncu','malatya' ,3200)

select * from kisiler

select meslek,COUNT(ad) as 'personel sayýsý' from kisiler group by meslek order by COUNT(ad)

select sehir, COUNT(ad) as'sehirde yasayanlar' from kisiler group by sehir order by COUNT(ad) desc

select meslek,COUNT(ad) as 'kisi sayýsý',SUM(maas) as 'toplam maas' from kisiler group by meslek order by COUNT(maas) desc

select meslek,AVG(maas) as 'ortalama maas' from kisiler group by meslek