--------------------------------------------------------
--  File created - ïîíåäåëüíèê-ñåíòÿáðÿ-12-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View COUNT_PRODUCT_STORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "USER2022"."COUNT_PRODUCT_STORES" ("NAME_STORES", "NAME_PRODUCT", "COUNT") AS 
  select  s.name_stores, p.name_product, count(et.id_edinica_tovara) count
  from  stores  s  
  join  edinica_tovara  et  on  s.id_stores = et.id_stores
  join  product  p  on p.id_product_ver = et.id_product_ver
 where  p.active_from <= sysdate 
   and  p.active_to > sysdate
   and  et.id_status_tovara = 3
   group by s.name_stores, p.name_product
   order by s.name_stores, p.name_product
;
--------------------------------------------------------
--  DDL for View PRODUCT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "USER2022"."PRODUCT_VIEW" ("ID_PRODUCT_VER", "NAME_PRODUCT", "PRICE") AS 
  select  id_product_ver, name_product, price
  from  product
 where  active_from <= sysdate 
   and active_to > sysdate
;
REM INSERTING into USER2022.COUNT_PRODUCT_STORES
SET DEFINE OFF;
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 11 64Ãá Áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 13 128Ãá Ðîçîâûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone11 64Ãá ×åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Xiaomi Redmi 10 Ñèíèé 64Ãá','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','1');
REM INSERTING into USER2022.PRODUCT_VIEW
SET DEFINE OFF;
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('3','IPhone 13 128Ãá Ðîçîâûé','68500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('4','Ýëåêòðîñàìîêàò Acer ES Series 3 AES003','23000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('5','Ñòèðàëüíàÿ ìàøèíà Bosch WLP20265OE','40000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('1','iPhone 13 128Gb Öâåò: òåìíàÿ íî÷ü','60000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('6','IPhone 11 64Ãá Áåëûé','43500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('7','Òåëåâèçîð LED Samsung UE32N4000AUXCE ÷åðíûé','19500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('8','Xiaomi Redmi 10 Ñèíèé 64Ãá','13000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('9','Äðåëü-øóðóïîâåðò Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','5000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('10','Õîëîäèëüíèê ñ ìîðîçèëüíèêîì Samsung RB30A30N0WW/WT áåëûé','39500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('11','11.6" Íîóòáóê ASUS Laptop 11 E210MA-GJ151T ÷åðíûé','21800');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('12','IPhone11 64Ãá ×åðíûé','43000');
