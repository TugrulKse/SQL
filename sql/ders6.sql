-- update=> Tablodaki verileri guncellemek icin kullaniriz

-- update tablo ismi set kolon ismi = yeni deger 
set sql_safe_updates=0;
-- id lerin hepsini 10 artiralim
update proje1.personel set id=id+10;
-- id si 11 olanin Bolumunu tesis yapalim yasini 20 yapalim
update proje1.personel set bolum='Tesis', yas=20 where id=11;


UPDATE proje1.personel SET maas = maas + 2000 WHERE bolum = 'Personel';



UPDATE proje1.personel SET bolum = 'CEO' WHERE id = 6;


select @maxMaas:=max(maas) as maxMaas from proje1.personel;

select * from proje1.personel where maas = @maxMaas;




select  @ortalamayas:= avg(yas) from proje1.personel;

select @dusukm:= min(maas) from proje1.personel;

select * from proje1.personel where yas> @ortalamayas and maas =@ dusukm;


UPDATE proje1.personel SET maas = maas - 500 WHERE bolum IN ('Bakim', 'Personel');

-- alter kullanimi

-- kolon ekleme 
-- adres kolonu ekleyelim 
alter table proje1.personel add adres varchar(150) default 'Almanya';


alter table proje1.personel add cinsiyet varchar(50) default 'delikanli';



alter table proje1.personel rename to proje1.persons;



UPDATE proje1.personel SET cinsiyet = 'erkek' WHERE id <> 12;
UPDATE proje1.personel SET cinsiyet = 'kadın' WHERE id = 12;



ALTER TABLE proje1.personel ALTER COLUMN adres SET DEFAULT 'Türkiye';


 alter table proje1.personel modify adres  varchar(200) default 'Turkiye';




