create table proje1.musteriler(
id int not null auto_increment,
ssn varchar(9) not null unique,
isim varchar(45),
adres varchar(255),
kayitTarihi datetime default now(),
yas int,
primary key(id)
);


insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456780", "Ali", "Mersin",16);
insert into proje1.musteriler(ssn, isim, adres,kayitTarihi,yas) values ("123456725", "Fuad", "Istanbul","2022-02-02 08:15:00",18);

select * from proje1.musteriler where kayitTarihi <"2023-01-01 00:00:00";
select * from proje1.musteriler where isim= "Ahmet" and yas > 12;

select isim from proje1.musteriler where yas>16 and yas <28;

select * from proje1.musteriler where id>=2 and id <=4 or yas>20;

select * from proje1.musteriler where id between 2 and 5;

select * from proje1.musteriler where adres in("istanbul","ankara");

select * from proje1.musteriler where isim like "_u%n%";

select * from proje1.musteriler where ssn like "12%";

select * from proje1.musteriler where ssn like "%82";

select * from proje1.musteriler where isim like "%n%";

select * from proje1.cityler where isim like "com%";

select * from proje1.musteriler where isim like "___n%";

select * from proje1.musteriler where adres like "%k%";






