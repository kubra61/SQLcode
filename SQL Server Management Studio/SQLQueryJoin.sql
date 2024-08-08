use kitaplik

select * from kitap
select * from kitaplık2

select kitapadi from kitaplık2

select kitapAd,KitapTur,kitapRengi from kitap k1,kitaplık2 k2,kitap3 k3
where k1.kitapAd=k2.kitapadi and k2.kitapRenk=k3.kitapRengi

select kitapAd,KitapTur,kitapBaskı from kitap k1,kitaplık2 k2,kitap3 k3
where k1.kitapAd=k2.kitapadi and k2.kitapRenk=k3.kitapRengi

select kitapAd,KitapTur,kitapRenk from kitap k1 inner join kitaplık2 k2
on k1.kitapAd=kitapadi

select KitapTur, SUM(kitapFiyat) as 'toplam fiyat' from kitap k1, kitaplık2 k2
where k1.kitapAd=k2.kitapadi
group by KitapTur
order by SUM(kitapFiyat) desc

select KitapTur,SUM(kitapFiyat) as 'toplam fiyat' from kitap k1 inner join kitaplık2 k2
on k1.kitapAd=k2.kitapadi
group by KitapTur
order by KitapTur

select kitapAd,KitapTur,kitapRengi from kitap k1,kitaplık2 k2,kitap3 k3
where k1.kitapAd=k2.kitapadi and k2.kitapRenk=k3.kitapRengi

select kitapAd,KitapTur,kitapRengi from kitap k1 inner join kitaplık2 k2
on k1.kitapAd=k2.kitapadi
inner join kitap3 k3
on k2.kitapRenk=k3.kitapRengi


