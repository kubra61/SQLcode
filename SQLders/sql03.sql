CREATE TABLE workers(

	worker_id SMALLINT,
    worker_name VARCHAR(50),
    worker_salary NUMERIC,
	CONSTRAINT worker_id_pk PRIMARY KEY (worker_id)
);

INSERT INTO workers VALUES(101, 'Tom Hanks', 12000);
INSERT INTO workers VALUES(102, 'Brad Pitt', 2000);
INSERT INTO workers VALUES(103, 'Aisha Can', 7000);
INSERT INTO workers VALUES(104, 'Angie Ocean', 12000);

select * from workers;

drop table workers;
--Ortalamadan daha dusuk olan maaslari ortalama maaşa eşitleyin.

update workers
set worker_salary = (select avg(worker_salary) from workers)
where worker_salary <(select avg(worker_salary) from workers)

--Ortalamadan daha dusuk olan maaslari 1000 artırın

update workers
set worker_salary = worker_salary + 1000
where worker_salary < (select avg(worker_salary) from workers)

--"Angie Ocean"in maaşını en yüksek maaşın yüzde 20 daha az olacak sekilde yukseltiniz.

update workers
set worker_salary =(select max(worker_salary)* 0.8 from workers)
where worker_name='Angie Ocean'

--Tom Hanks'in maaşını en düşük maaştan yüzde 30 daha fazla olacak sekilde guncelleyin

UPDATE workers
SET worker_salary = (SELECT MIN(worker_salary) FROM workers) * 1.3
WHERE worker_name = 'Tom Hanks';

select * from workers;

--IS NULL Condition

CREATE TABLE people
(
ssn INT,
name VARCHAR(50),
address VARCHAR(80)     
);

INSERT INTO people VALUES(123456789, 'Mark Star', 'Florida');
INSERT INTO people VALUES(234567890, 'Angie Way', 'Virginia');
INSERT INTO people VALUES(345678901, 'Maryy Tien', 'New Jersey');
INSERT INTO people(ssn, address) VALUES(456789012, 'Michigan');
INSERT INTO people(ssn, address) VALUES(567890123, 'California');
INSERT INTO people(ssn, name) VALUES(567890123, 'California');

select * from people;

--SSN degeri 234567890 olan kayıtın SSN degerini 456767890 olarak update ediniz.

update people
set ssn=456767890
where ssn=234567890;

--Tüm null olan name değerleri "Isim daha sonra eklenecek" olarak değiştirin

update people
set name='Isim daha sonra eklenecek'
where name isnull;

--Tüm null olan name değerleri "Baska" olarak değiştirin

update people
set address='Baska'
where address is null;

--delete--
--tablodan kayıt nasıl silinir?

DELETE FROM people; --tum verileri siler

-- name sutunlari null olan verileri silin

delete
from people
where name is null;

select * from people;

-- address sutunlari null olan verileri silin

delete
from people
where address isnull;

--tüm veri tabloyu silmek için drop kullanılır

drop table people;

--SSN'si 123456789'dan büyük ve 345678901'den küçük olan tüm kayıtları silin

--1.yol
delete
from people
where ssn between 123456789 and 345678901

--2.yol
delete
from people
where ssn > 123456789 and ssn < 345678901

--IS NOT NULL condition

--Ad değeri null olmayan tüm kayıtları silin

delete
from people
where name is not null;

select * from people;

--TRUNCATE command

truncate table people;

--DELETE ile TRUNCATE ve DROP sorgusu arasındaki fark nedir?

--DELETE (DML) Veri Manipülasyon Dili (insert, update, delete, select)
--TRUNCATE (DDL) Veri Tanımlama Dili (create, truncate, drop, alter)

--DELETE komutu veritabanındaki tablodan bir veya daha fazla mevcut kaydı siler.
--DROP Komutu tablonun tamamını veritabanından çıkarır.
--TRUNCATE Komutu mevcut tablodaki tüm satırları siler ve satırı sütun adlarıyla bırakır.
--delete koşul var truncate te yok 

-- Interview Question: Maaşı en düşük ve en yüksek olan kayıtlar nasıl seçilir?

--1.yol
select *
from workers
where worker_salary =
(select min(worker_salary) 
from workers)--8000
or
worker_salary=(select max(worker_salary)
from workers)--12000

--2.yol
select *
from workers
where worker_salary in ((select min(worker_salary)
from workers) , (select max(worker_salary) from workers))

--Interview Question: 2. en yuksek maasi bulunuz

(select max(worker_salary)
from workers
where worker_salary<(select max(worker_salary) from workers))

select *
from workers
where worker_salary = (select max(worker_salary)
                    from workers
                    where worker_salary<(select max(worker_salary) from workers))
					
select * from workers;	

---ORDER BY---
--default olarak küçüten büyüğe sıralar
--ORDER BY ASC(acsending)-->küçükten büyüğe sıralar
--ORDER BY DESC(descending)-->>büyükten küçüğe sıralar


select *
from workers
order by worker_salary

select *
from workers
order by worker_salary

select *
from workers
order by worker_salary asc

select *
from workers
order by worker_name desc


--en dusuk 3. maas bulunuz

select *
from workers
order by worker_name desc
offset 2

CREATE TABLE employees 
(  
  id CHAR(9), 
  name VARCHAR(50), 
  state VARCHAR(50), 
  salary SMALLINT,
  company VARCHAR(20)
);

INSERT INTO employees VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM');
INSERT INTO employees VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
INSERT INTO employees VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO employees VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO employees VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
INSERT INTO employees VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
INSERT INTO employees VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');

select * from employes
select * from companies



