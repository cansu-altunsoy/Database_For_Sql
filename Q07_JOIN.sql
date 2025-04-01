use MyWork ;


/*============================== JOIN ISLEMLERI ===============================
 Union,Union All Operatorleri farkli tablolardaki sutunlari 
 birlestirmek icin kullanilir.
    Join islemleri ise farkli Tablolari birlestirmek icin kullanilir. Diger 
    bir ifade ile farkli tablolardaki secilen sutunlar ile yeni bir tablo 
    olusturmak icin kullanilabilir.
    
    JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Cunku
    Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
    icin JOIN islemleri kullanilabilir.
    
    
mySQL'de 3 Cesit Join islemi kullanilabilmektedir.    
    1) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
    2) LEFT JOIN:  Ilk tabloda (Sol) olan sonuclari gosterir
    3) RIGHT JOIN:  Ikinci tabloda (Sag) olan tum sonuclari gosterir 
 FULL JOIN=(left join + union + right join) Tablodaki tum sonuclari gosterir
*/
CREATE TABLE sirket 
(
    sirket_id INT , 
    sirket_isim VARCHAR(20)
);
    INSERT INTO sirket VALUES(100, 'Toyota');
    INSERT INTO sirket VALUES(101, 'Honda');
    INSERT INTO sirket VALUES(102, 'Ford');
    INSERT INTO sirket VALUES(103, 'Hyundai');
    
CREATE TABLE siparisler    
(
    siparis_id INT,
    sirket_id INT, 
    siparis_tarihi DATE
    
);
    INSERT INTO siparisler VALUES(11, 101, '2020-04-17');
    INSERT INTO siparisler VALUES(22, 102, '2020-04-18');
    INSERT INTO siparisler VALUES(33, 103, '2020-04-19');
    INSERT INTO siparisler VALUES(44, 104, '2020-04-20');
    INSERT INTO siparisler VALUES(55, 105, '2020-04-21');   
    
    
SELECT * FROM sirket;
SELECT * FROM siparisler;



/*=============================== INNER JOIN  ==================================
    
    Iki tablonun kesisim kumesi ile yeni bir tablo olusturmak icin kullanilir.
    
    1) Select'ten sonra tabloda gormek istediginiz sutunlari yazarken
       table_name.field_name seklinde yazin.
    2) From'dan sonra table_name yazarken 
       1. table_name + INNER JOIN + 2. table_name yazmaliyiz.
       
       Eger tablo isimlerini sorguda kisaltmak isterseniz
        1. table_name + INNER JOIN + 2. table_name yazmaliyiz.
       
    3) Join'i hangi kurala gore yapacaginizi belirtmelisiniz. 
       Bunun icin ON kuralimiz yazilmali.
    
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    INNER JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
================================================================================*/

-- Iki Tabloda sirket_id'si ayni olanlarin sirket_ismi, siparis_id ve 
-- siparis_tarihleri listeleyen bir sorgu yaziniz.

SELECT sirket.sirket_isim, siparisler.siparis_id, siparisler.siparis_tarihi
FROM siparisler INNER JOIN sirket
ON siparisler.sirket_id = sirket.sirket_id;



/*=============================== LEFT JOIN  ==================================
    
    LEFT JOIN, 1. tablodan (sol tablo) SELECT ile ifade edilen sutunlara ait tum
    satirlari getirir. 
    Ancak, diger tablodan sadece ON ile belirtilen kosula uyan satirlari getirir. 
    
    1) Left Join'de ilk tablodaki tum record'lar gosterilir.
    2) Ilk tablodaki datalara 2.tablodan gelen ek datalar 
       varsa bu ek datalar ortak datalar icin gosterilir, 
       ancak ortak olmayan datalar icin o kisimlar bos kalir.
    3) Ilk yazdiginiz Tablonun tamamini aldigi icin hangi tabloyu
       istedigimize karar verip once onu yazmaliyiz. 
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
==============================================================================*/
/* -----------------------------------------------------------------------------
  ORNEK2: sirket tablosundaki tum sirketleri ve bu sirketlere ait olan 
  siparis_id ve siparis_tarihleri listeleyen bir sorgu yaziniz.
------------------------------------------------------------------------------*/

SELECT sir.sirket_isim, sip.siparis_id, sip.siparis_tarihi
FROM  sirket sir LEFT JOIN siparisler


/*=============================== RIGHT JOIN  ==================================
    
    RIGHT JOIN, 2. tablodan (sag tablo) SELECT ile ifade edilen sutunlara ait tum
    satirlari getirir. 
    Ancak, diger tablodan sadece ON ile belirtilen kosula uyan satirlari getirir. 
    
    1) Right Join'de ikinci tablodaki tum record'lar gosterilir.
    2) Ikinci tablodaki datalara 1.tablodan gelen ek datalar 
       varsa bu ek datalar ortak datalar icin gosterilir, 
       ancak ortak olmayan datalar icin o kisimlar bos kalir.
    
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 RIGHT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
==============================================================================*/ 

-- siparisler tablosundaki tum sirketleri ve bu sirketlere ait olan 
-- siparis_id ve siparis_tarihleri listeleyen bir sorgu yaziniz.




















