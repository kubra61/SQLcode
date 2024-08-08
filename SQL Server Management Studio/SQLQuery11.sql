create database okulum

create table ogrenci(

ogrno int not null primary key,
ogradi varchar(15),
ogrsoyadi varchar(20),
ogradres varchar(50),
ogrsinif varchar(2),
ogrilce varchar(20) default 'seyhan'
)
