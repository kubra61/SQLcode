CREATE TABLE companies 
(  
  company_id CHAR(9), 
  company VARCHAR(20),
  number_of_employees SMALLINT
);

INSERT INTO companies VALUES(100, 'IBM', 12000);
INSERT INTO companies VALUES(101, 'GOOGLE', 18000);
INSERT INTO companies VALUES(102, 'MICROSOFT', 10000);
INSERT INTO companies VALUES(103, 'APPLE', 21000);

select * from employees;
select * from companies;

--Herbir company için company_id, company,  en yüksek ve en düşük salary değerlerini bulun.

SELECT company_id, company, number_of_employees, 

(SELECT MIN (salary)
			FROM employees
			WHERE companies.company = employees.company)
			AS min_salary,

(SELECT MAX (salary)
			FROM employees
			WHERE companies.company = employees.company)
			AS max_salary

FROM companies

--************* WILDCARDS in SQL(SQL de Joker Karakterler) *********
--Joker karakterleri, bir dize içinde belirli bir desene uyan metinleri bulmak için kullanılır. 

--LIKE Condition: Wildcard ile kullanılır.

CREATE TABLE EpostaListesi (
    EpostaID INT PRIMARY KEY,
    EpostaAdresi VARCHAR(255)
);

INSERT INTO EpostaListesi (EpostaID, EpostaAdresi)
VALUES
    (1, 'alice@gmail.com'),
    (2, 'bob@example.com'),
    (3, 'charlie@hotmail.com'),
    (4, 'dave@gmail.com'),
    (5, 'eve@yahoo.com'),
    (6, 'frank@gmail.com'),
    (7, 'grace@example.com');

select * from EpostaListesi;

select *
from EpostaListesi
where EpostaAdresi like '%@gmail.com' --%(yüzde) karakteri herhangi bir diziyi temsil eder
	
--************* WILDCARDS in SQL(SQL de Joker Karakterler) *********
--Joker karakterleri, bir dize içinde belirli bir desene uyan metinleri bulmak için kullanılır. 

--En yaygın joker karakterleri % (yüzde) ve _ (alt çizgi) dir.
-- % (yüzde) karakteri, herhangi bir dizeyi temsil eder.
-- _ (alt çizgi) karakteri, herhangi bir tek karakteri temsil eder. 

--LIKE Condition: Wildcard ile kullanılır.

-- 'E' ile başlayan employee 'name' değerlerini çağırın.--E%
--LIKE(gibi)

select * from employees;
select * from companies;

select *
from employees
where name LIKE 'E%';

--'e' ile biten employee 'name' değerlerini çağırın.

select *
from employees
where name LIKE '%e';

--name field inde herhangi bir sirada 'e' olan name degerlerini cagırınız

select *
from employees
where name LIKE '%e%';

--'B' ile başlayıp 't' ile biten employee 'name' değerlerini çağırın.

select *
from employees
where name LIKE 'B%t';

--Herhangi bir yerinde 'e' ve 'r' bulunan employee 'name' değerlerini çağırın.

select *
from employees
where name LIKE '%e%r%' or name LIKE '%r%e%';

--İkinci karakteri 'e' ve dördüncü karakteri 'n' olan "state" değerlerini çağırın.

select *
from employees
where state LIKE '_e_n%';

--Sondan ucuncu karakteri 'i' olan "state" değerlerini çağırın.

select *
from employees
where state LIKE '%i__';

--İkinci karakteri 'e' olan ve en az 6 karakteri bulunan "state" değerlerini çağırın.

select *
from employees
where state LIKE '_e____%';

--İkinci karakterinden sonra herhangi bir yerinde 'i' bulunan "state" değerlerini çağırın.

select *
from employees
where state LIKE '__%i%';

CREATE TABLE words
( 
  word_id CHAR(10) UNIQUE,
  word VARCHAR(50) NOT NULL,
  number_of_letters SMALLINT
);

