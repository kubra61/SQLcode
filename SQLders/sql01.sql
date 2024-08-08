create table calisanlar(
    id char(5) primary key,
	isim varchar(50) unique,
	maas numeric NOT NULL,
	ise_baslama date
)

select * from calisanlar;

create table adresler(
    adres_id char(5),
	sokak varchar(20),
	cadde varchar(20),
	sehir varchar(20),
	
	foreign key (adres_id) references calisanlar (id)
)

select * from adresler;

insert into calisanlar values('10002','Mehmet Yılmaz',12000,'2018-04-14');
insert into calisanlar values(10008,null,5000,'2018-04-14');
--insert into calisanlar values('10002','Mehmet Yılmaz',12000,'2018-04-14'); --eror verir cunku isim field inde unigue kullanıldığı için

insert into calisanlar values('10004','Veli Han',5000,'2018-04-14');
insert into calisanlar values('10005','Mustafa Yılmaz',5000,'2018-04-14');

--insert into calisanlar --values('10002','Canan Yılmaz',null,'2018-04-14'); -- erer verir cunku maas field inde not null constraint i var

insert into calisanlar values('10003','Can',5000,'2018-04-14');
insert into calisanlar values('','osman',2000,'2018-04-14');

select * from calisanlar;


create table adresler(
    adres_id char(5),
	sokak varchar(20),
	cadde varchar(20),
	sehir varchar(20),
	
	foreign key (adres_id) references calisanlar (id)
)

select * from adresler;


insert into adresler values('10005','Mutlu Sok.','40.Cad.','istanbul');
insert into adresler values('10005','Can Sok.','50.Cad.','Ankara');
insert into adresler values('10002','Aga Sok.','30.Cad.','Gaziantep');
insert into adresler values(NULL,'Aga Sok','30.Cad.','Kahramanmaraş');
insert into adresler values(NULL,'Aga Sok','30.Cad.','Gaziantep');

create table calisanlar2(
    id varchar(15) primary key,
    isim varchar(30) unique,
	maas numeric check(maas>10000) not null,
	ise_baslama date
)

select * from calisanlar2;
select * from calisanlar;

insert into calisanlar2 values('10002','mehmet yılmaz',19000,'2018-04-14');

select isim,maas from calisanlar;

--DQL
--where keyword --> filtreleme

select isim,maas from calisanlar where maas>5000;
select * from calisanlar where isim='Veli Han';
select * from calisanlar where maas=5000;

drop table adresler; --drop komutu ve içindeki datayı tamamen siler
delete from calisanlar; --delete komutu verilen tablodaki tüm datayı siler ama tablo yapısı hala bulunur
drop table calisanlar;