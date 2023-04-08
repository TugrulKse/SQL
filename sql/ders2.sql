create table proje1.person (
id int not null,
ad varchar(16),
soyad varchar(16),
yas int,
primary key(id)
);

insert into proje1.person values(1,"Ali","korkmaz",17);
insert into proje1.person values(2,"Huz","sins",18);
select * from proje1.person; 

create table proje1.student(
id int not null,
ad varchar(45)not null,
not_ort double,
kayit_tarihi date,
primary key(id)
);

insert into proje1.student values(1, "Ali",85.85, curdate());
insert into proje1.student values(2, "Kemal",65.35, curdate());

select * from proje1.student; 

create table proje1.siniflar(
id int not null,
sinif_adi varchar(4)not null unique,
kayit_zamani datetime,
primary key(id)
);

insert into proje1.siniflar values(1, "11/A",now());
insert into proje1.siniflar values(2, "11/C","2023-03-08 20:10:15");
select * from proje1.siniflar;

create table proje1.kisiler(
id int not null auto_increment,
kisi_adi varchar(40)not null unique,
primary key(id)
);


insert into proje1.kisiler (adi) values("Ali");
insert into proje1.kisiler (adi) values("Sena");
insert into proje1.kisiler (adi) values("Huz");


create table proje1.person2(
id int not null,
adi varchar(45),
yas int,
check (yas>=18),
primary key(id)
);


insert into proje1.person2 values(1, "Asya",20);
insert into proje1.person2 values(2, "Can",18);



create table proje1.person3(
id int not null,
adi varchar(45),
yas int,
check (yas>=18&&yas<25),
primary key(id)
);


insert into proje1.person3 values(1, "Asya",28);
insert into proje1.person3 values(2, "Can",18);



create table proje1.orders(
id int not null,
price double,
orderDate datetime default now(),
primary key(id)
);

insert into proje1.orders(id,price) values (1,35.55);


create table proje1.orders2(
id int not null,
price double default 0,
orderDate datetime default now(), 
primary key(id)
);
insert into proje1.orders2(id) values(1);


create table proje1.product(
id int not null auto_increment,
ad varchar(45),
price int, check (price>0),
adet double default 0,
num int not null unique,
orderDate datetime default now(),
primary key(id)
);
 

insert into proje1.product(ad,price,adet,num) values ("Kalem",12.24,3,0245);