INSERT INTO words VALUES (1001, 'hot', 3);
INSERT INTO words VALUES (1002, 'hat', 3);
INSERT INTO words VALUES (1003, 'hit', 3);
INSERT INTO words VALUES (1004, 'hbt', 3);
INSERT INTO words VALUES (1008, 'hct', 3);
INSERT INTO words VALUES (1005, 'adem', 4);
INSERT INTO words VALUES (1006, 'selena', 6);
INSERT INTO words VALUES (1007, 'yusuf', 5);

select * from words;

--NOT LIKE condition

--Herhangi bir yerinde 'h' bulunmayan "word" değerlerini çağırın.

select *
from words
where word NOT LIKE '%h%';

--'t' veya 'f' ile bitmeyen "word" değerlerini çağırın.

select *
from words
where word NOT LIKE '%t%' AND word NOT LIKE '%f%';

--Herhangi bir karakterle başlayıp 'a' veya 'e' ile devam etmeyen "word" değerlerini çağırın.

select *
from words
where word not like'_a%'and word NOT LIKE '_e%'; 

--Regular Expression Condition

--İlk karakteri 'h', ikinci karakteri 'o', 'a' veya 'i', son karakteri 't'  olan "word" değerlerini çağırın.

-- 1.yol wild card kullanarak
select *
from words
where word like'ho%t' or word like'ha%t' or  word like'hi%t';

--2.yol regex kullanarak

select *
from words
where word ~'h[oai](.*)t';

--İlk karakteri 'h', son karakteri 't' ve ikinci karakteri 'a'dan 'e'ye herhangi bir karakter olan "word" değerlerini çağırın.

select *
from words
where word ~'h[a-e](.*)t'; --[a-e]=a dan e ye kadar olanı getirir

--İlk karakteri 's', 'a' veya 'y' olan "word" değerlerini çağırın.

select *
from words
where word ~'^[say](.*)';

CREATE TABLE workers
(  
  id CHAR(9), 
  name VARCHAR(50), 
  state VARCHAR(50), 
  salary SMALLINT,
  company VARCHAR(20)
);

INSERT INTO workers VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM');
INSERT INTO workers VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
INSERT INTO workers VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO workers VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO workers VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
INSERT INTO workers VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
INSERT INTO workers VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');

select * from workers;

--"E" başlayıp ve 'y' biten "name" değerleri dışındaki "name" değerlerini çağırın.

SELECT *
FROM workers
WHERE name ~'^[^E](.*)[^y]$'; 


--'J', 'B' yada 'E' ile başlayan VE 'r' yada 't' ile biten "name" değerlerini çağırın.

SELECT *
FROM workers
WHERE name ~'^[JBE](.*)[rt]$';


-- Son karakteri 'r' yada 't' olan VEYA ilk karakteri 'J','B', yada 'E' 
-- olan "name" değerlerini çağırın.


SELECT *
FROM workers
WHERE name ~'^[JBE]' OR name ~ '[rt]$';


--Son karakteri 'r' yada 't' olmayan VE ilk karakteri 'J','B', yada 'E' 
--olmayan "name" değerlerini çağırın.

--1.yol
SELECT *
FROM workers
WHERE name !~'^[JBE]' OR name !~ '[rt]$';

--2.yol
SELECT *
FROM workers
WHERE name ~'^[^JBE]' OR name ~ '[^rt]$';


--Herhangi bir yerinde 'a' yada 'r' bulunan "name" değerlerini çağırın.


SELECT *
FROM workers
WHERE name ~'[ar]';

--İlk harfi 'A' dan 'F' ye bir karakter olan ve ikinci harfi herhangi bir karakter 
--olup üçüncü harfi 'a' olan "name" değerlerini çağırın. 

SELECT *
FROM workers
WHERE name ~'^[A-F].a(.*)';

--Üçüncü karakteri 'o' yada 'x' olan "state" değerlerini çağırın.

SELECT *
FROM workers
WHERE state ~'..[ox](.*)';

-- Üçüncü karakteri 'o' yada 'x' olmayan "state" değerlerini çağırın.

--1.yol
SELECT *
FROM workers
WHERE state !~'..[ox](.*)';

--2.yol
SELECT *
FROM workers
WHERE state ~'^..[^ox](.*)'

SELECT * FROM workers