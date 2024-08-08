CREATE TABLE employees 
(  
  employee_id numeric(9), 
  employee_first_name VARCHAR(20),
  employee_last_name VARCHAR(20)
);

INSERT INTO employees VALUES(14, 'Chris', 'Tae');
INSERT INTO employees VALUES(11, 'John', 'Walker');
INSERT INTO employees VALUES(12, 'Amy', 'Star');
INSERT INTO employees VALUES(13, 'Brad', 'Pitt');
INSERT INTO employees VALUES(15, 'Chris', 'Way');

--*********************************************
--Tek bir sütuna çoklu sütun nasıl konulur '||'

--employee_id değerlerini "id" adıyla,  employee_first_name ve employee_last_name
--değerlerini tek sütunda "full_name" adıyla çağırın.

select employee_id as id,employee_first_name || ' ' || employee_last_name as full_name
from employees;

SELECT employee_id || ' ' || employee_first_name || ' ' || employee_last_name AS full_name
FROM employees

CREATE TABLE MarketAlisverisi (
    AlisverisID INT PRIMARY KEY,
    Urun VARCHAR(255),
    Kategori VARCHAR(255),
    Fiyat DECIMAL(10, 2)
);

INSERT INTO MarketAlisverisi (AlisverisID, Urun, Kategori, Fiyat)
VALUES
    (1, 'Elma', 'Meyve', 2.50),
    (2, 'Domates', 'Sebze', 1.75),
    (3, 'Süt', 'Süt', 4.00),
    (4, 'Tavuk Göğsü', 'Et', 12.00),
    (5, 'Muz', 'Meyve', 3.00),
    (6, 'Salatalık', 'Sebze', 2.25),
    (7, 'Peynir', 'Süt', 6.50),
    (8, 'Dana Biftek', 'Et', 18.50);
	
-- her kategorideki urunlere ne kadar harcandığını bulun	
--*********************************************
--GROUP BY

select * from MarketAlisverisi;	

select kategori, sum(fiyat) as toplam_harcama
from MarketAlisverisi
group by kategori

-- her kategorideki urunlerin ortalama fiyatini,en düşük değerini,en yüksek fiyatını bulun

select kategori, round(avg(fiyat),2) as fiyat_ortalama,
                 min(fiyat) as endusuk_fiyat,
			     max(fiyat) as enyuksek_fiyat,
				 count(urun) as urun_sayisi
from MarketAlisverisi
group by kategori

CREATE TABLE workers 
(  
  id CHAR(9), 
  name VARCHAR(50), 
  state VARCHAR(50), 
  salary SMALLINT,
  company VARCHAR(20),
	number_of_employees numeric(5)
	
);

INSERT INTO workers VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM', 34500);
INSERT INTO workers VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE', 45500);
INSERT INTO workers VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM', 23700);
INSERT INTO workers VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE', 90000);
INSERT INTO workers VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT', 60000);
INSERT INTO workers VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE', 90000);
INSERT INTO workers VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM', 23700);

SELECT * FROM workers;

--Her bir  name değeri için toplam salary değerlerini bulun.

select name ,sum(salary) as toplam_maas
from workers
group by name;

--Her bir state değeri için çalışan sayısını bulup azalan düzende sıralayınız.

select state ,sum(number_of_employees) as toplam_calisan_sayisi 
from workers
group by state
order by (toplam_calisan_sayisi) DESC;

--Her bir company için 2000$ üzeri maaş alan çalışan sayısını bulun.

SELECT * FROM workers;

select company, count(name) as calisan_sayisi
from workers
where salary > 2000
group by company

--Her bir company için en düşük ve yüksek salary değerlerini bulun.

select company, min(salary) as en_düsük_maas,
                max(salary) as en_yüksek_maas
from workers
group by company;

--Toplam salary değeri 2500 üzeri olan her bir çalışan için salary toplamını bulun.

SELECT name,
	SUM(salary) AS total_salary
FROM workers
GROUP BY name
HAVING SUM(salary) > 2500;

--*********************************************
---------HAVING

--HAVING clause:group by komutundan sonra filtrelemek için 
--aggregate fonk ile birlikte kullanılır

--Toplam salary değeri 2500 üzeri olan her bir çalışan için salary toplamını bulun.
--gruplamadan önce mevcut kayıtları filtrelemek için ise WHERE kullanılır.

--WHERE den sonra aggregate function kullanılmaz.
-- SELECT name,
-- 	SUM(salary) AS total_salary
-- FROM workers
-- WHERE SUM(salary) > 2500;
-- GROUP BY name

--Birden fazla çalışanı olan, her bir state için çalışan toplamlarını bulun.

select state, count(number_of_employees)
from workers
group by state
having count (number_of_employees) >1;

--Her bir company için değeri 2000'den fazla olan minimum salary değerlerini bulun.

select company, min(salary) as min_salary
from workers
group by company
having min(salary) >2000;

SELECT * FROM workers;

--Her bir state için değeri 3000'den az olan maximum salary değerlerini bulun.

