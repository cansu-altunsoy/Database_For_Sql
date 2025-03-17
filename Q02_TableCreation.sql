
use MyWork;

/*
===============================================
		TABLO OLUSTURMA (CRUD - Create)
===============================================
*/


/*
"CREATE TABLE" bir veritabanında yeni bir tablo oluşturmak için kullanılan 
bir SQL (Structured Query Language) ifadesidir. 

Bu komut, tablonun yapısını tanımlar.
yani tabloda bulunacak sütunların isimlerini, veri tiplerini ve diğer özelliklerini 
(örneğin, Primary Key, Unique, Not Null  vb.) belirtir. 

"CREATE TABLE" komutunu kullanırken, her bir sütun için uygun veri tipini ve 
boyutunu belirlemek ve gerektiğinde sütunlara kısıtlamalar eklemek önemlidir. 

Bu işlem, veri bütünlüğünü korumak ve veritabanı işlemlerinin doğru şekilde 
çalışmasını sağlamak için kritik öneme sahiptir.
*/


/*
*************** SYNTAX ***************
CREATE TABLE tablo_adi 
(
    sütun1_Adi veri_tipi1 ,
    sütun2_Adi veri_tipi2 ,
    ...
    sütunN_Adi veri_tipiN ,
);
*/

/*  
   ========================  SORU-1 ========================
   Icerisinde kitap id, kitap adi, yazar adi, yayin yili ve kategori columnlari
   olan bir kitaplar tablosu create ediniz. 
   =========================================================
 */

CREATE TABLE kitaplar (

kitap_id  int, 
yazar_adi varchar(100),
yayin_yili int,
kategori varchar(100)

);

/*
Select bir tablodan data cagirmak icin kullanilir
bizim de en cok kullanacagimiz komuttur
* hersey anlamına gelir, tum datalari secer

 */

SELECT * FROM mywork.kitaplar;


/*
    SQL komutlari ortak kabul olarak buyuk harf ile yazilir.
    SQL ifadeleri yine ortak kabul olarak alt alta yazilir. 
    SQL icerisinde snake_case yazimi uygulanir. 
 */
 
 /*  
    ========================  SORU-2 ========================
    Icerisinde personel id, adi, soyadi, dogum tarihi, pozisyon ve maas columnlari
    olan bir personel tablosu create ediniz. 
    =========================================================
 */
 
 
 CREATE TABLE personel (
	personel_id INT,
	adi VARCHAR(40),
    soyadi VARCHAR(40),
    dogum_tarihi DATE,
    pozisyon VARCHAR(40),
    maas INT
 );
 

SELECT * FROM personel;

-- Tablo uzerindeki column isimlerini filtreleyerekte SELECT sorgusu ile calistirabilirim

SELECT soyadi, personel_id FROM personel;


