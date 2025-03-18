USE MyWork;


/*
===============================================
		  TABLOYA VERI GIRISI - INSERT
===============================================
*/

/*
-------------------- NOT -------------------------
   Degerleri girerken dikkat edilmesi gerekenler;
1- Tabloyu olustururken hangi data type belirlediysek o
   datatype cinsinden veri girisi yapmaliyiz
2- Metin ifadeleri 'tek tirnak' icinde yaziyoruz.
3- DATE data type'da 'tek tirnak' icinde yazilir.
4- MySQL'in default tarih formati YYYY-MM-DD seklindedir.
5- Eger kayit olustururken, tablodaki tum sutunlara deger girilecekse 
   sutun isimlerini tek tek yazmaya gerek olmadan degerleri girebiliriz
   ancak tum sutunlara degil belirli sutunlara giris yapacaksak
   hangi sutunlara giris yapacagimizi belirtmemiz gerekir.
--------------------------------------------------
*/

/*
*************** SYNTAX ***************
INSERT INTO table_name (columns)
	VALUES (
	std_id ,           
	std_name ,     
	std_age 				  
	);
*/

-- kitaplar tablosundaki herseyi görüntüleyin

SELECT * FROM kitaplar;

-- kitaplar tablosuna tum sutunlara deger girerek bir kayit ekleyelim
INSERT INTO kitaplar()
 VALUES (1, 'TOLSTOY', 1869, 'TARİH') ;

ALTER TABLE kitaplar
ADD COLUMN kitap_adi VARCHAR(255) AFTER kitap_id;

INSERT INTO kitaplar()
 VALUES (1, 'SAVAS VE BARIS','TOLSTOY', 1869, 'TARİH') ;
 
 SELECT * FROM kitaplar;


-- SQL'de bir komutu calistirmak icin yeniden yazmak SART DEGILDIR
-- daha once yazdigimiz bir komutu secip calistirabiliriz

/*
	Query sayfasindaki komutlar, database'den bagimsizdir
    Bu komutlar HER CALISTIGINDA kendisine verilen gorevi yeniden yapar
    Query calisirken daha once Database'e kaydedilip kaydedilmemesine bakmaz
    ornegin 46.satirdaki kayit ekleme komutunu 2 kere tekrar calistiralim
*/

INSERT INTO kitaplar()
 VALUES (1, 'SAVAS VE BARIS','TOLSTOY', 1869, 'TARİH') ;
 
 -- Eger tablo ile ilgili kitap_id UNIQUE olsun belirli sartlar koymak isterseniz 
 -- tablo olusturulurken bu sınırlamalari belirtmeliyiz
 
 -- kitaplar tablosuna id'si 11 ve kitap_ismi 'Araba Sevdasi' olan bir kitap ekleyin
 INSERT INTO kitaplar (kitap_id, kitap_adi)
 VALUES (11 ,'Araba Sevdasi');
 
 
 SELECT * FROM kitaplar ;
 
 /*  
========================  SORU-2 ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */
 
INSERT INTO kitaplar ()
VALUES  (1,	'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi' ),
		(2,	'Suç ve Ceza',	'Fyodor Dostoyevski',	1866, 	'Psikolojik'),
		(3,	'Anna Karenina',	'Lev Tolstoy',	1877,	'Aşk'),
		(4,	'1984',	'George Orwell',	1949,	'Politik'),
		(5,	'Büyük Umutlar',	'Charles Dickens',	1861,	'Dram'),
		(6,	'Don Kişot',	'Miguel de Cervantes',	1605,	'Macera'),
		(7,	'Gurur ve Önyargı',	'Jane Austen',	1813,	'Dram'),
		(8,	'Monte Kristo Kontu',	'Alexandre Dumas',	1844,	'Macera'),
		(9,	'Faust',	'Johann Wolfgang von Goethe',	1808,	'Felsefi'),
		(10,	'Ulysses',	'James Joyce',	1922,	'Modernist');


/*  
========================  SORU-3 ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */
-- ONCE tablonun kendisini gormek gerekir , ekleme yapabilmek icin
SELECT * FROM personel ;

INSERT INTO  personel()
VALUES (1, 'CANSU', 'ALTNSOY', '1999-09-09', 'SDET', 55000),
       (2, 'BURAK', 'ALTNSOY', '1999-11-27', 'TEKNIKER' ,60000);

/*  
    ========================  EXTRA ========================
    Icerisinde urun id, musteri isim ve urun isim columnlari
    olan bir musteriler tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE musteriler(
 urun_id INT,
 musteri_isim VARCHAR(100),
 urun_isi VARCHAR(100)
 
 );
 
 -- MUSTERILER tablosunu goruntuleyelim
 SELECT * FROM musteriler;
 
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler  VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');


-- musteriler tablosundaki musteri_isim lerini listeleyin
SELECT musteri_isim FROM musteriler;


 /*  
    ========================  EXTRA ========================
    Icerisinde ulke_adi, ulke_adi_uzun_yazilis, ISO_Kodu, 
    ulke_kodu, baskent_turkce ve baskent_ingilizce columnlari 
    olan bir ulkeler tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE ulkeler (
  ulke_adi VARCHAR(100),
  ulke_adi_uzun_yazilis VARCHAR(100),
  ISO_kodu CHAR (3),
  ulke_kodu  CHAR (2),
  baskent_turkce VARCHAR(100),
  baskent_ingilizce VARCHAR(100)
 );
 
 SELECT * FROM ulkeler ;
 
 INSERT INTO ulkeler VALUES('Almanya', 'Almanya Federal Cumhuriyeti', 'DEU', 'DE', 'Berlin', 'Germany');
 INSERT INTO ulkeler values('Belçika', 'Belçika Krallığı', 'BEL', 'BE', 'Brüksel', 'Brussels');
 
-- ulke adi ve ulke kodu sutunlarini listeleyi

SELECT ulke_adi, ulke_kodu FROM ulkeler ;

/*  
    ========================  EXTRA ========================
    Icerisinde ulke_adi, baskent_turkce ve baskent_nufusu columnlari olan 
    bir baskentler tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE baskentler(
 ulke_adi VARCHAR(70),
 baskent_turkce VARCHAR(70),
 baskent_nufusu INT
 );
 
 SELECT * FROM baskentler ;

INSERT INTO baskentler VALUES ('Almanya', 'Berlin', '5320000');