select state, max(salary) as max_salary
from workers
group by state
having max(salary) < 3000;

--Maaşı 3000'den fazla olan eyaleti, maasi 2000'den az çalışan adını tekrarlı data olmayacak sekilde bulun.

--*********************************************
---------UNION
--UNION:iki yada daha fazla farklı sorgu sonucunu birleştirerek görüntülemeyi sağlar
--         tekrarlı olanları göstermez  

-- UNION ALL:UNION ile aynı işlevi görür, tekrarlı olanları da gösterir

SELECT state AS state_name
FROM workers
WHERE salary >3000

UNION

SELECT name AS state_name
FROM workers
WHERE salary < 2000

--UNION ALL --UNION ile aynı işlevi görür, tekrarlı olanları da gösterir

SELECT state AS state_name
FROM workers
WHERE salary >3000

UNION ALL

SELECT name AS state_name
FROM workers
WHERE salary < 2000

SELECT * FROM workers

--NOT:UNION/UNION ALL ile sonuçlarını birleştirdiğimiz sorgular aynı sayıda sütunu göstermeli
--ve alt alta gelecek olan bu sütunlar aynı data tipini içermeli

CREATE TABLE developers(
id SERIAL PRIMARY KEY,
name varchar(50),
email varchar(50) UNIQUE,
salary real,
prog_lang varchar(20),
city varchar(50),
age int	
);

INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Abdullah Berk','abdullah@mail.com',4000,'Java','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mehmet Cenk','mehmet@mail.com',5000,'JavaScript','Istanbul',35);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayşenur Han ','aysenur@mail.com',5000,'Java','Izmir',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Kübra Han','kubra@mail.com',4000,'JavaScript','Istanbul',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Muhammed Demir','muhammed@mail.com',6000,'Java','Izmir',25);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Fevzi Kaya','fevzi@mail.com',6000,'Html','Istanbul',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Enes Can','enes@mail.com',5500,'Css','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Tansu Han','tansu@mail.com',5000,'Java','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Said Ran','said@mail.com',4500,'Html','Izmir',33);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mustafa Pak','mustafa@mail.com',4500,'Css','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Hakan Tek','hakan@mail.com',7000,'C++','Konya',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Deniz Çetin','deniz@mail.com',4000,'C#','Istanbul',30);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Betül Çetin','ummu@mail.com',4000,'C#','Bursa',29);

CREATE TABLE contact_info(
address_id int,
street varchar(30),
number int,	
city varchar(30),
FOREIGN KEY(address_id) REFERENCES developers(id)	
);

INSERT INTO contact_info VALUES(1,'Kaya Sok.',5,'Bursa');
INSERT INTO contact_info VALUES(2,'Kaya Sok.',3,'Ankara');
INSERT INTO contact_info VALUES(3,'Can Sok.',10,'Bursa');
INSERT INTO contact_info VALUES(4,'Gül Sok.',12,'Ankara');
INSERT INTO contact_info VALUES(5,'Can Sok.',4,'Afyon');
INSERT INTO contact_info VALUES(6,'Taş Sok.',6,'Bolu');
INSERT INTO contact_info VALUES(7,'Dev Sok.',6,'Sivas');
INSERT INTO contact_info VALUES(8,'Dev Sok.',8,'Van');

SELECT * FROM developers;
SELECT * FROM contact_info;

--Yaşı 25’den büyük olan developer isimlerini ve 
--yaşı 30'dan küçük developerların kullandığı prog. dillerini
--birlikte tekrarsız gösteren sorguyu yaziniz

select name as name_prg_lang
from developers
where age >25

union

select prog_lang
from developers
where age<30

--Java kullananların maaşını ve prog. dilini ve 
--JavaScript kullananların yaşını ve prog. dilini
--tekrarsız gösteren sorguyu yaziniz

SELECT salary as salary_age, prog_lang
FROM developers
WHERE prog_lang = 'Java'

UNION

SELECT age as salary_age, prog_lang
FROM developers
WHERE prog_lang = 'JavaScript'

--id si 8 olan developerın çalıştığı şehir ve maaşını
--iletişim adresindeki şehir ve kapı nosunu görüntüleyiniz.

SELECT city, salary
FROM developers
WHERE id = 8

UNION

SELECT city, number
FROM contact_info
WHERE address_id = 8

--INTERSECT:iki farklı sorgunun sonuçlarında ortak olanları tekrarsız gösterir

CREATE TABLE calisanlar3 (
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);

INSERT INTO calisanlar3 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar3 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar3 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar3 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar3 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

select * from calisanlar3;

--developers tablosundaki şehirler ve
--calisanlar3 tablosunda sehirlerin
--aynı olanlarını tekrarsız olarak listeleyiniz

--EXCEPT:bir sorgunun sonuçlarından diğer sorgunun sonuçları hariç olarak gösterir

SELECT city
FROM developers

EXCEPT

SELECT sehir
FROM calisanlar3