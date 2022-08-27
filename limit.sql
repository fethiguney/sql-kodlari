--LİMİT---
select * from kisiler

-- kisiler tablosundan ilk 5 veriyi listeleyiniz
select * from kisiler LIMIT 5

--ilk 2 veriden sonra 5 veriyi listeleyiniz
select * from kisiler LIMIT 5 OFFSET 2

--id degeri 5 den buyuk olan ilk iki veriyi listeleyiniz
select * from kisiler
where id>5 
limit 2

--  MAAŞ'ı en yüksek 3 kişinin bilgilerini listeleyiniz
select * from kisiler
order by maas DESC
limit 3

-- En yüksek maaşı alan 
--4. 5.  6. kişilerin bilgilerini listeleyiniz
select * from kisiler
ORDER by maas desc
limit 3 OFFSET 3






