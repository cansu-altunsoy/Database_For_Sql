-- bu bir yorum satiridir

/* 

Eger birden fazla yorum satiri kullanmak gerekir ise bu sekilde calismalisin

*/

/* 
Database'de islem yapmak, Java ile islem yapmaktan farklidir.
Java Run Time program oldugundan, calisma bittiginde hersey sifirlanir ve en bastaki duruma doner
AAANNNCCCAAAKKKK database'de yapilan her islem KALICI olacaktir.

Kismen geriye almak mumkun olsa da, her islemi geriye almak mumkun DEGILDIR...

BU ACIDAN database ile yapacagimiz her islemde dikkatli hareket etmek gereklidir. 
*/

-- Yeni bir schema olusturmak icin
CREATE SCHEMA MyWork;

/* 
   Database ve Query sayfasi farkli seylerdir,
   Database'i Local olusturduk, Ancak ister local, istersek remote database olsun, database'de yapilan islemler KALICIDIR
   
   Database'de islem yapabilmek icin olusturdugumuz Query dosyalari ise bizim calisma sayfalarimiz gibidir.
   Biz kaydetmeden kalici olarak kaydedilmez.
*/

/*
SQL ile sorgu yapmak Java kodlarini calistirmaktan farklidir,
Java'da bir class veya method calistirildiginda o class veya method calistirildiginda
o class veya method'daki tum kodlar calisir.

AANNCCAAKK  Database sorgularini calistirmak icin iki alternatif vardir,
1- Query sayfasindaki belirli satirlari calistirmak icin satirlari secip yukarida ki Execute (simsek) butonundan calistirma
(Eger secim olmaz ise tum sayfa calistirilir, bunu tavsiye etmiyoruz)

2- Uzerinde (I) olan execute simsek butonundan calistirabiliriz, en yukardan Cursor'un bulundugu satira kadar tum sorgulari calistirir


*/

-- Bir Query sayfasinin hangi Schema ile calisacagini belirlemek icin use komutu kullanilir
-- Query sayfasi her acildiginda bu satirin bir kere calistirilmasi gerekir

use MyWork;




















