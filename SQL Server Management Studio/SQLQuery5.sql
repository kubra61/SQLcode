create database dbb_uygulama
go
use dbb_uygulama
go
!--create table tbl_ders(
ders_ýd int IDENTITY(1,1) not null PRIMARY KEY,
dersKodu nvarchar(10) NOT NULL UNIQUE,
dersAd nvarchar(100) NOT NULL,
dersVeren nvarchar(100) NOT NULL
)
