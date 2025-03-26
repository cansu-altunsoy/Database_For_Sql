use MyWork ;


/*
================================= SUBQUERY =================================
    Sorgu icinde calisan sorguya SUBQUERY (ALT SORGU) denir.
============================================================================
*/
CREATE TABLE calisanlar
(
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Honda');
INSERT INTO calisanlar VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'Toyota');
INSERT INTO calisanlar VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Honda');
INSERT INTO calisanlar VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Ford');
INSERT INTO calisanlar VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Hyundai');
INSERT INTO calisanlar VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Ford');
INSERT INTO calisanlar VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Honda');

CREATE TABLE sirketler
(
sirket_id int,
sirket varchar(20),
calisanlar_sayisi int
);
INSERT INTO sirketler VALUES(100, 'Honda', 12000);
INSERT INTO sirketler VALUES(101, 'Ford', 18000);
INSERT INTO sirketler VALUES(102, 'Hyundai', 10000);
INSERT INTO sirketler VALUES(103, 'Toyota', 21000);

SELECT * FROM calisanlar;
SELECT * FROM sirketler;

-- 
SELECT isim FROM calisanlar
WHERE sirket = 'Honda';

-- calisan sayisi 15000 den fazla olan sirket ismlerini listeleyiniz

SELECT sirket FROM sirketler
WHERE calisanlar_sayisi > 15000;

-- 
SELECT isim FROM calisanlar
WHERE sirket IN ('Ford','Toyota');

--

SELECT isim FROM calisanlar
WHERE sirket IN (SELECT sirket FROM sirketler
				 WHERE sirket_id = 100);

-- 

/*
----------------------------------------------------------------
  2) Veli Yilmaz isimli personelin calistigi sirketlerin sirket
  ismini ve personel sayilarini listeleyiniz.
----------------------------------------------------------------
*/



SELECT sirket, calisanlar_sayisi
FROM  sirketler
WHERE sirket IN (SELECT sirket 
                 FROM calisanlar
                 WHERE isim = 'Veli Yılmaz'
			    );


/*
 ----------------------------------------------------------------
  3) Ankara da calisani olan sirketlerin ID isim ve calisan sayilarini
  listeleyiniz.
----------------------------------------------------------------
*/


SELECT sirket_id,sirket,calisanlar_sayisi
FROM sirketler
WHERE sirket IN (SELECT sirket FROM calisanlar
				 WHERE sehir = 'Ankara');


/*
----------------------------------------------------------------
  4) ID'si 101 den yuksek olan sirketlerde calisanlarin maas sehir
  sirket ismini listeleyiniz.
----------------------------------------------------------------
*/

SELECT maas, sehir, sirket FROM calisanlar
WHERE sirket IN (SELECT sirket FROM sirketler
                  WHERE sirket_id > 101);


/*
----------------------------------------------------------------
  5) ID'si 100 olan sirketde calisanlarin maas ortalamasini listeleyiniz.
----------------------------------------------------------------
*/

SELECT AVG(maas) AS ortalama_maas
FROM calisanlar
WHERE sirket IN ( SELECT sirket FROM sirketler
				WHERE sirket_id = 100               

               );

/*
----------------------------------------------------------------
  5) ID'si 100 veya 102 olan sirketde calisanlarin maas ortalamasini listeleyiniz.
----------------------------------------------------------------
*/













