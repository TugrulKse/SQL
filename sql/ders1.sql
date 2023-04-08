create table proje2.siniflar(
id int not null,
sinifAdi varchar(45),
kont int,
primary key(id)
);

create table proje2.urunler(
urunId int not null,
urunAdi varchar(50),
urunFiyati double,
primary key(urunId)
);

insert into proje2.urunler values(1,"bilgisiyar",1200);
insert into proje2.urunler values(2,"elma",30);
insert into proje1.urunler values(3, "masa", 100.50);
insert into proje1.urunler(urunId,urunAdi) values(4, "armut");
select * from `proje2.urunler`;