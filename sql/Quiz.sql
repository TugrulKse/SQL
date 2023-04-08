create table proje1.order (
id int not null primary key,
email varchar(50),
adSoyad varchar(50),
adres varchar(100),
tel varchar(15),
tarih date,
urun varchar(50),
fiyat double,
adet int,
toplamfiyat double
);

INSERT INTO proje1.order (id, email, adSoyad, adres, tel, tarih, urun, fiyat, adet, toplamfiyat) VALUES 
(1, 'ornekmail_1@gmail.com', 'Ali Can', 'Istanbul', '5551234567', '2022-01-01', 'Kalem', 2.5, 10, 25),
(2, 'ornekmail_2@gmail.com', 'Sena Kaya', 'Ankara', '5552345678', '2022-01-02', 'Defter', 3.0, 5, 15),
(3, 'ornekmail_2@gmail.com', 'Mehmet Ozturk', 'Izmir', '5553456789', '2022-01-03', 'Silgi', 1.0, 20, 20),
(4, 'ornekmail_4@gmail.com', 'Zafer Demir', 'Bursa', '5554567890', '2022-01-04', 'Kalemtraş', 0.5, 30, 15),
(5, 'ornekmail_5@gmail.com', 'Ahmet Yildiz', 'Antalya', '5555678901', '2022-01-05', 'Not Defteri', 5.0, 2, 10),
(6, 'ornekmail_6@gmail.com', 'Huz Tuna', 'Eskişehir', '5556789012', '2022-01-06', 'Pilot Kalem', 3.5, 10, 35),
(7, 'ornekmail_7@gmail.com', 'Sena Gunes', 'Kocaeli', '5557890123', '2022-01-07', 'Kitap', 8.0, 1, 8),
(8, 'ornekmail_8@gmail.com', 'Andrea Arslan', 'Adana', '5558901234', '2022-01-08', 'Hesap Makinesi', 12.0, 2, 24),
(9, 'ornekmail_9@gmail.com', 'Hans Yaman', 'Trabzon', '5559012345', '2022-01-09', 'Cetvel', 1.5, 10, 15),
(10, 'ornekmail_10@gmail.com', 'Deniz Ozturk', 'Konya', '5550123456', '2022-01-10', 'Kagit', 0.25, 100, 25);

-- Toplamfiyati 25 euro dan fazla olan siparislerin sayisini gosteriniz:
SELECT COUNT(*) FROM proje1.order WHERE toplamfiyat > 25;

-- Toplam kazanilan parayi yaziniz:
SELECT SUM(toplamfiyat) FROM proje1.order;

-- En yuksek ve en dusuk siparisin tum bilgilerini gertiriniz:
SELECT * FROM proje1.order WHERE toplamfiyat = (SELECT MAX(toplamfiyat) FROM proje1.order);
SELECT * FROM proje1.order WHERE toplamfiyat = (SELECT MIN(toplamfiyat) FROM proje1.order);

-- Ortalama kazanilan parayi virgulden sonra iki basamakli getiriniz:
SELECT FORMAT(AVG(toplamfiyat), 2) as ortalama_kazanc FROM proje1.order;

-- Urun isimlerini buyuk harfli olarak gosteriniz:
SELECT UPPER(urun) FROM proje1.order;

-- Urun isimlerinin sadece ilk harfini buyuk harfli olarak gosteriniz
SELECT UPPER(LEFT(urun, 1)) || SUBSTR(urun, 2) AS UrunIsmi FROM proje1.order;

-- Toplam fiyati en yuksek olan 3 siparisi yazdiriniz
SELECT * FROM proje1.order ORDER BY toplamfiyat DESC LIMIT 3;

-- Urunlerin icinde a harfi olanlari urun ismine gore siralayiniz
SELECT * FROM proje1.order WHERE urun LIKE '%a%'ORDER BY urun;

-- Siparis miktari 15 Euro dan fazla olanlari silelim
DELETE FROM proje1.order WHERE toplamfiyat > 15;

-- Delete Truncate Drop arasindaki fark nedir?
/*
Delete, verileri tablodan silmek için kullanılır. 
Truncate, tablodaki tüm verileri siler ve tablo yapısını korur. 
Drop ise tabloyu tamamen siler ve verileri de kaybeder.
*/





