-- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı
*/

select * from calisanlar2

--calisanlar2 tablosundaki en yüksek maas degerini getirin
select max(maas) from calisanlar2

--calisanlar2 tablosundaki maaslarin toplamini bulun
select sum(maas) from calisanlar2


--calisanlar2 tablosundaki maaslarin ortalamisini bulun
select avg(maas) FROM calisanlar2
select round(avg(maas)) from calisanlar2
--Kusurati yok ediyor
select round(avg(maas),2) from calisanlar2
--kusurat sonrasi virgulden sonra 2 haneyi getiriyor

--calisanlar2 tablosundan en düşük maasi getirin
select min(maas) from calisanlar2

--calisanlar2 tablosunda kac kisinin maas aldigini bulun
select count(maas) from calisanlar2

-- Her markanin ismini, calisan sayisini ve o markaya ait 
--calisanlarin toplam maaşini listeleyiniz

select marka_isim, calisan_sayisi,
(select sum(maas) from calisanlar2
where marka_isim=isyeri) 
As toplam_maas from markalar

-- ALIAS (AS) --> Tabloda geçici isim vermek istersek koşuldan 
--sonra AS sutun_isim olarak kullanılır.


-- Her markanin ismini, calisan sayisini ve o markaya 
--ait calisanlarin maksimum ve minumum maaşini 
--listeleyen bir Sorgu yaziniz.

select marka_isim, calisan_sayisi, 
(select max(maas) from calisanlar2 
 where marka_isim=isyeri) As max_maas,
(select min(maas) from calisanlar2
where marka_isim=isyeri) As min_maas from markalar


--Her markanin id’sini, ismini ve toplam 
--kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.
select marka_id, marka_isim, 
(select count(sehir) from calisanlar2 
where marka_isim=isyeri) 
as sehir_sayisi from markalar

--Interview Question: 
--En yüksek ikinci maas değerini çağırın

select max(maas) as enyuksek_ikinci_maas from calisanlar2
where maas<(select max(maas) from calisanlar2)





















