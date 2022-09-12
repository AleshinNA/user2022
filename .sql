--------------------------------------------------------
--  File created - �����������-��������-12-2022   
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
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 11 64�� �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','iPhone 13 128Gb ����: ������ ����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 13 128�� �������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone11 64�� ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Xiaomi Redmi 10 ����� 64��','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','���������� ������ Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','��������� LED Samsung UE32N4000AUXCE ������','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','����������� � ������������� Samsung RB30A30N0WW/WT �����','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','�������������� Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','1');
REM INSERTING into USER2022.PRODUCT_VIEW
SET DEFINE OFF;
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('3','IPhone 13 128�� �������','68500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('4','�������������� Acer ES Series 3 AES003','23000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('5','���������� ������ Bosch WLP20265OE','40000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('1','iPhone 13 128Gb ����: ������ ����','60000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('6','IPhone 11 64�� �����','43500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('7','��������� LED Samsung UE32N4000AUXCE ������','19500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('8','Xiaomi Redmi 10 ����� 64��','13000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('9','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','5000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('10','����������� � ������������� Samsung RB30A30N0WW/WT �����','39500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('11','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','21800');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('12','IPhone11 64�� ������','43000');
